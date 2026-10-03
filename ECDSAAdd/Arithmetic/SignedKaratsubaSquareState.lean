import ECDSAAdd.Arithmetic.SignedSquareCandidate
import ECDSAAdd.Arithmetic.SignedSquareLeafSpec
import ECDSAAdd.Arithmetic.KaratsubaSquareState

namespace ECDSAAdd.Arithmetic

theorem signedKaratsuba_squareLow_spec (L : KaratsubaSquareLayout) (h : L.Valid)
    (lo hi _av dv cv zv sv : Nat) :
    Triple (KaratsubaValues L lo hi 0 dv cv zv sv) L.signedSquareLow
      (KaratsubaValues L lo hi (lo^2) dv cv zv sv) := by
  have hn : (L.cin::L.low++L.a++L.pad++L.mask++L.carry).Nodup := by
    apply List.nodup_iff_count.mpr; intro w
    have hh := List.nodup_iff_count.mp h.nodup w
    simp only [KaratsubaSquareLayout.wires,List.count_cons,List.count_append] at hh ⊢
    omega
  have hd : L.a.length=2*L.low.length := by simp [h.a_length,h.low_length]
  intro s m hs
  have hr := signedTriangularSquare_spec L.cin L.low L.a L.pad L.mask L.carry
    hn (by simp [h.low_length]) hd (by simp [h.pad_length])
    (by simp [h.low_length,h.mask_length]) (by simp [h.a_length,h.carry_length]) lo
    s m ⟨⟨⟨⟨⟨hs.low,hs.a⟩,hs.pad⟩,hs.mask⟩,hs.carry⟩,hs.cin⟩
  have hf := signedTriangularSquare_frame L.cin L.low L.a L.pad L.mask L.carry
    hn (by simp [h.low_length]) hd (by simp [h.pad_length])
    (by simp [h.low_length,h.mask_length]) (by simp [h.a_length,h.carry_length])
    s m hs.a hs.pad hs.mask hs.carry hs.cin
  exact ⟨hr.1,KaratsubaValues.update_a L h _ _ _ _ _ _ _ _ _ _ hs
    hr.2.1.1.1.1.2 hf⟩

theorem signedKaratsuba_clearLow_spec (L : KaratsubaSquareLayout) (h : L.Valid)
    (lo hi _av dv cv zv sv : Nat) :
    Triple (KaratsubaValues L lo hi (lo^2) dv cv zv sv) L.signedClearLow
      (KaratsubaValues L lo hi 0 dv cv zv sv) := by
  have hn : (L.cin::L.low++L.a++L.pad++L.mask++L.carry).Nodup := by
    apply List.nodup_iff_count.mpr; intro w
    have hh := List.nodup_iff_count.mp h.nodup w
    simp only [KaratsubaSquareLayout.wires,List.count_cons,List.count_append] at hh ⊢
    omega
  have hd : L.a.length=2*L.low.length := by simp [h.a_length,h.low_length]
  intro s m hs
  have hr := signedTriangularSquareClear_spec L.cin L.low L.a L.pad L.mask L.carry
    hn (by simp [h.low_length]) hd (by simp [h.pad_length])
    (by simp [h.low_length,h.mask_length]) (by simp [h.a_length,h.carry_length]) lo
    s m ⟨⟨⟨⟨⟨hs.low,hs.a⟩,hs.pad⟩,hs.mask⟩,hs.carry⟩,hs.cin⟩
  have hf := signedTriangularSquareClear_frame L.cin L.low L.a L.pad L.mask L.carry
    hn (by simp [h.low_length]) hd (by simp [h.pad_length])
    (by simp [h.low_length,h.mask_length]) (by simp [h.a_length,h.carry_length])
    s m (by simpa [hs.low] using hs.a) hs.pad hs.mask hs.carry hs.cin
  exact ⟨hr.1,KaratsubaValues.update_a L h _ _ _ _ _ _ _ _ _ _ hs
    hr.2.1.1.1.1.2 hf⟩

theorem signedKaratsuba_squareHigh_spec (L : KaratsubaSquareLayout) (h : L.Valid)
    (lo hi av _dv cv zv sv : Nat) :
    Triple (KaratsubaValues L lo hi av 0 cv zv sv) L.signedSquareHigh
      (KaratsubaValues L lo hi av (hi^2) cv zv sv) := by
  have hn : (L.cin::L.high++L.d++L.pad++L.mask++L.carry).Nodup := by
    apply List.nodup_iff_count.mpr; intro w
    have hh := List.nodup_iff_count.mp h.nodup w
    simp only [KaratsubaSquareLayout.wires,List.count_cons,List.count_append] at hh ⊢
    omega
  have hd : L.d.length=2*L.high.length := by simp [h.d_length,h.high_length]
  intro s m hs
  have hr := signedTriangularSquare_spec L.cin L.high L.d L.pad L.mask L.carry
    hn (by simp [h.high_length]) hd (by simp [h.pad_length])
    (by simp [h.high_length,h.mask_length]) (by simp [h.d_length,h.carry_length]) hi
    s m ⟨⟨⟨⟨⟨hs.high,hs.d⟩,hs.pad⟩,hs.mask⟩,hs.carry⟩,hs.cin⟩
  have hf := signedTriangularSquare_frame L.cin L.high L.d L.pad L.mask L.carry
    hn (by simp [h.high_length]) hd (by simp [h.pad_length])
    (by simp [h.high_length,h.mask_length]) (by simp [h.d_length,h.carry_length])
    s m hs.d hs.pad hs.mask hs.carry hs.cin
  exact ⟨hr.1,KaratsubaValues.update_d L h _ _ _ _ _ _ _ _ _ _ hs
    hr.2.1.1.1.1.2 hf⟩

theorem signedKaratsuba_clearHigh_spec (L : KaratsubaSquareLayout) (h : L.Valid)
    (lo hi av _dv cv zv sv : Nat) :
    Triple (KaratsubaValues L lo hi av (hi^2) cv zv sv) L.signedClearHigh
      (KaratsubaValues L lo hi av 0 cv zv sv) := by
  have hn : (L.cin::L.high++L.d++L.pad++L.mask++L.carry).Nodup := by
    apply List.nodup_iff_count.mpr; intro w
    have hh := List.nodup_iff_count.mp h.nodup w
    simp only [KaratsubaSquareLayout.wires,List.count_cons,List.count_append] at hh ⊢
    omega
  have hd : L.d.length=2*L.high.length := by simp [h.d_length,h.high_length]
  intro s m hs
  have hr := signedTriangularSquareClear_spec L.cin L.high L.d L.pad L.mask L.carry
    hn (by simp [h.high_length]) hd (by simp [h.pad_length])
    (by simp [h.high_length,h.mask_length]) (by simp [h.d_length,h.carry_length]) hi
    s m ⟨⟨⟨⟨⟨hs.high,hs.d⟩,hs.pad⟩,hs.mask⟩,hs.carry⟩,hs.cin⟩
  have hf := signedTriangularSquareClear_frame L.cin L.high L.d L.pad L.mask L.carry
    hn (by simp [h.high_length]) hd (by simp [h.pad_length])
    (by simp [h.high_length,h.mask_length]) (by simp [h.d_length,h.carry_length])
    s m (by simpa [hs.high] using hs.d) hs.pad hs.mask hs.carry hs.cin
  exact ⟨hr.1,KaratsubaValues.update_d L h _ _ _ _ _ _ _ _ _ _ hs
    hr.2.1.1.1.1.2 hf⟩

theorem signedKaratsuba_squareSum_spec (L : KaratsubaSquareLayout) (h : L.Valid)
    (lo hi av dv _cv zv sv : Nat) :
    Triple (KaratsubaValues L lo hi av dv 0 zv sv) L.signedSquareSum
      (KaratsubaValues L lo hi av dv (sv^2) zv sv) := by
  have hn : (L.cin::L.sum++L.c++L.pad++L.mask++L.carry).Nodup := by
    apply List.nodup_iff_count.mpr; intro w
    have hh := List.nodup_iff_count.mp h.nodup w
    simp only [KaratsubaSquareLayout.wires,List.count_cons,List.count_append] at hh ⊢
    omega
  have hd : L.c.length=2*L.sum.length := by simp [h.c_length,h.sum_length]
  intro s m hs
  have hr := signedTriangularSquare_spec L.cin L.sum L.c L.pad L.mask L.carry
    hn (by simp [h.sum_length]) hd (by simp [h.pad_length])
    (by simp [h.sum_length,h.mask_length]) (by simp [h.c_length,h.carry_length]) sv
    s m ⟨⟨⟨⟨⟨hs.sum,hs.c⟩,hs.pad⟩,hs.mask⟩,hs.carry⟩,hs.cin⟩
  have hf := signedTriangularSquare_frame L.cin L.sum L.c L.pad L.mask L.carry
    hn (by simp [h.sum_length]) hd (by simp [h.pad_length])
    (by simp [h.sum_length,h.mask_length]) (by simp [h.c_length,h.carry_length])
    s m hs.c hs.pad hs.mask hs.carry hs.cin
  exact ⟨hr.1,KaratsubaValues.update_c L h _ _ _ _ _ _ _ _ _ _ hs
    hr.2.1.1.1.1.2 hf⟩

theorem signedKaratsuba_clearSquareSum_spec (L : KaratsubaSquareLayout) (h : L.Valid)
    (lo hi av dv _cv zv sv : Nat) :
    Triple (KaratsubaValues L lo hi av dv (sv^2) zv sv) L.signedClearSquareSum
      (KaratsubaValues L lo hi av dv 0 zv sv) := by
  have hn : (L.cin::L.sum++L.c++L.pad++L.mask++L.carry).Nodup := by
    apply List.nodup_iff_count.mpr; intro w
    have hh := List.nodup_iff_count.mp h.nodup w
    simp only [KaratsubaSquareLayout.wires,List.count_cons,List.count_append] at hh ⊢
    omega
  have hd : L.c.length=2*L.sum.length := by simp [h.c_length,h.sum_length]
  intro s m hs
  have hr := signedTriangularSquareClear_spec L.cin L.sum L.c L.pad L.mask L.carry
    hn (by simp [h.sum_length]) hd (by simp [h.pad_length])
    (by simp [h.sum_length,h.mask_length]) (by simp [h.c_length,h.carry_length]) sv
    s m ⟨⟨⟨⟨⟨hs.sum,hs.c⟩,hs.pad⟩,hs.mask⟩,hs.carry⟩,hs.cin⟩
  have hf := signedTriangularSquareClear_frame L.cin L.sum L.c L.pad L.mask L.carry
    hn (by simp [h.sum_length]) hd (by simp [h.pad_length])
    (by simp [h.sum_length,h.mask_length]) (by simp [h.c_length,h.carry_length])
    s m (by simpa [hs.sum] using hs.c) hs.pad hs.mask hs.carry hs.cin
  exact ⟨hr.1,KaratsubaValues.update_c L h _ _ _ _ _ _ _ _ _ _ hs
    hr.2.1.1.1.1.2 hf⟩

private theorem signed_recombination_bounds (lo hi : Nat)
    (hl : lo<2^128) (hh : hi<2^128) :
    lo^2<2^384 ∧ hi^2<2^384 ∧ (lo+hi)^2<2^384 ∧
    lo^2+2^256*hi^2<2^512 ∧ (lo+2^128*hi)^2<2^512 ∧
    lo^2+2^256*hi^2+2^128*(lo+hi)^2=
      (lo+2^128*hi)^2+2^128*lo^2+2^128*hi^2 := by
  have al := square_bound lo 128 hl
  have ah := square_bound hi 128 hh
  have ac := square_sum128_square_bound lo hi hl hh
  have xb : lo+2^128*hi<2^256 := by omega
  have ax := square_bound _ 256 xb
  refine ⟨by omega,by omega,by omega,by omega,by simpa only [Nat.reduceMul] using ax,?_⟩
  ring

theorem signedKaratsubaSquare_spec (L : KaratsubaSquareLayout) (h : L.Valid)
    (lo hi : Nat) :
    Triple (KaratsubaValues L lo hi 0 0 0 0 0) (signedKaratsubaSquare L)
      (KaratsubaValues L lo hi (lo^2) (hi^2) 0 ((lo+2^128*hi)^2) 0) := by
  intro s m hs
  have hl : lo<2^128 := by simpa [h.low_length,hs.low] using regValue_lt L.low s.basis
  have hh : hi<2^128 := by simpa [h.high_length,hs.high] using regValue_lt L.high s.basis
  obtain ⟨ba,bd,bc,bi,br,be⟩ := signed_recombination_bounds lo hi hl hh
  have a := signedKaratsuba_squareLow_spec L h lo hi 0 0 0 0 0
  have d := signedKaratsuba_squareHigh_spec L h lo hi (lo^2) 0 0 0 0
  have s1 := karatsuba_prepareSum_spec L h lo hi (lo^2) (hi^2) 0 0
  have c1 := signedKaratsuba_squareSum_spec L h lo hi (lo^2) (hi^2) 0 0 (lo+hi)
  have s2 := karatsuba_clearSum_spec L h lo hi (lo^2) (hi^2) ((lo+hi)^2) 0
  have cp := (karatsuba_copySquares_spec L h lo hi (lo^2) (hi^2) ((lo+hi)^2) 0).1
  have comb := karatsuba_combine_spec L h lo hi (lo^2) (hi^2) ((lo+hi)^2) 0
    (lo^2+2^256*hi^2) ((lo+2^128*hi)^2) ba bd bi br be
  have s3 := karatsuba_prepareSum_spec L h lo hi (lo^2) (hi^2) ((lo+hi)^2)
    ((lo+2^128*hi)^2)
  have c2 := signedKaratsuba_clearSquareSum_spec L h lo hi (lo^2) (hi^2) 0
    ((lo+2^128*hi)^2) (lo+hi)
  have s4 := karatsuba_clearSum_spec L h lo hi (lo^2) (hi^2) 0 ((lo+2^128*hi)^2)
  have chain := ((((((((a.seq d).seq s1).seq c1).seq s2).seq cp).seq comb).seq s3).seq c2).seq s4
  simpa [signedKaratsubaSquare,KaratsubaSquareLayout.signedSquareLow,
    KaratsubaSquareLayout.signedSquareHigh,KaratsubaSquareLayout.signedSquareSum,
    KaratsubaSquareLayout.signedClearSquareSum] using chain s m hs

theorem signedKaratsubaSquareClear_spec (L : KaratsubaSquareLayout) (h : L.Valid)
    (lo hi : Nat) :
    Triple (KaratsubaValues L lo hi (lo^2) (hi^2) 0 ((lo+2^128*hi)^2) 0)
      (signedKaratsubaSquareClear L) (KaratsubaValues L lo hi 0 0 0 0 0) := by
  intro s m hs
  have hl : lo<2^128 := by simpa [h.low_length,hs.low] using regValue_lt L.low s.basis
  have hh : hi<2^128 := by simpa [h.high_length,hs.high] using regValue_lt L.high s.basis
  obtain ⟨ba,bd,bc,bi,br,be⟩ := signed_recombination_bounds lo hi hl hh
  have s1 := karatsuba_prepareSum_spec L h lo hi (lo^2) (hi^2) 0 ((lo+2^128*hi)^2)
  have c1 := signedKaratsuba_squareSum_spec L h lo hi (lo^2) (hi^2) 0
    ((lo+2^128*hi)^2) (lo+hi)
  have s2 := karatsuba_clearSum_spec L h lo hi (lo^2) (hi^2) ((lo+hi)^2)
    ((lo+2^128*hi)^2)
  have comb := karatsuba_uncombine_spec L h lo hi (lo^2) (hi^2) ((lo+hi)^2) 0
    (lo^2+2^256*hi^2) ((lo+2^128*hi)^2) bc bi br be
  have cp := (karatsuba_copySquares_spec L h lo hi (lo^2) (hi^2) ((lo+hi)^2) 0).2
  have s3 := karatsuba_prepareSum_spec L h lo hi (lo^2) (hi^2) ((lo+hi)^2) 0
  have c2 := signedKaratsuba_clearSquareSum_spec L h lo hi (lo^2) (hi^2) 0 0 (lo+hi)
  have s4 := karatsuba_clearSum_spec L h lo hi (lo^2) (hi^2) 0 0
  have d := signedKaratsuba_clearHigh_spec L h lo hi (lo^2) 0 0 0 0
  have a := signedKaratsuba_clearLow_spec L h lo hi 0 0 0 0 0
  have chain := ((((((((s1.seq c1).seq s2).seq comb).seq cp).seq s3).seq c2).seq s4).seq d).seq a
  simpa [signedKaratsubaSquareClear,KaratsubaSquareLayout.signedSquareSum,
    KaratsubaSquareLayout.signedClearSquareSum,KaratsubaSquareLayout.signedClearHigh,
    KaratsubaSquareLayout.signedClearLow] using chain s m hs

end ECDSAAdd.Arithmetic
