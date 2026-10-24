import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step0ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786)),Finset.filter_subset _ _⟩
def s2Step0ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<782) ∨ (783≤q ∧ q<786)),Finset.filter_subset _ _⟩
def s2Step0ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 782],769⟩
def s2Step0ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step0ExitGExtra : List Wire := [255, 782]
theorem s2Step0ExitG_distinct : (s2Step0ExitGRow.sign::s2Step0ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step0ExitG_owned : (s2Step0ExitGRow.sign::s2Step0ExitGRow.payload).toFinset⊆s2Step0ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step0ExitGBefore (fun q => (0≤q ∧ q<786)) rfl
  decide +kernel
theorem s2Step0ExitG_retired : s2Step0ExitGBefore.retireSet s2Step0ExitGExtra.toFinset=s2Step0ExitGAfter := by
  unfold Arena.retireSet s2Step0ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step0ExitGBefore,s2Step0ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step0ExitG_checked : planRowResizeLog s2Step0ExitGBefore s2Step0ExitGRow 255 []=
    some (s2Step0ExitGAfter,s2Step0ExitGOut,shrinkRow 769 s2Step0ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step0ExitGBefore s2Step0ExitGRow 255 s2Step0ExitG_distinct s2Step0ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step0ExitGRow.payload.take 255) s2Step0ExitGRow.sign=s2Step0ExitGOut := by decide +kernel
  have hi : s2Step0ExitGRow.payload.drop 255=s2Step0ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step0ExitG_retired] at result
  exact result
def s2Step0ExitFBefore : Arena := s2Step0ExitGAfter
def s2Step0ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<782) ∨ (784≤q ∧ q<786)),Finset.filter_subset _ _⟩
def s2Step0ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩
def s2Step0ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step0ExitFExtra : List Wire := [783]
theorem s2Step0ExitF_distinct : (s2Step0ExitFRow.sign::s2Step0ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step0ExitF_owned : (s2Step0ExitFRow.sign::s2Step0ExitFRow.payload).toFinset⊆s2Step0ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step0ExitFBefore (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<782) ∨ (783≤q ∧ q<786)) rfl
  decide +kernel
theorem s2Step0ExitF_retired : s2Step0ExitFBefore.retireSet s2Step0ExitFExtra.toFinset=s2Step0ExitFAfter := by
  unfold Arena.retireSet s2Step0ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step0ExitFBefore,s2Step0ExitGAfter,s2Step0ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step0ExitF_checked : planRowResizeLog s2Step0ExitFBefore s2Step0ExitFRow 256 []=
    some (s2Step0ExitFAfter,s2Step0ExitFOut,shrinkRow 768 s2Step0ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step0ExitFBefore s2Step0ExitFRow 256 s2Step0ExitF_distinct s2Step0ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step0ExitFRow.payload.take 256) s2Step0ExitFRow.sign=s2Step0ExitFOut := by decide +kernel
  have hi : s2Step0ExitFRow.payload.drop 256=s2Step0ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step0ExitF_retired] at result
  exact result
def s2Step0ExitFvBefore : Arena := s2Step0ExitFAfter
def s2Step0ExitFvAfter : Arena := s2Step0ExitFAfter
def s2Step0ExitFvRow : WindowRow := ⟨[778, 785],770⟩
def s2Step0ExitFvOut : WindowRow := ⟨[778, 785],770⟩
def s2Step0ExitFvExtra : List Wire := []
theorem s2Step0ExitFv_distinct : (s2Step0ExitFvRow.sign::s2Step0ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step0ExitFv_owned : (s2Step0ExitFvRow.sign::s2Step0ExitFvRow.payload).toFinset⊆s2Step0ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step0ExitFvBefore (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<782) ∨ (784≤q ∧ q<786)) rfl
  decide +kernel
theorem s2Step0ExitFv_reserved : s2Step0ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step0ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step0ExitFv_checked : planRowResizeLog s2Step0ExitFvBefore s2Step0ExitFvRow 2 []=
    some (s2Step0ExitFvAfter,s2Step0ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step0ExitFvBefore s2Step0ExitFvAfter s2Step0ExitFvRow 2 []
    s2Step0ExitFv_distinct s2Step0ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step0ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step0ExitFvRow.payload++[]) s2Step0ExitFvRow.sign=s2Step0ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step0ExitGvBefore : Arena := s2Step0ExitFAfter
def s2Step0ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<782) ∨ (785≤q ∧ q<786)),Finset.filter_subset _ _⟩
def s2Step0ExitGvRow : WindowRow := ⟨[779, 784],771⟩
def s2Step0ExitGvOut : WindowRow := ⟨[779],771⟩
def s2Step0ExitGvExtra : List Wire := [784]
theorem s2Step0ExitGv_distinct : (s2Step0ExitGvRow.sign::s2Step0ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step0ExitGv_owned : (s2Step0ExitGvRow.sign::s2Step0ExitGvRow.payload).toFinset⊆s2Step0ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step0ExitGvBefore (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<782) ∨ (784≤q ∧ q<786)) rfl
  decide +kernel
theorem s2Step0ExitGv_retired : s2Step0ExitGvBefore.retireSet s2Step0ExitGvExtra.toFinset=s2Step0ExitGvAfter := by
  unfold Arena.retireSet s2Step0ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step0ExitGvBefore,s2Step0ExitFAfter,s2Step0ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step0ExitGv_checked : planRowResizeLog s2Step0ExitGvBefore s2Step0ExitGvRow 1 []=
    some (s2Step0ExitGvAfter,s2Step0ExitGvOut,shrinkRow 771 s2Step0ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step0ExitGvBefore s2Step0ExitGvRow 1 s2Step0ExitGv_distinct s2Step0ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step0ExitGvRow.payload.take 1) s2Step0ExitGvRow.sign=s2Step0ExitGvOut := by decide +kernel
  have hi : s2Step0ExitGvRow.payload.drop 1=s2Step0ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step0ExitGv_retired] at result
  exact result
def s2Step1ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step1ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step1ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩
def s2Step1ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step1ExitGExtra : List Wire := [781, 783]
theorem s2Step1ExitG_distinct : (s2Step1ExitGRow.sign::s2Step1ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step1ExitG_owned : (s2Step1ExitGRow.sign::s2Step1ExitGRow.payload).toFinset⊆s2Step1ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step1ExitGBefore (fun q => (0≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1ExitG_retired : s2Step1ExitGBefore.retireSet s2Step1ExitGExtra.toFinset=s2Step1ExitGAfter := by
  unfold Arena.retireSet s2Step1ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step1ExitGBefore,s2Step1ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step1ExitG_checked : planRowResizeLog s2Step1ExitGBefore s2Step1ExitGRow 255 []=
    some (s2Step1ExitGAfter,s2Step1ExitGOut,shrinkRow 769 s2Step1ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step1ExitGBefore s2Step1ExitGRow 255 s2Step1ExitG_distinct s2Step1ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step1ExitGRow.payload.take 255) s2Step1ExitGRow.sign=s2Step1ExitGOut := by decide +kernel
  have hi : s2Step1ExitGRow.payload.drop 255=s2Step1ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step1ExitG_retired] at result
  exact result
def s2Step1ExitFBefore : Arena := s2Step1ExitGAfter
def s2Step1ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<788) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step1ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩
def s2Step1ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step1ExitFExtra : List Wire := [782]
theorem s2Step1ExitF_distinct : (s2Step1ExitFRow.sign::s2Step1ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step1ExitF_owned : (s2Step1ExitFRow.sign::s2Step1ExitFRow.payload).toFinset⊆s2Step1ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step1ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1ExitF_retired : s2Step1ExitFBefore.retireSet s2Step1ExitFExtra.toFinset=s2Step1ExitFAfter := by
  unfold Arena.retireSet s2Step1ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step1ExitFBefore,s2Step1ExitGAfter,s2Step1ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step1ExitF_checked : planRowResizeLog s2Step1ExitFBefore s2Step1ExitFRow 256 []=
    some (s2Step1ExitFAfter,s2Step1ExitFOut,shrinkRow 768 s2Step1ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step1ExitFBefore s2Step1ExitFRow 256 s2Step1ExitF_distinct s2Step1ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step1ExitFRow.payload.take 256) s2Step1ExitFRow.sign=s2Step1ExitFOut := by decide +kernel
  have hi : s2Step1ExitFRow.payload.drop 256=s2Step1ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step1ExitF_retired] at result
  exact result
def s2Step1ExitFvBefore : Arena := s2Step1ExitFAfter
def s2Step1ExitFvAfter : Arena := s2Step1ExitFAfter
def s2Step1ExitFvRow : WindowRow := ⟨[255, 785, 787],770⟩
def s2Step1ExitFvOut : WindowRow := ⟨[255, 785, 787],770⟩
def s2Step1ExitFvExtra : List Wire := []
theorem s2Step1ExitFv_distinct : (s2Step1ExitFvRow.sign::s2Step1ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step1ExitFv_owned : (s2Step1ExitFvRow.sign::s2Step1ExitFvRow.payload).toFinset⊆s2Step1ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step1ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1ExitFv_reserved : s2Step1ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step1ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step1ExitFv_checked : planRowResizeLog s2Step1ExitFvBefore s2Step1ExitFvRow 3 []=
    some (s2Step1ExitFvAfter,s2Step1ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step1ExitFvBefore s2Step1ExitFvAfter s2Step1ExitFvRow 3 []
    s2Step1ExitFv_distinct s2Step1ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step1ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step1ExitFvRow.payload++[]) s2Step1ExitFvRow.sign=s2Step1ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step1ExitGvBefore : Arena := s2Step1ExitFAfter
def s2Step1ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step1ExitGvRow : WindowRow := ⟨[779, 780, 786],771⟩
def s2Step1ExitGvOut : WindowRow := ⟨[779],771⟩
def s2Step1ExitGvExtra : List Wire := [780, 786]
theorem s2Step1ExitGv_distinct : (s2Step1ExitGvRow.sign::s2Step1ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step1ExitGv_owned : (s2Step1ExitGvRow.sign::s2Step1ExitGvRow.payload).toFinset⊆s2Step1ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step1ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1ExitGv_retired : s2Step1ExitGvBefore.retireSet s2Step1ExitGvExtra.toFinset=s2Step1ExitGvAfter := by
  unfold Arena.retireSet s2Step1ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step1ExitGvBefore,s2Step1ExitFAfter,s2Step1ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step1ExitGv_checked : planRowResizeLog s2Step1ExitGvBefore s2Step1ExitGvRow 1 []=
    some (s2Step1ExitGvAfter,s2Step1ExitGvOut,shrinkRow 771 s2Step1ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step1ExitGvBefore s2Step1ExitGvRow 1 s2Step1ExitGv_distinct s2Step1ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step1ExitGvRow.payload.take 1) s2Step1ExitGvRow.sign=s2Step1ExitGvOut := by decide +kernel
  have hi : s2Step1ExitGvRow.payload.drop 1=s2Step1ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step1ExitGv_retired] at result
  exact result
def s2Step2ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step2ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step2ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩
def s2Step2ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step2ExitGExtra : List Wire := [784, 781]
theorem s2Step2ExitG_distinct : (s2Step2ExitGRow.sign::s2Step2ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step2ExitG_owned : (s2Step2ExitGRow.sign::s2Step2ExitGRow.payload).toFinset⊆s2Step2ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step2ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2ExitG_retired : s2Step2ExitGBefore.retireSet s2Step2ExitGExtra.toFinset=s2Step2ExitGAfter := by
  unfold Arena.retireSet s2Step2ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step2ExitGBefore,s2Step2ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step2ExitG_checked : planRowResizeLog s2Step2ExitGBefore s2Step2ExitGRow 255 []=
    some (s2Step2ExitGAfter,s2Step2ExitGOut,shrinkRow 769 s2Step2ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step2ExitGBefore s2Step2ExitGRow 255 s2Step2ExitG_distinct s2Step2ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step2ExitGRow.payload.take 255) s2Step2ExitGRow.sign=s2Step2ExitGOut := by decide +kernel
  have hi : s2Step2ExitGRow.payload.drop 255=s2Step2ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step2ExitG_retired] at result
  exact result
def s2Step2ExitFBefore : Arena := s2Step2ExitGAfter
def s2Step2ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step2ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩
def s2Step2ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step2ExitFExtra : List Wire := [783]
theorem s2Step2ExitF_distinct : (s2Step2ExitFRow.sign::s2Step2ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step2ExitF_owned : (s2Step2ExitFRow.sign::s2Step2ExitFRow.payload).toFinset⊆s2Step2ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step2ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2ExitF_retired : s2Step2ExitFBefore.retireSet s2Step2ExitFExtra.toFinset=s2Step2ExitFAfter := by
  unfold Arena.retireSet s2Step2ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step2ExitFBefore,s2Step2ExitGAfter,s2Step2ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step2ExitF_checked : planRowResizeLog s2Step2ExitFBefore s2Step2ExitFRow 256 []=
    some (s2Step2ExitFAfter,s2Step2ExitFOut,shrinkRow 768 s2Step2ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step2ExitFBefore s2Step2ExitFRow 256 s2Step2ExitF_distinct s2Step2ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step2ExitFRow.payload.take 256) s2Step2ExitFRow.sign=s2Step2ExitFOut := by decide +kernel
  have hi : s2Step2ExitFRow.payload.drop 256=s2Step2ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step2ExitF_retired] at result
  exact result
def s2Step2ExitFvBefore : Arena := s2Step2ExitFAfter
def s2Step2ExitFvAfter : Arena := s2Step2ExitFAfter
def s2Step2ExitFvRow : WindowRow := ⟨[255, 785, 787, 789],770⟩
def s2Step2ExitFvOut : WindowRow := ⟨[255, 785, 787, 789],770⟩
def s2Step2ExitFvExtra : List Wire := []
theorem s2Step2ExitFv_distinct : (s2Step2ExitFvRow.sign::s2Step2ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step2ExitFv_owned : (s2Step2ExitFvRow.sign::s2Step2ExitFvRow.payload).toFinset⊆s2Step2ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step2ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2ExitFv_reserved : s2Step2ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step2ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step2ExitFv_checked : planRowResizeLog s2Step2ExitFvBefore s2Step2ExitFvRow 4 []=
    some (s2Step2ExitFvAfter,s2Step2ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step2ExitFvBefore s2Step2ExitFvAfter s2Step2ExitFvRow 4 []
    s2Step2ExitFv_distinct s2Step2ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step2ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step2ExitFvRow.payload++[]) s2Step2ExitFvRow.sign=s2Step2ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step2ExitGvBefore : Arena := s2Step2ExitFAfter
def s2Step2ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step2ExitGvRow : WindowRow := ⟨[779, 778, 780, 788],771⟩
def s2Step2ExitGvOut : WindowRow := ⟨[779, 778],771⟩
def s2Step2ExitGvExtra : List Wire := [780, 788]
theorem s2Step2ExitGv_distinct : (s2Step2ExitGvRow.sign::s2Step2ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step2ExitGv_owned : (s2Step2ExitGvRow.sign::s2Step2ExitGvRow.payload).toFinset⊆s2Step2ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step2ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2ExitGv_retired : s2Step2ExitGvBefore.retireSet s2Step2ExitGvExtra.toFinset=s2Step2ExitGvAfter := by
  unfold Arena.retireSet s2Step2ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step2ExitGvBefore,s2Step2ExitFAfter,s2Step2ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step2ExitGv_checked : planRowResizeLog s2Step2ExitGvBefore s2Step2ExitGvRow 2 []=
    some (s2Step2ExitGvAfter,s2Step2ExitGvOut,shrinkRow 771 s2Step2ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step2ExitGvBefore s2Step2ExitGvRow 2 s2Step2ExitGv_distinct s2Step2ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step2ExitGvRow.payload.take 2) s2Step2ExitGvRow.sign=s2Step2ExitGvOut := by decide +kernel
  have hi : s2Step2ExitGvRow.payload.drop 2=s2Step2ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step2ExitGv_retired] at result
  exact result
def s2Step3ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step3ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step3ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩
def s2Step3ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step3ExitGExtra : List Wire := [782, 784]
theorem s2Step3ExitG_distinct : (s2Step3ExitGRow.sign::s2Step3ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step3ExitG_owned : (s2Step3ExitGRow.sign::s2Step3ExitGRow.payload).toFinset⊆s2Step3ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step3ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3ExitG_retired : s2Step3ExitGBefore.retireSet s2Step3ExitGExtra.toFinset=s2Step3ExitGAfter := by
  unfold Arena.retireSet s2Step3ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step3ExitGBefore,s2Step3ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step3ExitG_checked : planRowResizeLog s2Step3ExitGBefore s2Step3ExitGRow 255 []=
    some (s2Step3ExitGAfter,s2Step3ExitGOut,shrinkRow 769 s2Step3ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step3ExitGBefore s2Step3ExitGRow 255 s2Step3ExitG_distinct s2Step3ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step3ExitGRow.payload.take 255) s2Step3ExitGRow.sign=s2Step3ExitGOut := by decide +kernel
  have hi : s2Step3ExitGRow.payload.drop 255=s2Step3ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step3ExitG_retired] at result
  exact result
def s2Step3ExitFBefore : Arena := s2Step3ExitGAfter
def s2Step3ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step3ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩
def s2Step3ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step3ExitFExtra : List Wire := [781]
theorem s2Step3ExitF_distinct : (s2Step3ExitFRow.sign::s2Step3ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step3ExitF_owned : (s2Step3ExitFRow.sign::s2Step3ExitFRow.payload).toFinset⊆s2Step3ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step3ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3ExitF_retired : s2Step3ExitFBefore.retireSet s2Step3ExitFExtra.toFinset=s2Step3ExitFAfter := by
  unfold Arena.retireSet s2Step3ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step3ExitFBefore,s2Step3ExitGAfter,s2Step3ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step3ExitF_checked : planRowResizeLog s2Step3ExitFBefore s2Step3ExitFRow 256 []=
    some (s2Step3ExitFAfter,s2Step3ExitFOut,shrinkRow 768 s2Step3ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step3ExitFBefore s2Step3ExitFRow 256 s2Step3ExitF_distinct s2Step3ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step3ExitFRow.payload.take 256) s2Step3ExitFRow.sign=s2Step3ExitFOut := by decide +kernel
  have hi : s2Step3ExitFRow.payload.drop 256=s2Step3ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step3ExitF_retired] at result
  exact result
def s2Step3ExitFvBefore : Arena := s2Step3ExitFAfter
def s2Step3ExitFvAfter : Arena := s2Step3ExitFAfter
def s2Step3ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791],770⟩
def s2Step3ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791],770⟩
def s2Step3ExitFvExtra : List Wire := []
theorem s2Step3ExitFv_distinct : (s2Step3ExitFvRow.sign::s2Step3ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step3ExitFv_owned : (s2Step3ExitFvRow.sign::s2Step3ExitFvRow.payload).toFinset⊆s2Step3ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step3ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3ExitFv_reserved : s2Step3ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step3ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step3ExitFv_checked : planRowResizeLog s2Step3ExitFvBefore s2Step3ExitFvRow 5 []=
    some (s2Step3ExitFvAfter,s2Step3ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step3ExitFvBefore s2Step3ExitFvAfter s2Step3ExitFvRow 5 []
    s2Step3ExitFv_distinct s2Step3ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step3ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step3ExitFvRow.payload++[]) s2Step3ExitFvRow.sign=s2Step3ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step3ExitGvBefore : Arena := s2Step3ExitFAfter
def s2Step3ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step3ExitGvRow : WindowRow := ⟨[779, 778, 786, 780, 790],771⟩
def s2Step3ExitGvOut : WindowRow := ⟨[779, 778, 786],771⟩
def s2Step3ExitGvExtra : List Wire := [780, 790]
theorem s2Step3ExitGv_distinct : (s2Step3ExitGvRow.sign::s2Step3ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step3ExitGv_owned : (s2Step3ExitGvRow.sign::s2Step3ExitGvRow.payload).toFinset⊆s2Step3ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step3ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3ExitGv_retired : s2Step3ExitGvBefore.retireSet s2Step3ExitGvExtra.toFinset=s2Step3ExitGvAfter := by
  unfold Arena.retireSet s2Step3ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step3ExitGvBefore,s2Step3ExitFAfter,s2Step3ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step3ExitGv_checked : planRowResizeLog s2Step3ExitGvBefore s2Step3ExitGvRow 3 []=
    some (s2Step3ExitGvAfter,s2Step3ExitGvOut,shrinkRow 771 s2Step3ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step3ExitGvBefore s2Step3ExitGvRow 3 s2Step3ExitGv_distinct s2Step3ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step3ExitGvRow.payload.take 3) s2Step3ExitGvRow.sign=s2Step3ExitGvOut := by decide +kernel
  have hi : s2Step3ExitGvRow.payload.drop 3=s2Step3ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step3ExitGv_retired] at result
  exact result
def s2Step4ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step4ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<794) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step4ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩
def s2Step4ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step4ExitGExtra : List Wire := [783, 782]
theorem s2Step4ExitG_distinct : (s2Step4ExitGRow.sign::s2Step4ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step4ExitG_owned : (s2Step4ExitGRow.sign::s2Step4ExitGRow.payload).toFinset⊆s2Step4ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step4ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4ExitG_retired : s2Step4ExitGBefore.retireSet s2Step4ExitGExtra.toFinset=s2Step4ExitGAfter := by
  unfold Arena.retireSet s2Step4ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step4ExitGBefore,s2Step4ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step4ExitG_checked : planRowResizeLog s2Step4ExitGBefore s2Step4ExitGRow 255 []=
    some (s2Step4ExitGAfter,s2Step4ExitGOut,shrinkRow 769 s2Step4ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step4ExitGBefore s2Step4ExitGRow 255 s2Step4ExitG_distinct s2Step4ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step4ExitGRow.payload.take 255) s2Step4ExitGRow.sign=s2Step4ExitGOut := by decide +kernel
  have hi : s2Step4ExitGRow.payload.drop 255=s2Step4ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step4ExitG_retired] at result
  exact result
def s2Step4ExitFBefore : Arena := s2Step4ExitGAfter
def s2Step4ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step4ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩
def s2Step4ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step4ExitFExtra : List Wire := [784]
theorem s2Step4ExitF_distinct : (s2Step4ExitFRow.sign::s2Step4ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step4ExitF_owned : (s2Step4ExitFRow.sign::s2Step4ExitFRow.payload).toFinset⊆s2Step4ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step4ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4ExitF_retired : s2Step4ExitFBefore.retireSet s2Step4ExitFExtra.toFinset=s2Step4ExitFAfter := by
  unfold Arena.retireSet s2Step4ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step4ExitFBefore,s2Step4ExitGAfter,s2Step4ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step4ExitF_checked : planRowResizeLog s2Step4ExitFBefore s2Step4ExitFRow 256 []=
    some (s2Step4ExitFAfter,s2Step4ExitFOut,shrinkRow 768 s2Step4ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step4ExitFBefore s2Step4ExitFRow 256 s2Step4ExitF_distinct s2Step4ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step4ExitFRow.payload.take 256) s2Step4ExitFRow.sign=s2Step4ExitFOut := by decide +kernel
  have hi : s2Step4ExitFRow.payload.drop 256=s2Step4ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step4ExitF_retired] at result
  exact result
def s2Step4ExitFvBefore : Arena := s2Step4ExitFAfter
def s2Step4ExitFvAfter : Arena := s2Step4ExitFAfter
def s2Step4ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793],770⟩
def s2Step4ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793],770⟩
def s2Step4ExitFvExtra : List Wire := []
theorem s2Step4ExitFv_distinct : (s2Step4ExitFvRow.sign::s2Step4ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step4ExitFv_owned : (s2Step4ExitFvRow.sign::s2Step4ExitFvRow.payload).toFinset⊆s2Step4ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step4ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4ExitFv_reserved : s2Step4ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step4ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step4ExitFv_checked : planRowResizeLog s2Step4ExitFvBefore s2Step4ExitFvRow 6 []=
    some (s2Step4ExitFvAfter,s2Step4ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step4ExitFvBefore s2Step4ExitFvAfter s2Step4ExitFvRow 6 []
    s2Step4ExitFv_distinct s2Step4ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step4ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step4ExitFvRow.payload++[]) s2Step4ExitFvRow.sign=s2Step4ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step4ExitGvBefore : Arena := s2Step4ExitFAfter
def s2Step4ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step4ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 780, 792],771⟩
def s2Step4ExitGvOut : WindowRow := ⟨[779, 778, 786, 788],771⟩
def s2Step4ExitGvExtra : List Wire := [780, 792]
theorem s2Step4ExitGv_distinct : (s2Step4ExitGvRow.sign::s2Step4ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step4ExitGv_owned : (s2Step4ExitGvRow.sign::s2Step4ExitGvRow.payload).toFinset⊆s2Step4ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step4ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4ExitGv_retired : s2Step4ExitGvBefore.retireSet s2Step4ExitGvExtra.toFinset=s2Step4ExitGvAfter := by
  unfold Arena.retireSet s2Step4ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step4ExitGvBefore,s2Step4ExitFAfter,s2Step4ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step4ExitGv_checked : planRowResizeLog s2Step4ExitGvBefore s2Step4ExitGvRow 4 []=
    some (s2Step4ExitGvAfter,s2Step4ExitGvOut,shrinkRow 771 s2Step4ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step4ExitGvBefore s2Step4ExitGvRow 4 s2Step4ExitGv_distinct s2Step4ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step4ExitGvRow.payload.take 4) s2Step4ExitGvRow.sign=s2Step4ExitGvOut := by decide +kernel
  have hi : s2Step4ExitGvRow.payload.drop 4=s2Step4ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step4ExitGv_retired] at result
  exact result
def s2Step5ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797)),Finset.filter_subset _ _⟩
def s2Step5ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<797)),Finset.filter_subset _ _⟩
def s2Step5ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩
def s2Step5ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step5ExitGExtra : List Wire := [781, 783]
theorem s2Step5ExitG_distinct : (s2Step5ExitGRow.sign::s2Step5ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step5ExitG_owned : (s2Step5ExitGRow.sign::s2Step5ExitGRow.payload).toFinset⊆s2Step5ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step5ExitGBefore (fun q => (0≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step5ExitG_retired : s2Step5ExitGBefore.retireSet s2Step5ExitGExtra.toFinset=s2Step5ExitGAfter := by
  unfold Arena.retireSet s2Step5ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step5ExitGBefore,s2Step5ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step5ExitG_checked : planRowResizeLog s2Step5ExitGBefore s2Step5ExitGRow 255 []=
    some (s2Step5ExitGAfter,s2Step5ExitGOut,shrinkRow 769 s2Step5ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step5ExitGBefore s2Step5ExitGRow 255 s2Step5ExitG_distinct s2Step5ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step5ExitGRow.payload.take 255) s2Step5ExitGRow.sign=s2Step5ExitGOut := by decide +kernel
  have hi : s2Step5ExitGRow.payload.drop 255=s2Step5ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step5ExitG_retired] at result
  exact result
def s2Step5ExitFBefore : Arena := s2Step5ExitGAfter
def s2Step5ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<797)),Finset.filter_subset _ _⟩
def s2Step5ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩
def s2Step5ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step5ExitFExtra : List Wire := [782]
theorem s2Step5ExitF_distinct : (s2Step5ExitFRow.sign::s2Step5ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step5ExitF_owned : (s2Step5ExitFRow.sign::s2Step5ExitFRow.payload).toFinset⊆s2Step5ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step5ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step5ExitF_retired : s2Step5ExitFBefore.retireSet s2Step5ExitFExtra.toFinset=s2Step5ExitFAfter := by
  unfold Arena.retireSet s2Step5ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step5ExitFBefore,s2Step5ExitGAfter,s2Step5ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step5ExitF_checked : planRowResizeLog s2Step5ExitFBefore s2Step5ExitFRow 256 []=
    some (s2Step5ExitFAfter,s2Step5ExitFOut,shrinkRow 768 s2Step5ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step5ExitFBefore s2Step5ExitFRow 256 s2Step5ExitF_distinct s2Step5ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step5ExitFRow.payload.take 256) s2Step5ExitFRow.sign=s2Step5ExitFOut := by decide +kernel
  have hi : s2Step5ExitFRow.payload.drop 256=s2Step5ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step5ExitF_retired] at result
  exact result
def s2Step5ExitFvBefore : Arena := s2Step5ExitFAfter
def s2Step5ExitFvAfter : Arena := s2Step5ExitFAfter
def s2Step5ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796],770⟩
def s2Step5ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796],770⟩
def s2Step5ExitFvExtra : List Wire := []
theorem s2Step5ExitFv_distinct : (s2Step5ExitFvRow.sign::s2Step5ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step5ExitFv_owned : (s2Step5ExitFvRow.sign::s2Step5ExitFvRow.payload).toFinset⊆s2Step5ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step5ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step5ExitFv_reserved : s2Step5ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step5ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step5ExitFv_checked : planRowResizeLog s2Step5ExitFvBefore s2Step5ExitFvRow 7 []=
    some (s2Step5ExitFvAfter,s2Step5ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step5ExitFvBefore s2Step5ExitFvAfter s2Step5ExitFvRow 7 []
    s2Step5ExitFv_distinct s2Step5ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step5ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step5ExitFvRow.payload++[]) s2Step5ExitFvRow.sign=s2Step5ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step5ExitGvBefore : Arena := s2Step5ExitFAfter
def s2Step5ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<794) ∨ (795≤q ∧ q<797)),Finset.filter_subset _ _⟩
def s2Step5ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 780, 794],771⟩
def s2Step5ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790],771⟩
def s2Step5ExitGvExtra : List Wire := [780, 794]
theorem s2Step5ExitGv_distinct : (s2Step5ExitGvRow.sign::s2Step5ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step5ExitGv_owned : (s2Step5ExitGvRow.sign::s2Step5ExitGvRow.payload).toFinset⊆s2Step5ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step5ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step5ExitGv_retired : s2Step5ExitGvBefore.retireSet s2Step5ExitGvExtra.toFinset=s2Step5ExitGvAfter := by
  unfold Arena.retireSet s2Step5ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step5ExitGvBefore,s2Step5ExitFAfter,s2Step5ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step5ExitGv_checked : planRowResizeLog s2Step5ExitGvBefore s2Step5ExitGvRow 5 []=
    some (s2Step5ExitGvAfter,s2Step5ExitGvOut,shrinkRow 771 s2Step5ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step5ExitGvBefore s2Step5ExitGvRow 5 s2Step5ExitGv_distinct s2Step5ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step5ExitGvRow.payload.take 5) s2Step5ExitGvRow.sign=s2Step5ExitGvOut := by decide +kernel
  have hi : s2Step5ExitGvRow.payload.drop 5=s2Step5ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step5ExitGv_retired] at result
  exact result
def s2Step6ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799)),Finset.filter_subset _ _⟩
def s2Step6ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<799)),Finset.filter_subset _ _⟩
def s2Step6ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩
def s2Step6ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step6ExitGExtra : List Wire := [784, 781]
theorem s2Step6ExitG_distinct : (s2Step6ExitGRow.sign::s2Step6ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step6ExitG_owned : (s2Step6ExitGRow.sign::s2Step6ExitGRow.payload).toFinset⊆s2Step6ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step6ExitGBefore (fun q => (0≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step6ExitG_retired : s2Step6ExitGBefore.retireSet s2Step6ExitGExtra.toFinset=s2Step6ExitGAfter := by
  unfold Arena.retireSet s2Step6ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step6ExitGBefore,s2Step6ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step6ExitG_checked : planRowResizeLog s2Step6ExitGBefore s2Step6ExitGRow 255 []=
    some (s2Step6ExitGAfter,s2Step6ExitGOut,shrinkRow 769 s2Step6ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step6ExitGBefore s2Step6ExitGRow 255 s2Step6ExitG_distinct s2Step6ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step6ExitGRow.payload.take 255) s2Step6ExitGRow.sign=s2Step6ExitGOut := by decide +kernel
  have hi : s2Step6ExitGRow.payload.drop 255=s2Step6ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step6ExitG_retired] at result
  exact result
def s2Step6ExitFBefore : Arena := s2Step6ExitGAfter
def s2Step6ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<799)),Finset.filter_subset _ _⟩
def s2Step6ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩
def s2Step6ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step6ExitFExtra : List Wire := [783]
theorem s2Step6ExitF_distinct : (s2Step6ExitFRow.sign::s2Step6ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step6ExitF_owned : (s2Step6ExitFRow.sign::s2Step6ExitFRow.payload).toFinset⊆s2Step6ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step6ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step6ExitF_retired : s2Step6ExitFBefore.retireSet s2Step6ExitFExtra.toFinset=s2Step6ExitFAfter := by
  unfold Arena.retireSet s2Step6ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step6ExitFBefore,s2Step6ExitGAfter,s2Step6ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step6ExitF_checked : planRowResizeLog s2Step6ExitFBefore s2Step6ExitFRow 256 []=
    some (s2Step6ExitFAfter,s2Step6ExitFOut,shrinkRow 768 s2Step6ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step6ExitFBefore s2Step6ExitFRow 256 s2Step6ExitF_distinct s2Step6ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step6ExitFRow.payload.take 256) s2Step6ExitFRow.sign=s2Step6ExitFOut := by decide +kernel
  have hi : s2Step6ExitFRow.payload.drop 256=s2Step6ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step6ExitF_retired] at result
  exact result
def s2Step6ExitFvBefore : Arena := s2Step6ExitFAfter
def s2Step6ExitFvAfter : Arena := s2Step6ExitFAfter
def s2Step6ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798],770⟩
def s2Step6ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798],770⟩
def s2Step6ExitFvExtra : List Wire := []
theorem s2Step6ExitFv_distinct : (s2Step6ExitFvRow.sign::s2Step6ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step6ExitFv_owned : (s2Step6ExitFvRow.sign::s2Step6ExitFvRow.payload).toFinset⊆s2Step6ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step6ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step6ExitFv_reserved : s2Step6ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step6ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step6ExitFv_checked : planRowResizeLog s2Step6ExitFvBefore s2Step6ExitFvRow 8 []=
    some (s2Step6ExitFvAfter,s2Step6ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step6ExitFvBefore s2Step6ExitFvAfter s2Step6ExitFvRow 8 []
    s2Step6ExitFv_distinct s2Step6ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step6ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step6ExitFvRow.payload++[]) s2Step6ExitFvRow.sign=s2Step6ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step6ExitGvBefore : Arena := s2Step6ExitFAfter
def s2Step6ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799)),Finset.filter_subset _ _⟩
def s2Step6ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 780, 797],771⟩
def s2Step6ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792],771⟩
def s2Step6ExitGvExtra : List Wire := [780, 797]
theorem s2Step6ExitGv_distinct : (s2Step6ExitGvRow.sign::s2Step6ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step6ExitGv_owned : (s2Step6ExitGvRow.sign::s2Step6ExitGvRow.payload).toFinset⊆s2Step6ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step6ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step6ExitGv_retired : s2Step6ExitGvBefore.retireSet s2Step6ExitGvExtra.toFinset=s2Step6ExitGvAfter := by
  unfold Arena.retireSet s2Step6ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step6ExitGvBefore,s2Step6ExitFAfter,s2Step6ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step6ExitGv_checked : planRowResizeLog s2Step6ExitGvBefore s2Step6ExitGvRow 6 []=
    some (s2Step6ExitGvAfter,s2Step6ExitGvOut,shrinkRow 771 s2Step6ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step6ExitGvBefore s2Step6ExitGvRow 6 s2Step6ExitGv_distinct s2Step6ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step6ExitGvRow.payload.take 6) s2Step6ExitGvRow.sign=s2Step6ExitGvOut := by decide +kernel
  have hi : s2Step6ExitGvRow.payload.drop 6=s2Step6ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step6ExitGv_retired] at result
  exact result
def s2Step7ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<801)),Finset.filter_subset _ _⟩
def s2Step7ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<801)),Finset.filter_subset _ _⟩
def s2Step7ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩
def s2Step7ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step7ExitGExtra : List Wire := [782, 784]
theorem s2Step7ExitG_distinct : (s2Step7ExitGRow.sign::s2Step7ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step7ExitG_owned : (s2Step7ExitGRow.sign::s2Step7ExitGRow.payload).toFinset⊆s2Step7ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step7ExitGBefore (fun q => (0≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step7ExitG_retired : s2Step7ExitGBefore.retireSet s2Step7ExitGExtra.toFinset=s2Step7ExitGAfter := by
  unfold Arena.retireSet s2Step7ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step7ExitGBefore,s2Step7ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step7ExitG_checked : planRowResizeLog s2Step7ExitGBefore s2Step7ExitGRow 255 []=
    some (s2Step7ExitGAfter,s2Step7ExitGOut,shrinkRow 769 s2Step7ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step7ExitGBefore s2Step7ExitGRow 255 s2Step7ExitG_distinct s2Step7ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step7ExitGRow.payload.take 255) s2Step7ExitGRow.sign=s2Step7ExitGOut := by decide +kernel
  have hi : s2Step7ExitGRow.payload.drop 255=s2Step7ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step7ExitG_retired] at result
  exact result
def s2Step7ExitFBefore : Arena := s2Step7ExitGAfter
def s2Step7ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<801)),Finset.filter_subset _ _⟩
def s2Step7ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩
def s2Step7ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step7ExitFExtra : List Wire := [781]
theorem s2Step7ExitF_distinct : (s2Step7ExitFRow.sign::s2Step7ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step7ExitF_owned : (s2Step7ExitFRow.sign::s2Step7ExitFRow.payload).toFinset⊆s2Step7ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step7ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step7ExitF_retired : s2Step7ExitFBefore.retireSet s2Step7ExitFExtra.toFinset=s2Step7ExitFAfter := by
  unfold Arena.retireSet s2Step7ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step7ExitFBefore,s2Step7ExitGAfter,s2Step7ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step7ExitF_checked : planRowResizeLog s2Step7ExitFBefore s2Step7ExitFRow 256 []=
    some (s2Step7ExitFAfter,s2Step7ExitFOut,shrinkRow 768 s2Step7ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step7ExitFBefore s2Step7ExitFRow 256 s2Step7ExitF_distinct s2Step7ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step7ExitFRow.payload.take 256) s2Step7ExitFRow.sign=s2Step7ExitFOut := by decide +kernel
  have hi : s2Step7ExitFRow.payload.drop 256=s2Step7ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step7ExitF_retired] at result
  exact result
def s2Step7ExitFvBefore : Arena := s2Step7ExitFAfter
def s2Step7ExitFvAfter : Arena := s2Step7ExitFAfter
def s2Step7ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800],770⟩
def s2Step7ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800],770⟩
def s2Step7ExitFvExtra : List Wire := []
theorem s2Step7ExitFv_distinct : (s2Step7ExitFvRow.sign::s2Step7ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step7ExitFv_owned : (s2Step7ExitFvRow.sign::s2Step7ExitFvRow.payload).toFinset⊆s2Step7ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step7ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step7ExitFv_reserved : s2Step7ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step7ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step7ExitFv_checked : planRowResizeLog s2Step7ExitFvBefore s2Step7ExitFvRow 9 []=
    some (s2Step7ExitFvAfter,s2Step7ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step7ExitFvBefore s2Step7ExitFvAfter s2Step7ExitFvRow 9 []
    s2Step7ExitFv_distinct s2Step7ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step7ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step7ExitFvRow.payload++[]) s2Step7ExitFvRow.sign=s2Step7ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step7ExitGvBefore : Arena := s2Step7ExitFAfter
def s2Step7ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801)),Finset.filter_subset _ _⟩
def s2Step7ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 780, 799],771⟩
def s2Step7ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794],771⟩
def s2Step7ExitGvExtra : List Wire := [780, 799]
theorem s2Step7ExitGv_distinct : (s2Step7ExitGvRow.sign::s2Step7ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step7ExitGv_owned : (s2Step7ExitGvRow.sign::s2Step7ExitGvRow.payload).toFinset⊆s2Step7ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step7ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step7ExitGv_retired : s2Step7ExitGvBefore.retireSet s2Step7ExitGvExtra.toFinset=s2Step7ExitGvAfter := by
  unfold Arena.retireSet s2Step7ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step7ExitGvBefore,s2Step7ExitFAfter,s2Step7ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step7ExitGv_checked : planRowResizeLog s2Step7ExitGvBefore s2Step7ExitGvRow 7 []=
    some (s2Step7ExitGvAfter,s2Step7ExitGvOut,shrinkRow 771 s2Step7ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step7ExitGvBefore s2Step7ExitGvRow 7 s2Step7ExitGv_distinct s2Step7ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step7ExitGvRow.payload.take 7) s2Step7ExitGvRow.sign=s2Step7ExitGvOut := by decide +kernel
  have hi : s2Step7ExitGvRow.payload.drop 7=s2Step7ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step7ExitGv_retired] at result
  exact result
def s2Step8ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<803)),Finset.filter_subset _ _⟩
def s2Step8ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<803)),Finset.filter_subset _ _⟩
def s2Step8ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩
def s2Step8ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step8ExitGExtra : List Wire := [783, 782]
theorem s2Step8ExitG_distinct : (s2Step8ExitGRow.sign::s2Step8ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step8ExitG_owned : (s2Step8ExitGRow.sign::s2Step8ExitGRow.payload).toFinset⊆s2Step8ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step8ExitGBefore (fun q => (0≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step8ExitG_retired : s2Step8ExitGBefore.retireSet s2Step8ExitGExtra.toFinset=s2Step8ExitGAfter := by
  unfold Arena.retireSet s2Step8ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step8ExitGBefore,s2Step8ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step8ExitG_checked : planRowResizeLog s2Step8ExitGBefore s2Step8ExitGRow 255 []=
    some (s2Step8ExitGAfter,s2Step8ExitGOut,shrinkRow 769 s2Step8ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step8ExitGBefore s2Step8ExitGRow 255 s2Step8ExitG_distinct s2Step8ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step8ExitGRow.payload.take 255) s2Step8ExitGRow.sign=s2Step8ExitGOut := by decide +kernel
  have hi : s2Step8ExitGRow.payload.drop 255=s2Step8ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step8ExitG_retired] at result
  exact result
def s2Step8ExitFBefore : Arena := s2Step8ExitGAfter
def s2Step8ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<803)),Finset.filter_subset _ _⟩
def s2Step8ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩
def s2Step8ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step8ExitFExtra : List Wire := [784]
theorem s2Step8ExitF_distinct : (s2Step8ExitFRow.sign::s2Step8ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step8ExitF_owned : (s2Step8ExitFRow.sign::s2Step8ExitFRow.payload).toFinset⊆s2Step8ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step8ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step8ExitF_retired : s2Step8ExitFBefore.retireSet s2Step8ExitFExtra.toFinset=s2Step8ExitFAfter := by
  unfold Arena.retireSet s2Step8ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step8ExitFBefore,s2Step8ExitGAfter,s2Step8ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step8ExitF_checked : planRowResizeLog s2Step8ExitFBefore s2Step8ExitFRow 256 []=
    some (s2Step8ExitFAfter,s2Step8ExitFOut,shrinkRow 768 s2Step8ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step8ExitFBefore s2Step8ExitFRow 256 s2Step8ExitF_distinct s2Step8ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step8ExitFRow.payload.take 256) s2Step8ExitFRow.sign=s2Step8ExitFOut := by decide +kernel
  have hi : s2Step8ExitFRow.payload.drop 256=s2Step8ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step8ExitF_retired] at result
  exact result
def s2Step8ExitFvBefore : Arena := s2Step8ExitFAfter
def s2Step8ExitFvAfter : Arena := s2Step8ExitFAfter
def s2Step8ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802],770⟩
def s2Step8ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802],770⟩
def s2Step8ExitFvExtra : List Wire := []
theorem s2Step8ExitFv_distinct : (s2Step8ExitFvRow.sign::s2Step8ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step8ExitFv_owned : (s2Step8ExitFvRow.sign::s2Step8ExitFvRow.payload).toFinset⊆s2Step8ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step8ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step8ExitFv_reserved : s2Step8ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step8ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step8ExitFv_checked : planRowResizeLog s2Step8ExitFvBefore s2Step8ExitFvRow 10 []=
    some (s2Step8ExitFvAfter,s2Step8ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step8ExitFvBefore s2Step8ExitFvAfter s2Step8ExitFvRow 10 []
    s2Step8ExitFv_distinct s2Step8ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step8ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step8ExitFvRow.payload++[]) s2Step8ExitFvRow.sign=s2Step8ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step8ExitGvBefore : Arena := s2Step8ExitFAfter
def s2Step8ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803)),Finset.filter_subset _ _⟩
def s2Step8ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 780, 801],771⟩
def s2Step8ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797],771⟩
def s2Step8ExitGvExtra : List Wire := [780, 801]
theorem s2Step8ExitGv_distinct : (s2Step8ExitGvRow.sign::s2Step8ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step8ExitGv_owned : (s2Step8ExitGvRow.sign::s2Step8ExitGvRow.payload).toFinset⊆s2Step8ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step8ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step8ExitGv_retired : s2Step8ExitGvBefore.retireSet s2Step8ExitGvExtra.toFinset=s2Step8ExitGvAfter := by
  unfold Arena.retireSet s2Step8ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step8ExitGvBefore,s2Step8ExitFAfter,s2Step8ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step8ExitGv_checked : planRowResizeLog s2Step8ExitGvBefore s2Step8ExitGvRow 8 []=
    some (s2Step8ExitGvAfter,s2Step8ExitGvOut,shrinkRow 771 s2Step8ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step8ExitGvBefore s2Step8ExitGvRow 8 s2Step8ExitGv_distinct s2Step8ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step8ExitGvRow.payload.take 8) s2Step8ExitGvRow.sign=s2Step8ExitGvOut := by decide +kernel
  have hi : s2Step8ExitGvRow.payload.drop 8=s2Step8ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step8ExitGv_retired] at result
  exact result
def s2Step9ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<805)),Finset.filter_subset _ _⟩
def s2Step9ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<805)),Finset.filter_subset _ _⟩
def s2Step9ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩
def s2Step9ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step9ExitGExtra : List Wire := [781, 783]
theorem s2Step9ExitG_distinct : (s2Step9ExitGRow.sign::s2Step9ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step9ExitG_owned : (s2Step9ExitGRow.sign::s2Step9ExitGRow.payload).toFinset⊆s2Step9ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step9ExitGBefore (fun q => (0≤q ∧ q<805)) rfl
  decide +kernel
theorem s2Step9ExitG_retired : s2Step9ExitGBefore.retireSet s2Step9ExitGExtra.toFinset=s2Step9ExitGAfter := by
  unfold Arena.retireSet s2Step9ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step9ExitGBefore,s2Step9ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step9ExitG_checked : planRowResizeLog s2Step9ExitGBefore s2Step9ExitGRow 255 []=
    some (s2Step9ExitGAfter,s2Step9ExitGOut,shrinkRow 769 s2Step9ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step9ExitGBefore s2Step9ExitGRow 255 s2Step9ExitG_distinct s2Step9ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step9ExitGRow.payload.take 255) s2Step9ExitGRow.sign=s2Step9ExitGOut := by decide +kernel
  have hi : s2Step9ExitGRow.payload.drop 255=s2Step9ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step9ExitG_retired] at result
  exact result
def s2Step9ExitFBefore : Arena := s2Step9ExitGAfter
def s2Step9ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<805)),Finset.filter_subset _ _⟩
def s2Step9ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩
def s2Step9ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step9ExitFExtra : List Wire := [782]
theorem s2Step9ExitF_distinct : (s2Step9ExitFRow.sign::s2Step9ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step9ExitF_owned : (s2Step9ExitFRow.sign::s2Step9ExitFRow.payload).toFinset⊆s2Step9ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step9ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<805)) rfl
  decide +kernel
theorem s2Step9ExitF_retired : s2Step9ExitFBefore.retireSet s2Step9ExitFExtra.toFinset=s2Step9ExitFAfter := by
  unfold Arena.retireSet s2Step9ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step9ExitFBefore,s2Step9ExitGAfter,s2Step9ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step9ExitF_checked : planRowResizeLog s2Step9ExitFBefore s2Step9ExitFRow 256 []=
    some (s2Step9ExitFAfter,s2Step9ExitFOut,shrinkRow 768 s2Step9ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step9ExitFBefore s2Step9ExitFRow 256 s2Step9ExitF_distinct s2Step9ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step9ExitFRow.payload.take 256) s2Step9ExitFRow.sign=s2Step9ExitFOut := by decide +kernel
  have hi : s2Step9ExitFRow.payload.drop 256=s2Step9ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step9ExitF_retired] at result
  exact result
def s2Step9ExitFvBefore : Arena := s2Step9ExitFAfter
def s2Step9ExitFvAfter : Arena := s2Step9ExitFAfter
def s2Step9ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804],770⟩
def s2Step9ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804],770⟩
def s2Step9ExitFvExtra : List Wire := []
theorem s2Step9ExitFv_distinct : (s2Step9ExitFvRow.sign::s2Step9ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step9ExitFv_owned : (s2Step9ExitFvRow.sign::s2Step9ExitFvRow.payload).toFinset⊆s2Step9ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step9ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<805)) rfl
  decide +kernel
theorem s2Step9ExitFv_reserved : s2Step9ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step9ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step9ExitFv_checked : planRowResizeLog s2Step9ExitFvBefore s2Step9ExitFvRow 11 []=
    some (s2Step9ExitFvAfter,s2Step9ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step9ExitFvBefore s2Step9ExitFvAfter s2Step9ExitFvRow 11 []
    s2Step9ExitFv_distinct s2Step9ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step9ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step9ExitFvRow.payload++[]) s2Step9ExitFvRow.sign=s2Step9ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step9ExitGvBefore : Arena := s2Step9ExitFAfter
def s2Step9ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<803) ∨ (804≤q ∧ q<805)),Finset.filter_subset _ _⟩
def s2Step9ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 780, 803],771⟩
def s2Step9ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799],771⟩
def s2Step9ExitGvExtra : List Wire := [780, 803]
theorem s2Step9ExitGv_distinct : (s2Step9ExitGvRow.sign::s2Step9ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step9ExitGv_owned : (s2Step9ExitGvRow.sign::s2Step9ExitGvRow.payload).toFinset⊆s2Step9ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step9ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<805)) rfl
  decide +kernel
theorem s2Step9ExitGv_retired : s2Step9ExitGvBefore.retireSet s2Step9ExitGvExtra.toFinset=s2Step9ExitGvAfter := by
  unfold Arena.retireSet s2Step9ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step9ExitGvBefore,s2Step9ExitFAfter,s2Step9ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step9ExitGv_checked : planRowResizeLog s2Step9ExitGvBefore s2Step9ExitGvRow 9 []=
    some (s2Step9ExitGvAfter,s2Step9ExitGvOut,shrinkRow 771 s2Step9ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step9ExitGvBefore s2Step9ExitGvRow 9 s2Step9ExitGv_distinct s2Step9ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step9ExitGvRow.payload.take 9) s2Step9ExitGvRow.sign=s2Step9ExitGvOut := by decide +kernel
  have hi : s2Step9ExitGvRow.payload.drop 9=s2Step9ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step9ExitGv_retired] at result
  exact result
def s2Step10ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step10ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<807) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step10ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩
def s2Step10ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step10ExitGExtra : List Wire := [784, 781]
theorem s2Step10ExitG_distinct : (s2Step10ExitGRow.sign::s2Step10ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step10ExitG_owned : (s2Step10ExitGRow.sign::s2Step10ExitGRow.payload).toFinset⊆s2Step10ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step10ExitGBefore (fun q => (0≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10ExitG_retired : s2Step10ExitGBefore.retireSet s2Step10ExitGExtra.toFinset=s2Step10ExitGAfter := by
  unfold Arena.retireSet s2Step10ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step10ExitGBefore,s2Step10ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step10ExitG_checked : planRowResizeLog s2Step10ExitGBefore s2Step10ExitGRow 255 []=
    some (s2Step10ExitGAfter,s2Step10ExitGOut,shrinkRow 769 s2Step10ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step10ExitGBefore s2Step10ExitGRow 255 s2Step10ExitG_distinct s2Step10ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step10ExitGRow.payload.take 255) s2Step10ExitGRow.sign=s2Step10ExitGOut := by decide +kernel
  have hi : s2Step10ExitGRow.payload.drop 255=s2Step10ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step10ExitG_retired] at result
  exact result
def s2Step10ExitFBefore : Arena := s2Step10ExitGAfter
def s2Step10ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<807) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step10ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩
def s2Step10ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step10ExitFExtra : List Wire := [783]
theorem s2Step10ExitF_distinct : (s2Step10ExitFRow.sign::s2Step10ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step10ExitF_owned : (s2Step10ExitFRow.sign::s2Step10ExitFRow.payload).toFinset⊆s2Step10ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step10ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10ExitF_retired : s2Step10ExitFBefore.retireSet s2Step10ExitFExtra.toFinset=s2Step10ExitFAfter := by
  unfold Arena.retireSet s2Step10ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step10ExitFBefore,s2Step10ExitGAfter,s2Step10ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step10ExitF_checked : planRowResizeLog s2Step10ExitFBefore s2Step10ExitFRow 256 []=
    some (s2Step10ExitFAfter,s2Step10ExitFOut,shrinkRow 768 s2Step10ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step10ExitFBefore s2Step10ExitFRow 256 s2Step10ExitF_distinct s2Step10ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step10ExitFRow.payload.take 256) s2Step10ExitFRow.sign=s2Step10ExitFOut := by decide +kernel
  have hi : s2Step10ExitFRow.payload.drop 256=s2Step10ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step10ExitF_retired] at result
  exact result
def s2Step10ExitFvBefore : Arena := s2Step10ExitFAfter
def s2Step10ExitFvAfter : Arena := s2Step10ExitFAfter
def s2Step10ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806],770⟩
def s2Step10ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806],770⟩
def s2Step10ExitFvExtra : List Wire := []
theorem s2Step10ExitFv_distinct : (s2Step10ExitFvRow.sign::s2Step10ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step10ExitFv_owned : (s2Step10ExitFvRow.sign::s2Step10ExitFvRow.payload).toFinset⊆s2Step10ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step10ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10ExitFv_reserved : s2Step10ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step10ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step10ExitFv_checked : planRowResizeLog s2Step10ExitFvBefore s2Step10ExitFvRow 12 []=
    some (s2Step10ExitFvAfter,s2Step10ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step10ExitFvBefore s2Step10ExitFvAfter s2Step10ExitFvRow 12 []
    s2Step10ExitFv_distinct s2Step10ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step10ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step10ExitFvRow.payload++[]) s2Step10ExitFvRow.sign=s2Step10ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step10ExitGvBefore : Arena := s2Step10ExitFAfter
def s2Step10ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step10ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 780, 805],771⟩
def s2Step10ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801],771⟩
def s2Step10ExitGvExtra : List Wire := [780, 805]
theorem s2Step10ExitGv_distinct : (s2Step10ExitGvRow.sign::s2Step10ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step10ExitGv_owned : (s2Step10ExitGvRow.sign::s2Step10ExitGvRow.payload).toFinset⊆s2Step10ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step10ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10ExitGv_retired : s2Step10ExitGvBefore.retireSet s2Step10ExitGvExtra.toFinset=s2Step10ExitGvAfter := by
  unfold Arena.retireSet s2Step10ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step10ExitGvBefore,s2Step10ExitFAfter,s2Step10ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step10ExitGv_checked : planRowResizeLog s2Step10ExitGvBefore s2Step10ExitGvRow 10 []=
    some (s2Step10ExitGvAfter,s2Step10ExitGvOut,shrinkRow 771 s2Step10ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step10ExitGvBefore s2Step10ExitGvRow 10 s2Step10ExitGv_distinct s2Step10ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step10ExitGvRow.payload.take 10) s2Step10ExitGvRow.sign=s2Step10ExitGvOut := by decide +kernel
  have hi : s2Step10ExitGvRow.payload.drop 10=s2Step10ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step10ExitGv_retired] at result
  exact result
def s2Step11ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step11ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<809) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step11ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩
def s2Step11ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step11ExitGExtra : List Wire := [782, 784]
theorem s2Step11ExitG_distinct : (s2Step11ExitGRow.sign::s2Step11ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step11ExitG_owned : (s2Step11ExitGRow.sign::s2Step11ExitGRow.payload).toFinset⊆s2Step11ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step11ExitGBefore (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11ExitG_retired : s2Step11ExitGBefore.retireSet s2Step11ExitGExtra.toFinset=s2Step11ExitGAfter := by
  unfold Arena.retireSet s2Step11ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step11ExitGBefore,s2Step11ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step11ExitG_checked : planRowResizeLog s2Step11ExitGBefore s2Step11ExitGRow 255 []=
    some (s2Step11ExitGAfter,s2Step11ExitGOut,shrinkRow 769 s2Step11ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step11ExitGBefore s2Step11ExitGRow 255 s2Step11ExitG_distinct s2Step11ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step11ExitGRow.payload.take 255) s2Step11ExitGRow.sign=s2Step11ExitGOut := by decide +kernel
  have hi : s2Step11ExitGRow.payload.drop 255=s2Step11ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step11ExitG_retired] at result
  exact result
def s2Step11ExitFBefore : Arena := s2Step11ExitGAfter
def s2Step11ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<809) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step11ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩
def s2Step11ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step11ExitFExtra : List Wire := [781]
theorem s2Step11ExitF_distinct : (s2Step11ExitFRow.sign::s2Step11ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step11ExitF_owned : (s2Step11ExitFRow.sign::s2Step11ExitFRow.payload).toFinset⊆s2Step11ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step11ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11ExitF_retired : s2Step11ExitFBefore.retireSet s2Step11ExitFExtra.toFinset=s2Step11ExitFAfter := by
  unfold Arena.retireSet s2Step11ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step11ExitFBefore,s2Step11ExitGAfter,s2Step11ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step11ExitF_checked : planRowResizeLog s2Step11ExitFBefore s2Step11ExitFRow 256 []=
    some (s2Step11ExitFAfter,s2Step11ExitFOut,shrinkRow 768 s2Step11ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step11ExitFBefore s2Step11ExitFRow 256 s2Step11ExitF_distinct s2Step11ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step11ExitFRow.payload.take 256) s2Step11ExitFRow.sign=s2Step11ExitFOut := by decide +kernel
  have hi : s2Step11ExitFRow.payload.drop 256=s2Step11ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step11ExitF_retired] at result
  exact result
def s2Step11ExitFvBefore : Arena := s2Step11ExitFAfter
def s2Step11ExitFvAfter : Arena := s2Step11ExitFAfter
def s2Step11ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808],770⟩
def s2Step11ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808],770⟩
def s2Step11ExitFvExtra : List Wire := []
theorem s2Step11ExitFv_distinct : (s2Step11ExitFvRow.sign::s2Step11ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step11ExitFv_owned : (s2Step11ExitFvRow.sign::s2Step11ExitFvRow.payload).toFinset⊆s2Step11ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step11ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11ExitFv_reserved : s2Step11ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step11ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step11ExitFv_checked : planRowResizeLog s2Step11ExitFvBefore s2Step11ExitFvRow 13 []=
    some (s2Step11ExitFvAfter,s2Step11ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step11ExitFvBefore s2Step11ExitFvAfter s2Step11ExitFvRow 13 []
    s2Step11ExitFv_distinct s2Step11ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step11ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step11ExitFvRow.payload++[]) s2Step11ExitFvRow.sign=s2Step11ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step11ExitGvBefore : Arena := s2Step11ExitFAfter
def s2Step11ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step11ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 780, 807],771⟩
def s2Step11ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803],771⟩
def s2Step11ExitGvExtra : List Wire := [780, 807]
theorem s2Step11ExitGv_distinct : (s2Step11ExitGvRow.sign::s2Step11ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step11ExitGv_owned : (s2Step11ExitGvRow.sign::s2Step11ExitGvRow.payload).toFinset⊆s2Step11ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step11ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11ExitGv_retired : s2Step11ExitGvBefore.retireSet s2Step11ExitGvExtra.toFinset=s2Step11ExitGvAfter := by
  unfold Arena.retireSet s2Step11ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step11ExitGvBefore,s2Step11ExitFAfter,s2Step11ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step11ExitGv_checked : planRowResizeLog s2Step11ExitGvBefore s2Step11ExitGvRow 11 []=
    some (s2Step11ExitGvAfter,s2Step11ExitGvOut,shrinkRow 771 s2Step11ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step11ExitGvBefore s2Step11ExitGvRow 11 s2Step11ExitGv_distinct s2Step11ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step11ExitGvRow.payload.take 11) s2Step11ExitGvRow.sign=s2Step11ExitGvOut := by decide +kernel
  have hi : s2Step11ExitGvRow.payload.drop 11=s2Step11ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step11ExitGv_retired] at result
  exact result
def s2Step12ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step12ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step12ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩
def s2Step12ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step12ExitGExtra : List Wire := [783, 782]
theorem s2Step12ExitG_distinct : (s2Step12ExitGRow.sign::s2Step12ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step12ExitG_owned : (s2Step12ExitGRow.sign::s2Step12ExitGRow.payload).toFinset⊆s2Step12ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step12ExitGBefore (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12ExitG_retired : s2Step12ExitGBefore.retireSet s2Step12ExitGExtra.toFinset=s2Step12ExitGAfter := by
  unfold Arena.retireSet s2Step12ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step12ExitGBefore,s2Step12ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step12ExitG_checked : planRowResizeLog s2Step12ExitGBefore s2Step12ExitGRow 255 []=
    some (s2Step12ExitGAfter,s2Step12ExitGOut,shrinkRow 769 s2Step12ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step12ExitGBefore s2Step12ExitGRow 255 s2Step12ExitG_distinct s2Step12ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step12ExitGRow.payload.take 255) s2Step12ExitGRow.sign=s2Step12ExitGOut := by decide +kernel
  have hi : s2Step12ExitGRow.payload.drop 255=s2Step12ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step12ExitG_retired] at result
  exact result
def s2Step12ExitFBefore : Arena := s2Step12ExitGAfter
def s2Step12ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step12ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩
def s2Step12ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step12ExitFExtra : List Wire := [784]
theorem s2Step12ExitF_distinct : (s2Step12ExitFRow.sign::s2Step12ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step12ExitF_owned : (s2Step12ExitFRow.sign::s2Step12ExitFRow.payload).toFinset⊆s2Step12ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step12ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12ExitF_retired : s2Step12ExitFBefore.retireSet s2Step12ExitFExtra.toFinset=s2Step12ExitFAfter := by
  unfold Arena.retireSet s2Step12ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step12ExitFBefore,s2Step12ExitGAfter,s2Step12ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step12ExitF_checked : planRowResizeLog s2Step12ExitFBefore s2Step12ExitFRow 256 []=
    some (s2Step12ExitFAfter,s2Step12ExitFOut,shrinkRow 768 s2Step12ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step12ExitFBefore s2Step12ExitFRow 256 s2Step12ExitF_distinct s2Step12ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step12ExitFRow.payload.take 256) s2Step12ExitFRow.sign=s2Step12ExitFOut := by decide +kernel
  have hi : s2Step12ExitFRow.payload.drop 256=s2Step12ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step12ExitF_retired] at result
  exact result
def s2Step12ExitFvBefore : Arena := s2Step12ExitFAfter
def s2Step12ExitFvAfter : Arena := s2Step12ExitFAfter
def s2Step12ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810],770⟩
def s2Step12ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810],770⟩
def s2Step12ExitFvExtra : List Wire := []
theorem s2Step12ExitFv_distinct : (s2Step12ExitFvRow.sign::s2Step12ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step12ExitFv_owned : (s2Step12ExitFvRow.sign::s2Step12ExitFvRow.payload).toFinset⊆s2Step12ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step12ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12ExitFv_reserved : s2Step12ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step12ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step12ExitFv_checked : planRowResizeLog s2Step12ExitFvBefore s2Step12ExitFvRow 14 []=
    some (s2Step12ExitFvAfter,s2Step12ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step12ExitFvBefore s2Step12ExitFvAfter s2Step12ExitFvRow 14 []
    s2Step12ExitFv_distinct s2Step12ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step12ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step12ExitFvRow.payload++[]) s2Step12ExitFvRow.sign=s2Step12ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step12ExitGvBefore : Arena := s2Step12ExitFAfter
def s2Step12ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step12ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 780, 809],771⟩
def s2Step12ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805],771⟩
def s2Step12ExitGvExtra : List Wire := [780, 809]
theorem s2Step12ExitGv_distinct : (s2Step12ExitGvRow.sign::s2Step12ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step12ExitGv_owned : (s2Step12ExitGvRow.sign::s2Step12ExitGvRow.payload).toFinset⊆s2Step12ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step12ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12ExitGv_retired : s2Step12ExitGvBefore.retireSet s2Step12ExitGvExtra.toFinset=s2Step12ExitGvAfter := by
  unfold Arena.retireSet s2Step12ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step12ExitGvBefore,s2Step12ExitFAfter,s2Step12ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step12ExitGv_checked : planRowResizeLog s2Step12ExitGvBefore s2Step12ExitGvRow 12 []=
    some (s2Step12ExitGvAfter,s2Step12ExitGvOut,shrinkRow 771 s2Step12ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step12ExitGvBefore s2Step12ExitGvRow 12 s2Step12ExitGv_distinct s2Step12ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step12ExitGvRow.payload.take 12) s2Step12ExitGvRow.sign=s2Step12ExitGvOut := by decide +kernel
  have hi : s2Step12ExitGvRow.payload.drop 12=s2Step12ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step12ExitGv_retired] at result
  exact result
def s2Step13ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step13ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step13ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩
def s2Step13ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step13ExitGExtra : List Wire := [781, 783]
theorem s2Step13ExitG_distinct : (s2Step13ExitGRow.sign::s2Step13ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step13ExitG_owned : (s2Step13ExitGRow.sign::s2Step13ExitGRow.payload).toFinset⊆s2Step13ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step13ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13ExitG_retired : s2Step13ExitGBefore.retireSet s2Step13ExitGExtra.toFinset=s2Step13ExitGAfter := by
  unfold Arena.retireSet s2Step13ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step13ExitGBefore,s2Step13ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step13ExitG_checked : planRowResizeLog s2Step13ExitGBefore s2Step13ExitGRow 255 []=
    some (s2Step13ExitGAfter,s2Step13ExitGOut,shrinkRow 769 s2Step13ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step13ExitGBefore s2Step13ExitGRow 255 s2Step13ExitG_distinct s2Step13ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step13ExitGRow.payload.take 255) s2Step13ExitGRow.sign=s2Step13ExitGOut := by decide +kernel
  have hi : s2Step13ExitGRow.payload.drop 255=s2Step13ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step13ExitG_retired] at result
  exact result
def s2Step13ExitFBefore : Arena := s2Step13ExitGAfter
def s2Step13ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step13ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩
def s2Step13ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step13ExitFExtra : List Wire := [782]
theorem s2Step13ExitF_distinct : (s2Step13ExitFRow.sign::s2Step13ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step13ExitF_owned : (s2Step13ExitFRow.sign::s2Step13ExitFRow.payload).toFinset⊆s2Step13ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step13ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13ExitF_retired : s2Step13ExitFBefore.retireSet s2Step13ExitFExtra.toFinset=s2Step13ExitFAfter := by
  unfold Arena.retireSet s2Step13ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step13ExitFBefore,s2Step13ExitGAfter,s2Step13ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step13ExitF_checked : planRowResizeLog s2Step13ExitFBefore s2Step13ExitFRow 256 []=
    some (s2Step13ExitFAfter,s2Step13ExitFOut,shrinkRow 768 s2Step13ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step13ExitFBefore s2Step13ExitFRow 256 s2Step13ExitF_distinct s2Step13ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step13ExitFRow.payload.take 256) s2Step13ExitFRow.sign=s2Step13ExitFOut := by decide +kernel
  have hi : s2Step13ExitFRow.payload.drop 256=s2Step13ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step13ExitF_retired] at result
  exact result
def s2Step13ExitFvBefore : Arena := s2Step13ExitFAfter
def s2Step13ExitFvAfter : Arena := s2Step13ExitFAfter
def s2Step13ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812],770⟩
def s2Step13ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812],770⟩
def s2Step13ExitFvExtra : List Wire := []
theorem s2Step13ExitFv_distinct : (s2Step13ExitFvRow.sign::s2Step13ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step13ExitFv_owned : (s2Step13ExitFvRow.sign::s2Step13ExitFvRow.payload).toFinset⊆s2Step13ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step13ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13ExitFv_reserved : s2Step13ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step13ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step13ExitFv_checked : planRowResizeLog s2Step13ExitFvBefore s2Step13ExitFvRow 15 []=
    some (s2Step13ExitFvAfter,s2Step13ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step13ExitFvBefore s2Step13ExitFvAfter s2Step13ExitFvRow 15 []
    s2Step13ExitFv_distinct s2Step13ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step13ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step13ExitFvRow.payload++[]) s2Step13ExitFvRow.sign=s2Step13ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step13ExitGvBefore : Arena := s2Step13ExitFAfter
def s2Step13ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step13ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 780, 811],771⟩
def s2Step13ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807],771⟩
def s2Step13ExitGvExtra : List Wire := [780, 811]
theorem s2Step13ExitGv_distinct : (s2Step13ExitGvRow.sign::s2Step13ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step13ExitGv_owned : (s2Step13ExitGvRow.sign::s2Step13ExitGvRow.payload).toFinset⊆s2Step13ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step13ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13ExitGv_retired : s2Step13ExitGvBefore.retireSet s2Step13ExitGvExtra.toFinset=s2Step13ExitGvAfter := by
  unfold Arena.retireSet s2Step13ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step13ExitGvBefore,s2Step13ExitFAfter,s2Step13ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step13ExitGv_checked : planRowResizeLog s2Step13ExitGvBefore s2Step13ExitGvRow 13 []=
    some (s2Step13ExitGvAfter,s2Step13ExitGvOut,shrinkRow 771 s2Step13ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step13ExitGvBefore s2Step13ExitGvRow 13 s2Step13ExitGv_distinct s2Step13ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step13ExitGvRow.payload.take 13) s2Step13ExitGvRow.sign=s2Step13ExitGvOut := by decide +kernel
  have hi : s2Step13ExitGvRow.payload.drop 13=s2Step13ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step13ExitGv_retired] at result
  exact result
def s2Step14ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step14ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step14ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩
def s2Step14ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step14ExitGExtra : List Wire := [784, 781]
theorem s2Step14ExitG_distinct : (s2Step14ExitGRow.sign::s2Step14ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step14ExitG_owned : (s2Step14ExitGRow.sign::s2Step14ExitGRow.payload).toFinset⊆s2Step14ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step14ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14ExitG_retired : s2Step14ExitGBefore.retireSet s2Step14ExitGExtra.toFinset=s2Step14ExitGAfter := by
  unfold Arena.retireSet s2Step14ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step14ExitGBefore,s2Step14ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step14ExitG_checked : planRowResizeLog s2Step14ExitGBefore s2Step14ExitGRow 255 []=
    some (s2Step14ExitGAfter,s2Step14ExitGOut,shrinkRow 769 s2Step14ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step14ExitGBefore s2Step14ExitGRow 255 s2Step14ExitG_distinct s2Step14ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step14ExitGRow.payload.take 255) s2Step14ExitGRow.sign=s2Step14ExitGOut := by decide +kernel
  have hi : s2Step14ExitGRow.payload.drop 255=s2Step14ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step14ExitG_retired] at result
  exact result
def s2Step14ExitFBefore : Arena := s2Step14ExitGAfter
def s2Step14ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step14ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩
def s2Step14ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step14ExitFExtra : List Wire := [783]
theorem s2Step14ExitF_distinct : (s2Step14ExitFRow.sign::s2Step14ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step14ExitF_owned : (s2Step14ExitFRow.sign::s2Step14ExitFRow.payload).toFinset⊆s2Step14ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step14ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14ExitF_retired : s2Step14ExitFBefore.retireSet s2Step14ExitFExtra.toFinset=s2Step14ExitFAfter := by
  unfold Arena.retireSet s2Step14ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step14ExitFBefore,s2Step14ExitGAfter,s2Step14ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step14ExitF_checked : planRowResizeLog s2Step14ExitFBefore s2Step14ExitFRow 256 []=
    some (s2Step14ExitFAfter,s2Step14ExitFOut,shrinkRow 768 s2Step14ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step14ExitFBefore s2Step14ExitFRow 256 s2Step14ExitF_distinct s2Step14ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step14ExitFRow.payload.take 256) s2Step14ExitFRow.sign=s2Step14ExitFOut := by decide +kernel
  have hi : s2Step14ExitFRow.payload.drop 256=s2Step14ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step14ExitF_retired] at result
  exact result
def s2Step14ExitFvBefore : Arena := s2Step14ExitFAfter
def s2Step14ExitFvAfter : Arena := s2Step14ExitFAfter
def s2Step14ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815],770⟩
def s2Step14ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815],770⟩
def s2Step14ExitFvExtra : List Wire := []
theorem s2Step14ExitFv_distinct : (s2Step14ExitFvRow.sign::s2Step14ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step14ExitFv_owned : (s2Step14ExitFvRow.sign::s2Step14ExitFvRow.payload).toFinset⊆s2Step14ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step14ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14ExitFv_reserved : s2Step14ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step14ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step14ExitFv_checked : planRowResizeLog s2Step14ExitFvBefore s2Step14ExitFvRow 16 []=
    some (s2Step14ExitFvAfter,s2Step14ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step14ExitFvBefore s2Step14ExitFvAfter s2Step14ExitFvRow 16 []
    s2Step14ExitFv_distinct s2Step14ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step14ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step14ExitFvRow.payload++[]) s2Step14ExitFvRow.sign=s2Step14ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step14ExitGvBefore : Arena := s2Step14ExitFAfter
def s2Step14ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step14ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 780, 814],771⟩
def s2Step14ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809],771⟩
def s2Step14ExitGvExtra : List Wire := [780, 814]
theorem s2Step14ExitGv_distinct : (s2Step14ExitGvRow.sign::s2Step14ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step14ExitGv_owned : (s2Step14ExitGvRow.sign::s2Step14ExitGvRow.payload).toFinset⊆s2Step14ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step14ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14ExitGv_retired : s2Step14ExitGvBefore.retireSet s2Step14ExitGvExtra.toFinset=s2Step14ExitGvAfter := by
  unfold Arena.retireSet s2Step14ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step14ExitGvBefore,s2Step14ExitFAfter,s2Step14ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step14ExitGv_checked : planRowResizeLog s2Step14ExitGvBefore s2Step14ExitGvRow 14 []=
    some (s2Step14ExitGvAfter,s2Step14ExitGvOut,shrinkRow 771 s2Step14ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step14ExitGvBefore s2Step14ExitGvRow 14 s2Step14ExitGv_distinct s2Step14ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step14ExitGvRow.payload.take 14) s2Step14ExitGvRow.sign=s2Step14ExitGvOut := by decide +kernel
  have hi : s2Step14ExitGvRow.payload.drop 14=s2Step14ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step14ExitGv_retired] at result
  exact result
def s2Step15ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step15ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step15ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩
def s2Step15ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step15ExitGExtra : List Wire := [782, 784]
theorem s2Step15ExitG_distinct : (s2Step15ExitGRow.sign::s2Step15ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step15ExitG_owned : (s2Step15ExitGRow.sign::s2Step15ExitGRow.payload).toFinset⊆s2Step15ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step15ExitGBefore (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15ExitG_retired : s2Step15ExitGBefore.retireSet s2Step15ExitGExtra.toFinset=s2Step15ExitGAfter := by
  unfold Arena.retireSet s2Step15ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step15ExitGBefore,s2Step15ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step15ExitG_checked : planRowResizeLog s2Step15ExitGBefore s2Step15ExitGRow 255 []=
    some (s2Step15ExitGAfter,s2Step15ExitGOut,shrinkRow 769 s2Step15ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step15ExitGBefore s2Step15ExitGRow 255 s2Step15ExitG_distinct s2Step15ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step15ExitGRow.payload.take 255) s2Step15ExitGRow.sign=s2Step15ExitGOut := by decide +kernel
  have hi : s2Step15ExitGRow.payload.drop 255=s2Step15ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step15ExitG_retired] at result
  exact result
def s2Step15ExitFBefore : Arena := s2Step15ExitGAfter
def s2Step15ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step15ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩
def s2Step15ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step15ExitFExtra : List Wire := [781]
theorem s2Step15ExitF_distinct : (s2Step15ExitFRow.sign::s2Step15ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step15ExitF_owned : (s2Step15ExitFRow.sign::s2Step15ExitFRow.payload).toFinset⊆s2Step15ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step15ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15ExitF_retired : s2Step15ExitFBefore.retireSet s2Step15ExitFExtra.toFinset=s2Step15ExitFAfter := by
  unfold Arena.retireSet s2Step15ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step15ExitFBefore,s2Step15ExitGAfter,s2Step15ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step15ExitF_checked : planRowResizeLog s2Step15ExitFBefore s2Step15ExitFRow 256 []=
    some (s2Step15ExitFAfter,s2Step15ExitFOut,shrinkRow 768 s2Step15ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step15ExitFBefore s2Step15ExitFRow 256 s2Step15ExitF_distinct s2Step15ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step15ExitFRow.payload.take 256) s2Step15ExitFRow.sign=s2Step15ExitFOut := by decide +kernel
  have hi : s2Step15ExitFRow.payload.drop 256=s2Step15ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step15ExitF_retired] at result
  exact result
def s2Step15ExitFvBefore : Arena := s2Step15ExitFAfter
def s2Step15ExitFvAfter : Arena := s2Step15ExitFAfter
def s2Step15ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817],770⟩
def s2Step15ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817],770⟩
def s2Step15ExitFvExtra : List Wire := []
theorem s2Step15ExitFv_distinct : (s2Step15ExitFvRow.sign::s2Step15ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step15ExitFv_owned : (s2Step15ExitFvRow.sign::s2Step15ExitFvRow.payload).toFinset⊆s2Step15ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step15ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15ExitFv_reserved : s2Step15ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step15ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step15ExitFv_checked : planRowResizeLog s2Step15ExitFvBefore s2Step15ExitFvRow 17 []=
    some (s2Step15ExitFvAfter,s2Step15ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step15ExitFvBefore s2Step15ExitFvAfter s2Step15ExitFvRow 17 []
    s2Step15ExitFv_distinct s2Step15ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step15ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step15ExitFvRow.payload++[]) s2Step15ExitFvRow.sign=s2Step15ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step15ExitGvBefore : Arena := s2Step15ExitFAfter
def s2Step15ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step15ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 780, 816],771⟩
def s2Step15ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811],771⟩
def s2Step15ExitGvExtra : List Wire := [780, 816]
theorem s2Step15ExitGv_distinct : (s2Step15ExitGvRow.sign::s2Step15ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step15ExitGv_owned : (s2Step15ExitGvRow.sign::s2Step15ExitGvRow.payload).toFinset⊆s2Step15ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step15ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15ExitGv_retired : s2Step15ExitGvBefore.retireSet s2Step15ExitGvExtra.toFinset=s2Step15ExitGvAfter := by
  unfold Arena.retireSet s2Step15ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step15ExitGvBefore,s2Step15ExitFAfter,s2Step15ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step15ExitGv_checked : planRowResizeLog s2Step15ExitGvBefore s2Step15ExitGvRow 15 []=
    some (s2Step15ExitGvAfter,s2Step15ExitGvOut,shrinkRow 771 s2Step15ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step15ExitGvBefore s2Step15ExitGvRow 15 s2Step15ExitGv_distinct s2Step15ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step15ExitGvRow.payload.take 15) s2Step15ExitGvRow.sign=s2Step15ExitGvOut := by decide +kernel
  have hi : s2Step15ExitGvRow.payload.drop 15=s2Step15ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step15ExitGv_retired] at result
  exact result

end ECDSAAdd.Arithmetic.Paper935
