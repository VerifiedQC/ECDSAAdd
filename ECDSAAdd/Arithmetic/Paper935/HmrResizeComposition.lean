import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank

namespace ECDSAAdd.Arithmetic.Paper935

/-- Use a separately checked reservation instead of reducing a full arena
inside every generated row-layout proof. -/
theorem planRowResizeLog_of_growth (A B : Arena) (r : WindowRow) (width : Nat)
    (fresh : List Wire) (distinct : (r.sign::r.payload).Nodup)
    (owned : (r.sign::r.payload).toFinset⊆A.live)
    (grows : r.payload.length≤width) (length : fresh.length=width-r.payload.length)
    (freshDistinct : fresh.Nodup) (reserved : A.reserve fresh.toFinset=some B) :
    planRowResizeLog A r width fresh=some (B,⟨r.payload++fresh,r.sign⟩,growRow r.sign fresh) := by
  simp only [planRowResizeLog,if_pos (And.intro distinct owned),if_pos grows,
    if_pos (And.intro length freshDistinct),reserved,Bind.bind,Option.bind,pure]

/-- Compose an ordered row transaction while retaining the compiler's
incoming and outgoing bank-ownership checks. -/
theorem planWindowRowsLog_of_cons (A B C : Arena) (row out : WindowRow) (width : Nat)
    (fresh : List Wire) (requests : List (WindowRow × Nat)) (logs : List (List Wire))
    (outs : List WindowRow) (p q : Program)
    (before : rowsOwned A (row::requests.map Prod.fst))
    (head : planRowResizeLog A row width fresh=some (B,out,p))
    (tail : planWindowRowsLog B requests logs=some (C,outs,q))
    (after : rowsOwned C (out::outs)) :
    planWindowRowsLog A ((row,width)::requests) (fresh::logs)=some (C,out::outs,p++q) := by
  simp only [planWindowRowsLog,if_pos before,head,Bind.bind,Option.bind,tail,if_pos after,pure]

/-- Split shrinking at its checked layout and exact retired live set. The
execution theorem still requires the arithmetic fit that cleans these sites. -/
theorem planRowResizeLog_of_shrink (A : Arena) (r : WindowRow) (width : Nat)
    (distinct : (r.sign::r.payload).Nodup) (owned : (r.sign::r.payload).toFinset⊆A.live)
    (shrinks : width<r.payload.length) :
    planRowResizeLog A r width []=some (A.retireSet (r.payload.drop width).toFinset,
      ⟨r.payload.take width,r.sign⟩,shrinkRow r.sign (r.payload.drop width)) := by
  simp only [planRowResizeLog,if_pos (And.intro distinct owned),
    if_neg (Nat.not_le.mpr shrinks),if_true,planRowResize]

end ECDSAAdd.Arithmetic.Paper935
