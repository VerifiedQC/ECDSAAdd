import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk0

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step16ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step16ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step16ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩
def s2Step16ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step16ExitGExtra : List Wire := [783, 782]
theorem s2Step16ExitG_distinct : (s2Step16ExitGRow.sign::s2Step16ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step16ExitG_owned : (s2Step16ExitGRow.sign::s2Step16ExitGRow.payload).toFinset⊆s2Step16ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step16ExitGBefore (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16ExitG_retired : s2Step16ExitGBefore.retireSet s2Step16ExitGExtra.toFinset=s2Step16ExitGAfter := by
  unfold Arena.retireSet s2Step16ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step16ExitGBefore,s2Step16ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step16ExitG_checked : planRowResizeLog s2Step16ExitGBefore s2Step16ExitGRow 255 []=
    some (s2Step16ExitGAfter,s2Step16ExitGOut,shrinkRow 769 s2Step16ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step16ExitGBefore s2Step16ExitGRow 255 s2Step16ExitG_distinct s2Step16ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step16ExitGRow.payload.take 255) s2Step16ExitGRow.sign=s2Step16ExitGOut := by decide +kernel
  have hi : s2Step16ExitGRow.payload.drop 255=s2Step16ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step16ExitG_retired] at result
  exact result
def s2Step16ExitFBefore : Arena := s2Step16ExitGAfter
def s2Step16ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step16ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩
def s2Step16ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step16ExitFExtra : List Wire := [784]
theorem s2Step16ExitF_distinct : (s2Step16ExitFRow.sign::s2Step16ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step16ExitF_owned : (s2Step16ExitFRow.sign::s2Step16ExitFRow.payload).toFinset⊆s2Step16ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step16ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16ExitF_retired : s2Step16ExitFBefore.retireSet s2Step16ExitFExtra.toFinset=s2Step16ExitFAfter := by
  unfold Arena.retireSet s2Step16ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step16ExitFBefore,s2Step16ExitGAfter,s2Step16ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step16ExitF_checked : planRowResizeLog s2Step16ExitFBefore s2Step16ExitFRow 256 []=
    some (s2Step16ExitFAfter,s2Step16ExitFOut,shrinkRow 768 s2Step16ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step16ExitFBefore s2Step16ExitFRow 256 s2Step16ExitF_distinct s2Step16ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step16ExitFRow.payload.take 256) s2Step16ExitFRow.sign=s2Step16ExitFOut := by decide +kernel
  have hi : s2Step16ExitFRow.payload.drop 256=s2Step16ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step16ExitF_retired] at result
  exact result
def s2Step16ExitFvBefore : Arena := s2Step16ExitFAfter
def s2Step16ExitFvAfter : Arena := s2Step16ExitFAfter
def s2Step16ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820],770⟩
def s2Step16ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820],770⟩
def s2Step16ExitFvExtra : List Wire := []
theorem s2Step16ExitFv_distinct : (s2Step16ExitFvRow.sign::s2Step16ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step16ExitFv_owned : (s2Step16ExitFvRow.sign::s2Step16ExitFvRow.payload).toFinset⊆s2Step16ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step16ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16ExitFv_reserved : s2Step16ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step16ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step16ExitFv_checked : planRowResizeLog s2Step16ExitFvBefore s2Step16ExitFvRow 18 []=
    some (s2Step16ExitFvAfter,s2Step16ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step16ExitFvBefore s2Step16ExitFvAfter s2Step16ExitFvRow 18 []
    s2Step16ExitFv_distinct s2Step16ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step16ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step16ExitFvRow.payload++[]) s2Step16ExitFvRow.sign=s2Step16ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step16ExitGvBefore : Arena := s2Step16ExitFAfter
def s2Step16ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step16ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 780, 819],771⟩
def s2Step16ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814],771⟩
def s2Step16ExitGvExtra : List Wire := [780, 819]
theorem s2Step16ExitGv_distinct : (s2Step16ExitGvRow.sign::s2Step16ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step16ExitGv_owned : (s2Step16ExitGvRow.sign::s2Step16ExitGvRow.payload).toFinset⊆s2Step16ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step16ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16ExitGv_retired : s2Step16ExitGvBefore.retireSet s2Step16ExitGvExtra.toFinset=s2Step16ExitGvAfter := by
  unfold Arena.retireSet s2Step16ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step16ExitGvBefore,s2Step16ExitFAfter,s2Step16ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step16ExitGv_checked : planRowResizeLog s2Step16ExitGvBefore s2Step16ExitGvRow 16 []=
    some (s2Step16ExitGvAfter,s2Step16ExitGvOut,shrinkRow 771 s2Step16ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step16ExitGvBefore s2Step16ExitGvRow 16 s2Step16ExitGv_distinct s2Step16ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step16ExitGvRow.payload.take 16) s2Step16ExitGvRow.sign=s2Step16ExitGvOut := by decide +kernel
  have hi : s2Step16ExitGvRow.payload.drop 16=s2Step16ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step16ExitGv_retired] at result
  exact result
def s2Step17ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step17ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step17ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩
def s2Step17ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step17ExitGExtra : List Wire := [781, 783]
theorem s2Step17ExitG_distinct : (s2Step17ExitGRow.sign::s2Step17ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step17ExitG_owned : (s2Step17ExitGRow.sign::s2Step17ExitGRow.payload).toFinset⊆s2Step17ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step17ExitGBefore (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17ExitG_retired : s2Step17ExitGBefore.retireSet s2Step17ExitGExtra.toFinset=s2Step17ExitGAfter := by
  unfold Arena.retireSet s2Step17ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step17ExitGBefore,s2Step17ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step17ExitG_checked : planRowResizeLog s2Step17ExitGBefore s2Step17ExitGRow 255 []=
    some (s2Step17ExitGAfter,s2Step17ExitGOut,shrinkRow 769 s2Step17ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step17ExitGBefore s2Step17ExitGRow 255 s2Step17ExitG_distinct s2Step17ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step17ExitGRow.payload.take 255) s2Step17ExitGRow.sign=s2Step17ExitGOut := by decide +kernel
  have hi : s2Step17ExitGRow.payload.drop 255=s2Step17ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step17ExitG_retired] at result
  exact result
def s2Step17ExitFBefore : Arena := s2Step17ExitGAfter
def s2Step17ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step17ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩
def s2Step17ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step17ExitFExtra : List Wire := [782]
theorem s2Step17ExitF_distinct : (s2Step17ExitFRow.sign::s2Step17ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step17ExitF_owned : (s2Step17ExitFRow.sign::s2Step17ExitFRow.payload).toFinset⊆s2Step17ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step17ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17ExitF_retired : s2Step17ExitFBefore.retireSet s2Step17ExitFExtra.toFinset=s2Step17ExitFAfter := by
  unfold Arena.retireSet s2Step17ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step17ExitFBefore,s2Step17ExitGAfter,s2Step17ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step17ExitF_checked : planRowResizeLog s2Step17ExitFBefore s2Step17ExitFRow 256 []=
    some (s2Step17ExitFAfter,s2Step17ExitFOut,shrinkRow 768 s2Step17ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step17ExitFBefore s2Step17ExitFRow 256 s2Step17ExitF_distinct s2Step17ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step17ExitFRow.payload.take 256) s2Step17ExitFRow.sign=s2Step17ExitFOut := by decide +kernel
  have hi : s2Step17ExitFRow.payload.drop 256=s2Step17ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step17ExitF_retired] at result
  exact result
def s2Step17ExitFvBefore : Arena := s2Step17ExitFAfter
def s2Step17ExitFvAfter : Arena := s2Step17ExitFAfter
def s2Step17ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822],770⟩
def s2Step17ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822],770⟩
def s2Step17ExitFvExtra : List Wire := []
theorem s2Step17ExitFv_distinct : (s2Step17ExitFvRow.sign::s2Step17ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step17ExitFv_owned : (s2Step17ExitFvRow.sign::s2Step17ExitFvRow.payload).toFinset⊆s2Step17ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step17ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17ExitFv_reserved : s2Step17ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step17ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step17ExitFv_checked : planRowResizeLog s2Step17ExitFvBefore s2Step17ExitFvRow 19 []=
    some (s2Step17ExitFvAfter,s2Step17ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step17ExitFvBefore s2Step17ExitFvAfter s2Step17ExitFvRow 19 []
    s2Step17ExitFv_distinct s2Step17ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step17ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step17ExitFvRow.payload++[]) s2Step17ExitFvRow.sign=s2Step17ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step17ExitGvBefore : Arena := s2Step17ExitFAfter
def s2Step17ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step17ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 780, 821],771⟩
def s2Step17ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816],771⟩
def s2Step17ExitGvExtra : List Wire := [780, 821]
theorem s2Step17ExitGv_distinct : (s2Step17ExitGvRow.sign::s2Step17ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step17ExitGv_owned : (s2Step17ExitGvRow.sign::s2Step17ExitGvRow.payload).toFinset⊆s2Step17ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step17ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17ExitGv_retired : s2Step17ExitGvBefore.retireSet s2Step17ExitGvExtra.toFinset=s2Step17ExitGvAfter := by
  unfold Arena.retireSet s2Step17ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step17ExitGvBefore,s2Step17ExitFAfter,s2Step17ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step17ExitGv_checked : planRowResizeLog s2Step17ExitGvBefore s2Step17ExitGvRow 17 []=
    some (s2Step17ExitGvAfter,s2Step17ExitGvOut,shrinkRow 771 s2Step17ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step17ExitGvBefore s2Step17ExitGvRow 17 s2Step17ExitGv_distinct s2Step17ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step17ExitGvRow.payload.take 17) s2Step17ExitGvRow.sign=s2Step17ExitGvOut := by decide +kernel
  have hi : s2Step17ExitGvRow.payload.drop 17=s2Step17ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step17ExitGv_retired] at result
  exact result
def s2Step18ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step18ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step18ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩
def s2Step18ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step18ExitGExtra : List Wire := [784, 781]
theorem s2Step18ExitG_distinct : (s2Step18ExitGRow.sign::s2Step18ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step18ExitG_owned : (s2Step18ExitGRow.sign::s2Step18ExitGRow.payload).toFinset⊆s2Step18ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step18ExitGBefore (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18ExitG_retired : s2Step18ExitGBefore.retireSet s2Step18ExitGExtra.toFinset=s2Step18ExitGAfter := by
  unfold Arena.retireSet s2Step18ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step18ExitGBefore,s2Step18ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step18ExitG_checked : planRowResizeLog s2Step18ExitGBefore s2Step18ExitGRow 255 []=
    some (s2Step18ExitGAfter,s2Step18ExitGOut,shrinkRow 769 s2Step18ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step18ExitGBefore s2Step18ExitGRow 255 s2Step18ExitG_distinct s2Step18ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step18ExitGRow.payload.take 255) s2Step18ExitGRow.sign=s2Step18ExitGOut := by decide +kernel
  have hi : s2Step18ExitGRow.payload.drop 255=s2Step18ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step18ExitG_retired] at result
  exact result
def s2Step18ExitFBefore : Arena := s2Step18ExitGAfter
def s2Step18ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step18ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩
def s2Step18ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step18ExitFExtra : List Wire := [783]
theorem s2Step18ExitF_distinct : (s2Step18ExitFRow.sign::s2Step18ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step18ExitF_owned : (s2Step18ExitFRow.sign::s2Step18ExitFRow.payload).toFinset⊆s2Step18ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step18ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18ExitF_retired : s2Step18ExitFBefore.retireSet s2Step18ExitFExtra.toFinset=s2Step18ExitFAfter := by
  unfold Arena.retireSet s2Step18ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step18ExitFBefore,s2Step18ExitGAfter,s2Step18ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step18ExitF_checked : planRowResizeLog s2Step18ExitFBefore s2Step18ExitFRow 256 []=
    some (s2Step18ExitFAfter,s2Step18ExitFOut,shrinkRow 768 s2Step18ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step18ExitFBefore s2Step18ExitFRow 256 s2Step18ExitF_distinct s2Step18ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step18ExitFRow.payload.take 256) s2Step18ExitFRow.sign=s2Step18ExitFOut := by decide +kernel
  have hi : s2Step18ExitFRow.payload.drop 256=s2Step18ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step18ExitF_retired] at result
  exact result
def s2Step18ExitFvBefore : Arena := s2Step18ExitFAfter
def s2Step18ExitFvAfter : Arena := s2Step18ExitFAfter
def s2Step18ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825],770⟩
def s2Step18ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825],770⟩
def s2Step18ExitFvExtra : List Wire := []
theorem s2Step18ExitFv_distinct : (s2Step18ExitFvRow.sign::s2Step18ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step18ExitFv_owned : (s2Step18ExitFvRow.sign::s2Step18ExitFvRow.payload).toFinset⊆s2Step18ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step18ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18ExitFv_reserved : s2Step18ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step18ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step18ExitFv_checked : planRowResizeLog s2Step18ExitFvBefore s2Step18ExitFvRow 20 []=
    some (s2Step18ExitFvAfter,s2Step18ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step18ExitFvBefore s2Step18ExitFvAfter s2Step18ExitFvRow 20 []
    s2Step18ExitFv_distinct s2Step18ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step18ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step18ExitFvRow.payload++[]) s2Step18ExitFvRow.sign=s2Step18ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step18ExitGvBefore : Arena := s2Step18ExitFAfter
def s2Step18ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step18ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 780, 824],771⟩
def s2Step18ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819],771⟩
def s2Step18ExitGvExtra : List Wire := [780, 824]
theorem s2Step18ExitGv_distinct : (s2Step18ExitGvRow.sign::s2Step18ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step18ExitGv_owned : (s2Step18ExitGvRow.sign::s2Step18ExitGvRow.payload).toFinset⊆s2Step18ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step18ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18ExitGv_retired : s2Step18ExitGvBefore.retireSet s2Step18ExitGvExtra.toFinset=s2Step18ExitGvAfter := by
  unfold Arena.retireSet s2Step18ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step18ExitGvBefore,s2Step18ExitFAfter,s2Step18ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step18ExitGv_checked : planRowResizeLog s2Step18ExitGvBefore s2Step18ExitGvRow 18 []=
    some (s2Step18ExitGvAfter,s2Step18ExitGvOut,shrinkRow 771 s2Step18ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step18ExitGvBefore s2Step18ExitGvRow 18 s2Step18ExitGv_distinct s2Step18ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step18ExitGvRow.payload.take 18) s2Step18ExitGvRow.sign=s2Step18ExitGvOut := by decide +kernel
  have hi : s2Step18ExitGvRow.payload.drop 18=s2Step18ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step18ExitGv_retired] at result
  exact result
def s2Step19ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step19ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step19ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩
def s2Step19ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step19ExitGExtra : List Wire := [782, 784]
theorem s2Step19ExitG_distinct : (s2Step19ExitGRow.sign::s2Step19ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step19ExitG_owned : (s2Step19ExitGRow.sign::s2Step19ExitGRow.payload).toFinset⊆s2Step19ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step19ExitGBefore (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19ExitG_retired : s2Step19ExitGBefore.retireSet s2Step19ExitGExtra.toFinset=s2Step19ExitGAfter := by
  unfold Arena.retireSet s2Step19ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step19ExitGBefore,s2Step19ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step19ExitG_checked : planRowResizeLog s2Step19ExitGBefore s2Step19ExitGRow 255 []=
    some (s2Step19ExitGAfter,s2Step19ExitGOut,shrinkRow 769 s2Step19ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step19ExitGBefore s2Step19ExitGRow 255 s2Step19ExitG_distinct s2Step19ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step19ExitGRow.payload.take 255) s2Step19ExitGRow.sign=s2Step19ExitGOut := by decide +kernel
  have hi : s2Step19ExitGRow.payload.drop 255=s2Step19ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step19ExitG_retired] at result
  exact result
def s2Step19ExitFBefore : Arena := s2Step19ExitGAfter
def s2Step19ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step19ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩
def s2Step19ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step19ExitFExtra : List Wire := [781]
theorem s2Step19ExitF_distinct : (s2Step19ExitFRow.sign::s2Step19ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step19ExitF_owned : (s2Step19ExitFRow.sign::s2Step19ExitFRow.payload).toFinset⊆s2Step19ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step19ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19ExitF_retired : s2Step19ExitFBefore.retireSet s2Step19ExitFExtra.toFinset=s2Step19ExitFAfter := by
  unfold Arena.retireSet s2Step19ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step19ExitFBefore,s2Step19ExitGAfter,s2Step19ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step19ExitF_checked : planRowResizeLog s2Step19ExitFBefore s2Step19ExitFRow 256 []=
    some (s2Step19ExitFAfter,s2Step19ExitFOut,shrinkRow 768 s2Step19ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step19ExitFBefore s2Step19ExitFRow 256 s2Step19ExitF_distinct s2Step19ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step19ExitFRow.payload.take 256) s2Step19ExitFRow.sign=s2Step19ExitFOut := by decide +kernel
  have hi : s2Step19ExitFRow.payload.drop 256=s2Step19ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step19ExitF_retired] at result
  exact result
def s2Step19ExitFvBefore : Arena := s2Step19ExitFAfter
def s2Step19ExitFvAfter : Arena := s2Step19ExitFAfter
def s2Step19ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827],770⟩
def s2Step19ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827],770⟩
def s2Step19ExitFvExtra : List Wire := []
theorem s2Step19ExitFv_distinct : (s2Step19ExitFvRow.sign::s2Step19ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step19ExitFv_owned : (s2Step19ExitFvRow.sign::s2Step19ExitFvRow.payload).toFinset⊆s2Step19ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step19ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19ExitFv_reserved : s2Step19ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step19ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step19ExitFv_checked : planRowResizeLog s2Step19ExitFvBefore s2Step19ExitFvRow 21 []=
    some (s2Step19ExitFvAfter,s2Step19ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step19ExitFvBefore s2Step19ExitFvAfter s2Step19ExitFvRow 21 []
    s2Step19ExitFv_distinct s2Step19ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step19ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step19ExitFvRow.payload++[]) s2Step19ExitFvRow.sign=s2Step19ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step19ExitGvBefore : Arena := s2Step19ExitFAfter
def s2Step19ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step19ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 780, 826],771⟩
def s2Step19ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821],771⟩
def s2Step19ExitGvExtra : List Wire := [780, 826]
theorem s2Step19ExitGv_distinct : (s2Step19ExitGvRow.sign::s2Step19ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step19ExitGv_owned : (s2Step19ExitGvRow.sign::s2Step19ExitGvRow.payload).toFinset⊆s2Step19ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step19ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19ExitGv_retired : s2Step19ExitGvBefore.retireSet s2Step19ExitGvExtra.toFinset=s2Step19ExitGvAfter := by
  unfold Arena.retireSet s2Step19ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step19ExitGvBefore,s2Step19ExitFAfter,s2Step19ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step19ExitGv_checked : planRowResizeLog s2Step19ExitGvBefore s2Step19ExitGvRow 19 []=
    some (s2Step19ExitGvAfter,s2Step19ExitGvOut,shrinkRow 771 s2Step19ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step19ExitGvBefore s2Step19ExitGvRow 19 s2Step19ExitGv_distinct s2Step19ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step19ExitGvRow.payload.take 19) s2Step19ExitGvRow.sign=s2Step19ExitGvOut := by decide +kernel
  have hi : s2Step19ExitGvRow.payload.drop 19=s2Step19ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step19ExitGv_retired] at result
  exact result
def s2Step20ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step20ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step20ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩
def s2Step20ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step20ExitGExtra : List Wire := [783, 782]
theorem s2Step20ExitG_distinct : (s2Step20ExitGRow.sign::s2Step20ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step20ExitG_owned : (s2Step20ExitGRow.sign::s2Step20ExitGRow.payload).toFinset⊆s2Step20ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step20ExitGBefore (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20ExitG_retired : s2Step20ExitGBefore.retireSet s2Step20ExitGExtra.toFinset=s2Step20ExitGAfter := by
  unfold Arena.retireSet s2Step20ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step20ExitGBefore,s2Step20ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step20ExitG_checked : planRowResizeLog s2Step20ExitGBefore s2Step20ExitGRow 255 []=
    some (s2Step20ExitGAfter,s2Step20ExitGOut,shrinkRow 769 s2Step20ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step20ExitGBefore s2Step20ExitGRow 255 s2Step20ExitG_distinct s2Step20ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step20ExitGRow.payload.take 255) s2Step20ExitGRow.sign=s2Step20ExitGOut := by decide +kernel
  have hi : s2Step20ExitGRow.payload.drop 255=s2Step20ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step20ExitG_retired] at result
  exact result
def s2Step20ExitFBefore : Arena := s2Step20ExitGAfter
def s2Step20ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step20ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩
def s2Step20ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step20ExitFExtra : List Wire := [784]
theorem s2Step20ExitF_distinct : (s2Step20ExitFRow.sign::s2Step20ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step20ExitF_owned : (s2Step20ExitFRow.sign::s2Step20ExitFRow.payload).toFinset⊆s2Step20ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step20ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20ExitF_retired : s2Step20ExitFBefore.retireSet s2Step20ExitFExtra.toFinset=s2Step20ExitFAfter := by
  unfold Arena.retireSet s2Step20ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step20ExitFBefore,s2Step20ExitGAfter,s2Step20ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step20ExitF_checked : planRowResizeLog s2Step20ExitFBefore s2Step20ExitFRow 256 []=
    some (s2Step20ExitFAfter,s2Step20ExitFOut,shrinkRow 768 s2Step20ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step20ExitFBefore s2Step20ExitFRow 256 s2Step20ExitF_distinct s2Step20ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step20ExitFRow.payload.take 256) s2Step20ExitFRow.sign=s2Step20ExitFOut := by decide +kernel
  have hi : s2Step20ExitFRow.payload.drop 256=s2Step20ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step20ExitF_retired] at result
  exact result
def s2Step20ExitFvBefore : Arena := s2Step20ExitFAfter
def s2Step20ExitFvAfter : Arena := s2Step20ExitFAfter
def s2Step20ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830],770⟩
def s2Step20ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830],770⟩
def s2Step20ExitFvExtra : List Wire := []
theorem s2Step20ExitFv_distinct : (s2Step20ExitFvRow.sign::s2Step20ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step20ExitFv_owned : (s2Step20ExitFvRow.sign::s2Step20ExitFvRow.payload).toFinset⊆s2Step20ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step20ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20ExitFv_reserved : s2Step20ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step20ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step20ExitFv_checked : planRowResizeLog s2Step20ExitFvBefore s2Step20ExitFvRow 22 []=
    some (s2Step20ExitFvAfter,s2Step20ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step20ExitFvBefore s2Step20ExitFvAfter s2Step20ExitFvRow 22 []
    s2Step20ExitFv_distinct s2Step20ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step20ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step20ExitFvRow.payload++[]) s2Step20ExitFvRow.sign=s2Step20ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step20ExitGvBefore : Arena := s2Step20ExitFAfter
def s2Step20ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step20ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 780, 829],771⟩
def s2Step20ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824],771⟩
def s2Step20ExitGvExtra : List Wire := [780, 829]
theorem s2Step20ExitGv_distinct : (s2Step20ExitGvRow.sign::s2Step20ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step20ExitGv_owned : (s2Step20ExitGvRow.sign::s2Step20ExitGvRow.payload).toFinset⊆s2Step20ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step20ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20ExitGv_retired : s2Step20ExitGvBefore.retireSet s2Step20ExitGvExtra.toFinset=s2Step20ExitGvAfter := by
  unfold Arena.retireSet s2Step20ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step20ExitGvBefore,s2Step20ExitFAfter,s2Step20ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step20ExitGv_checked : planRowResizeLog s2Step20ExitGvBefore s2Step20ExitGvRow 20 []=
    some (s2Step20ExitGvAfter,s2Step20ExitGvOut,shrinkRow 771 s2Step20ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step20ExitGvBefore s2Step20ExitGvRow 20 s2Step20ExitGv_distinct s2Step20ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step20ExitGvRow.payload.take 20) s2Step20ExitGvRow.sign=s2Step20ExitGvOut := by decide +kernel
  have hi : s2Step20ExitGvRow.payload.drop 20=s2Step20ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step20ExitGv_retired] at result
  exact result
def s2Step21ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step21ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step21ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩
def s2Step21ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step21ExitGExtra : List Wire := [781, 783]
theorem s2Step21ExitG_distinct : (s2Step21ExitGRow.sign::s2Step21ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step21ExitG_owned : (s2Step21ExitGRow.sign::s2Step21ExitGRow.payload).toFinset⊆s2Step21ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step21ExitGBefore (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21ExitG_retired : s2Step21ExitGBefore.retireSet s2Step21ExitGExtra.toFinset=s2Step21ExitGAfter := by
  unfold Arena.retireSet s2Step21ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step21ExitGBefore,s2Step21ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step21ExitG_checked : planRowResizeLog s2Step21ExitGBefore s2Step21ExitGRow 255 []=
    some (s2Step21ExitGAfter,s2Step21ExitGOut,shrinkRow 769 s2Step21ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step21ExitGBefore s2Step21ExitGRow 255 s2Step21ExitG_distinct s2Step21ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step21ExitGRow.payload.take 255) s2Step21ExitGRow.sign=s2Step21ExitGOut := by decide +kernel
  have hi : s2Step21ExitGRow.payload.drop 255=s2Step21ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step21ExitG_retired] at result
  exact result
def s2Step21ExitFBefore : Arena := s2Step21ExitGAfter
def s2Step21ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step21ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩
def s2Step21ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step21ExitFExtra : List Wire := [782]
theorem s2Step21ExitF_distinct : (s2Step21ExitFRow.sign::s2Step21ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step21ExitF_owned : (s2Step21ExitFRow.sign::s2Step21ExitFRow.payload).toFinset⊆s2Step21ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step21ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21ExitF_retired : s2Step21ExitFBefore.retireSet s2Step21ExitFExtra.toFinset=s2Step21ExitFAfter := by
  unfold Arena.retireSet s2Step21ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step21ExitFBefore,s2Step21ExitGAfter,s2Step21ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step21ExitF_checked : planRowResizeLog s2Step21ExitFBefore s2Step21ExitFRow 256 []=
    some (s2Step21ExitFAfter,s2Step21ExitFOut,shrinkRow 768 s2Step21ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step21ExitFBefore s2Step21ExitFRow 256 s2Step21ExitF_distinct s2Step21ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step21ExitFRow.payload.take 256) s2Step21ExitFRow.sign=s2Step21ExitFOut := by decide +kernel
  have hi : s2Step21ExitFRow.payload.drop 256=s2Step21ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step21ExitF_retired] at result
  exact result
def s2Step21ExitFvBefore : Arena := s2Step21ExitFAfter
def s2Step21ExitFvAfter : Arena := s2Step21ExitFAfter
def s2Step21ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832],770⟩
def s2Step21ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832],770⟩
def s2Step21ExitFvExtra : List Wire := []
theorem s2Step21ExitFv_distinct : (s2Step21ExitFvRow.sign::s2Step21ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step21ExitFv_owned : (s2Step21ExitFvRow.sign::s2Step21ExitFvRow.payload).toFinset⊆s2Step21ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step21ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21ExitFv_reserved : s2Step21ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step21ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step21ExitFv_checked : planRowResizeLog s2Step21ExitFvBefore s2Step21ExitFvRow 23 []=
    some (s2Step21ExitFvAfter,s2Step21ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step21ExitFvBefore s2Step21ExitFvAfter s2Step21ExitFvRow 23 []
    s2Step21ExitFv_distinct s2Step21ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step21ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step21ExitFvRow.payload++[]) s2Step21ExitFvRow.sign=s2Step21ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step21ExitGvBefore : Arena := s2Step21ExitFAfter
def s2Step21ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step21ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 780, 831],771⟩
def s2Step21ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826],771⟩
def s2Step21ExitGvExtra : List Wire := [780, 831]
theorem s2Step21ExitGv_distinct : (s2Step21ExitGvRow.sign::s2Step21ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step21ExitGv_owned : (s2Step21ExitGvRow.sign::s2Step21ExitGvRow.payload).toFinset⊆s2Step21ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step21ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21ExitGv_retired : s2Step21ExitGvBefore.retireSet s2Step21ExitGvExtra.toFinset=s2Step21ExitGvAfter := by
  unfold Arena.retireSet s2Step21ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step21ExitGvBefore,s2Step21ExitFAfter,s2Step21ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step21ExitGv_checked : planRowResizeLog s2Step21ExitGvBefore s2Step21ExitGvRow 21 []=
    some (s2Step21ExitGvAfter,s2Step21ExitGvOut,shrinkRow 771 s2Step21ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step21ExitGvBefore s2Step21ExitGvRow 21 s2Step21ExitGv_distinct s2Step21ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step21ExitGvRow.payload.take 21) s2Step21ExitGvRow.sign=s2Step21ExitGvOut := by decide +kernel
  have hi : s2Step21ExitGvRow.payload.drop 21=s2Step21ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step21ExitGv_retired] at result
  exact result
def s2Step22ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step22ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step22ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩
def s2Step22ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step22ExitGExtra : List Wire := [784, 781]
theorem s2Step22ExitG_distinct : (s2Step22ExitGRow.sign::s2Step22ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step22ExitG_owned : (s2Step22ExitGRow.sign::s2Step22ExitGRow.payload).toFinset⊆s2Step22ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step22ExitGBefore (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22ExitG_retired : s2Step22ExitGBefore.retireSet s2Step22ExitGExtra.toFinset=s2Step22ExitGAfter := by
  unfold Arena.retireSet s2Step22ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step22ExitGBefore,s2Step22ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step22ExitG_checked : planRowResizeLog s2Step22ExitGBefore s2Step22ExitGRow 255 []=
    some (s2Step22ExitGAfter,s2Step22ExitGOut,shrinkRow 769 s2Step22ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step22ExitGBefore s2Step22ExitGRow 255 s2Step22ExitG_distinct s2Step22ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step22ExitGRow.payload.take 255) s2Step22ExitGRow.sign=s2Step22ExitGOut := by decide +kernel
  have hi : s2Step22ExitGRow.payload.drop 255=s2Step22ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step22ExitG_retired] at result
  exact result
def s2Step22ExitFBefore : Arena := s2Step22ExitGAfter
def s2Step22ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step22ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩
def s2Step22ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step22ExitFExtra : List Wire := [783]
theorem s2Step22ExitF_distinct : (s2Step22ExitFRow.sign::s2Step22ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step22ExitF_owned : (s2Step22ExitFRow.sign::s2Step22ExitFRow.payload).toFinset⊆s2Step22ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step22ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22ExitF_retired : s2Step22ExitFBefore.retireSet s2Step22ExitFExtra.toFinset=s2Step22ExitFAfter := by
  unfold Arena.retireSet s2Step22ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step22ExitFBefore,s2Step22ExitGAfter,s2Step22ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step22ExitF_checked : planRowResizeLog s2Step22ExitFBefore s2Step22ExitFRow 256 []=
    some (s2Step22ExitFAfter,s2Step22ExitFOut,shrinkRow 768 s2Step22ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step22ExitFBefore s2Step22ExitFRow 256 s2Step22ExitF_distinct s2Step22ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step22ExitFRow.payload.take 256) s2Step22ExitFRow.sign=s2Step22ExitFOut := by decide +kernel
  have hi : s2Step22ExitFRow.payload.drop 256=s2Step22ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step22ExitF_retired] at result
  exact result
def s2Step22ExitFvBefore : Arena := s2Step22ExitFAfter
def s2Step22ExitFvAfter : Arena := s2Step22ExitFAfter
def s2Step22ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835],770⟩
def s2Step22ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835],770⟩
def s2Step22ExitFvExtra : List Wire := []
theorem s2Step22ExitFv_distinct : (s2Step22ExitFvRow.sign::s2Step22ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step22ExitFv_owned : (s2Step22ExitFvRow.sign::s2Step22ExitFvRow.payload).toFinset⊆s2Step22ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step22ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22ExitFv_reserved : s2Step22ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step22ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step22ExitFv_checked : planRowResizeLog s2Step22ExitFvBefore s2Step22ExitFvRow 24 []=
    some (s2Step22ExitFvAfter,s2Step22ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step22ExitFvBefore s2Step22ExitFvAfter s2Step22ExitFvRow 24 []
    s2Step22ExitFv_distinct s2Step22ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step22ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step22ExitFvRow.payload++[]) s2Step22ExitFvRow.sign=s2Step22ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step22ExitGvBefore : Arena := s2Step22ExitFAfter
def s2Step22ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step22ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 780, 834],771⟩
def s2Step22ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829],771⟩
def s2Step22ExitGvExtra : List Wire := [780, 834]
theorem s2Step22ExitGv_distinct : (s2Step22ExitGvRow.sign::s2Step22ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step22ExitGv_owned : (s2Step22ExitGvRow.sign::s2Step22ExitGvRow.payload).toFinset⊆s2Step22ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step22ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22ExitGv_retired : s2Step22ExitGvBefore.retireSet s2Step22ExitGvExtra.toFinset=s2Step22ExitGvAfter := by
  unfold Arena.retireSet s2Step22ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step22ExitGvBefore,s2Step22ExitFAfter,s2Step22ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step22ExitGv_checked : planRowResizeLog s2Step22ExitGvBefore s2Step22ExitGvRow 22 []=
    some (s2Step22ExitGvAfter,s2Step22ExitGvOut,shrinkRow 771 s2Step22ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step22ExitGvBefore s2Step22ExitGvRow 22 s2Step22ExitGv_distinct s2Step22ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step22ExitGvRow.payload.take 22) s2Step22ExitGvRow.sign=s2Step22ExitGvOut := by decide +kernel
  have hi : s2Step22ExitGvRow.payload.drop 22=s2Step22ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step22ExitGv_retired] at result
  exact result
def s2Step23ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step23ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step23ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩
def s2Step23ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step23ExitGExtra : List Wire := [782, 784]
theorem s2Step23ExitG_distinct : (s2Step23ExitGRow.sign::s2Step23ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step23ExitG_owned : (s2Step23ExitGRow.sign::s2Step23ExitGRow.payload).toFinset⊆s2Step23ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step23ExitGBefore (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23ExitG_retired : s2Step23ExitGBefore.retireSet s2Step23ExitGExtra.toFinset=s2Step23ExitGAfter := by
  unfold Arena.retireSet s2Step23ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step23ExitGBefore,s2Step23ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step23ExitG_checked : planRowResizeLog s2Step23ExitGBefore s2Step23ExitGRow 255 []=
    some (s2Step23ExitGAfter,s2Step23ExitGOut,shrinkRow 769 s2Step23ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step23ExitGBefore s2Step23ExitGRow 255 s2Step23ExitG_distinct s2Step23ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step23ExitGRow.payload.take 255) s2Step23ExitGRow.sign=s2Step23ExitGOut := by decide +kernel
  have hi : s2Step23ExitGRow.payload.drop 255=s2Step23ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step23ExitG_retired] at result
  exact result
def s2Step23ExitFBefore : Arena := s2Step23ExitGAfter
def s2Step23ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step23ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩
def s2Step23ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step23ExitFExtra : List Wire := [781]
theorem s2Step23ExitF_distinct : (s2Step23ExitFRow.sign::s2Step23ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step23ExitF_owned : (s2Step23ExitFRow.sign::s2Step23ExitFRow.payload).toFinset⊆s2Step23ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step23ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23ExitF_retired : s2Step23ExitFBefore.retireSet s2Step23ExitFExtra.toFinset=s2Step23ExitFAfter := by
  unfold Arena.retireSet s2Step23ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step23ExitFBefore,s2Step23ExitGAfter,s2Step23ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step23ExitF_checked : planRowResizeLog s2Step23ExitFBefore s2Step23ExitFRow 256 []=
    some (s2Step23ExitFAfter,s2Step23ExitFOut,shrinkRow 768 s2Step23ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step23ExitFBefore s2Step23ExitFRow 256 s2Step23ExitF_distinct s2Step23ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step23ExitFRow.payload.take 256) s2Step23ExitFRow.sign=s2Step23ExitFOut := by decide +kernel
  have hi : s2Step23ExitFRow.payload.drop 256=s2Step23ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step23ExitF_retired] at result
  exact result
def s2Step23ExitFvBefore : Arena := s2Step23ExitFAfter
def s2Step23ExitFvAfter : Arena := s2Step23ExitFAfter
def s2Step23ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837],770⟩
def s2Step23ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837],770⟩
def s2Step23ExitFvExtra : List Wire := []
theorem s2Step23ExitFv_distinct : (s2Step23ExitFvRow.sign::s2Step23ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step23ExitFv_owned : (s2Step23ExitFvRow.sign::s2Step23ExitFvRow.payload).toFinset⊆s2Step23ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step23ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23ExitFv_reserved : s2Step23ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step23ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step23ExitFv_checked : planRowResizeLog s2Step23ExitFvBefore s2Step23ExitFvRow 25 []=
    some (s2Step23ExitFvAfter,s2Step23ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step23ExitFvBefore s2Step23ExitFvAfter s2Step23ExitFvRow 25 []
    s2Step23ExitFv_distinct s2Step23ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step23ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step23ExitFvRow.payload++[]) s2Step23ExitFvRow.sign=s2Step23ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step23ExitGvBefore : Arena := s2Step23ExitFAfter
def s2Step23ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step23ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 780, 836],771⟩
def s2Step23ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831],771⟩
def s2Step23ExitGvExtra : List Wire := [780, 836]
theorem s2Step23ExitGv_distinct : (s2Step23ExitGvRow.sign::s2Step23ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step23ExitGv_owned : (s2Step23ExitGvRow.sign::s2Step23ExitGvRow.payload).toFinset⊆s2Step23ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step23ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23ExitGv_retired : s2Step23ExitGvBefore.retireSet s2Step23ExitGvExtra.toFinset=s2Step23ExitGvAfter := by
  unfold Arena.retireSet s2Step23ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step23ExitGvBefore,s2Step23ExitFAfter,s2Step23ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step23ExitGv_checked : planRowResizeLog s2Step23ExitGvBefore s2Step23ExitGvRow 23 []=
    some (s2Step23ExitGvAfter,s2Step23ExitGvOut,shrinkRow 771 s2Step23ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step23ExitGvBefore s2Step23ExitGvRow 23 s2Step23ExitGv_distinct s2Step23ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step23ExitGvRow.payload.take 23) s2Step23ExitGvRow.sign=s2Step23ExitGvOut := by decide +kernel
  have hi : s2Step23ExitGvRow.payload.drop 23=s2Step23ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step23ExitGv_retired] at result
  exact result
def s2Step24ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step24ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<254) ∨ (255≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step24ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩
def s2Step24ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253],769⟩
def s2Step24ExitGExtra : List Wire := [254, 783, 782]
theorem s2Step24ExitG_distinct : (s2Step24ExitGRow.sign::s2Step24ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step24ExitG_owned : (s2Step24ExitGRow.sign::s2Step24ExitGRow.payload).toFinset⊆s2Step24ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step24ExitGBefore (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24ExitG_retired : s2Step24ExitGBefore.retireSet s2Step24ExitGExtra.toFinset=s2Step24ExitGAfter := by
  unfold Arena.retireSet s2Step24ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step24ExitGBefore,s2Step24ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step24ExitG_checked : planRowResizeLog s2Step24ExitGBefore s2Step24ExitGRow 254 []=
    some (s2Step24ExitGAfter,s2Step24ExitGOut,shrinkRow 769 s2Step24ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step24ExitGBefore s2Step24ExitGRow 254 s2Step24ExitG_distinct s2Step24ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step24ExitGRow.payload.take 254) s2Step24ExitGRow.sign=s2Step24ExitGOut := by decide +kernel
  have hi : s2Step24ExitGRow.payload.drop 254=s2Step24ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step24ExitG_retired] at result
  exact result
def s2Step24ExitFBefore : Arena := s2Step24ExitGAfter
def s2Step24ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<254) ∨ (255≤q ∧ q<767) ∨ (768≤q ∧ q<782) ∨ (785≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step24ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩
def s2Step24ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766],768⟩
def s2Step24ExitFExtra : List Wire := [767, 784]
theorem s2Step24ExitF_distinct : (s2Step24ExitFRow.sign::s2Step24ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step24ExitF_owned : (s2Step24ExitFRow.sign::s2Step24ExitFRow.payload).toFinset⊆s2Step24ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step24ExitFBefore (fun q => (0≤q ∧ q<254) ∨ (255≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24ExitF_retired : s2Step24ExitFBefore.retireSet s2Step24ExitFExtra.toFinset=s2Step24ExitFAfter := by
  unfold Arena.retireSet s2Step24ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step24ExitFBefore,s2Step24ExitGAfter,s2Step24ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step24ExitF_checked : planRowResizeLog s2Step24ExitFBefore s2Step24ExitFRow 255 []=
    some (s2Step24ExitFAfter,s2Step24ExitFOut,shrinkRow 768 s2Step24ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step24ExitFBefore s2Step24ExitFRow 255 s2Step24ExitF_distinct s2Step24ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step24ExitFRow.payload.take 255) s2Step24ExitFRow.sign=s2Step24ExitFOut := by decide +kernel
  have hi : s2Step24ExitFRow.payload.drop 255=s2Step24ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step24ExitF_retired] at result
  exact result
def s2Step24ExitFvBefore : Arena := s2Step24ExitFAfter
def s2Step24ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<254) ∨ (255≤q ∧ q<767) ∨ (768≤q ∧ q<782) ∨ (785≤q ∧ q<840) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step24ExitFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 840],770⟩
def s2Step24ExitFvOut : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837],770⟩
def s2Step24ExitFvExtra : List Wire := [840]
theorem s2Step24ExitFv_distinct : (s2Step24ExitFvRow.sign::s2Step24ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step24ExitFv_owned : (s2Step24ExitFvRow.sign::s2Step24ExitFvRow.payload).toFinset⊆s2Step24ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step24ExitFvBefore (fun q => (0≤q ∧ q<254) ∨ (255≤q ∧ q<767) ∨ (768≤q ∧ q<782) ∨ (785≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24ExitFv_retired : s2Step24ExitFvBefore.retireSet s2Step24ExitFvExtra.toFinset=s2Step24ExitFvAfter := by
  unfold Arena.retireSet s2Step24ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step24ExitFvBefore,s2Step24ExitFAfter,s2Step24ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step24ExitFv_checked : planRowResizeLog s2Step24ExitFvBefore s2Step24ExitFvRow 25 []=
    some (s2Step24ExitFvAfter,s2Step24ExitFvOut,shrinkRow 770 s2Step24ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step24ExitFvBefore s2Step24ExitFvRow 25 s2Step24ExitFv_distinct s2Step24ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step24ExitFvRow.payload.take 25) s2Step24ExitFvRow.sign=s2Step24ExitFvOut := by decide +kernel
  have hi : s2Step24ExitFvRow.payload.drop 25=s2Step24ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step24ExitFv_retired] at result
  exact result
def s2Step24ExitGvBefore : Arena := s2Step24ExitFvAfter
def s2Step24ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<254) ∨ (255≤q ∧ q<767) ∨ (768≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step24ExitGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 780, 839],771⟩
def s2Step24ExitGvOut : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834],771⟩
def s2Step24ExitGvExtra : List Wire := [780, 839]
theorem s2Step24ExitGv_distinct : (s2Step24ExitGvRow.sign::s2Step24ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step24ExitGv_owned : (s2Step24ExitGvRow.sign::s2Step24ExitGvRow.payload).toFinset⊆s2Step24ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step24ExitGvBefore (fun q => (0≤q ∧ q<254) ∨ (255≤q ∧ q<767) ∨ (768≤q ∧ q<782) ∨ (785≤q ∧ q<840) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24ExitGv_retired : s2Step24ExitGvBefore.retireSet s2Step24ExitGvExtra.toFinset=s2Step24ExitGvAfter := by
  unfold Arena.retireSet s2Step24ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step24ExitGvBefore,s2Step24ExitFvAfter,s2Step24ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step24ExitGv_checked : planRowResizeLog s2Step24ExitGvBefore s2Step24ExitGvRow 24 []=
    some (s2Step24ExitGvAfter,s2Step24ExitGvOut,shrinkRow 771 s2Step24ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step24ExitGvBefore s2Step24ExitGvRow 24 s2Step24ExitGv_distinct s2Step24ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step24ExitGvRow.payload.take 24) s2Step24ExitGvRow.sign=s2Step24ExitGvOut := by decide +kernel
  have hi : s2Step24ExitGvRow.payload.drop 24=s2Step24ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step24ExitGv_retired] at result
  exact result
def s2Step25ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step25ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step25ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 781, 780],769⟩
def s2Step25ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253],769⟩
def s2Step25ExitGExtra : List Wire := [781, 780]
theorem s2Step25ExitG_distinct : (s2Step25ExitGRow.sign::s2Step25ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step25ExitG_owned : (s2Step25ExitGRow.sign::s2Step25ExitGRow.payload).toFinset⊆s2Step25ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step25ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25ExitG_retired : s2Step25ExitGBefore.retireSet s2Step25ExitGExtra.toFinset=s2Step25ExitGAfter := by
  unfold Arena.retireSet s2Step25ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step25ExitGBefore,s2Step25ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step25ExitG_checked : planRowResizeLog s2Step25ExitGBefore s2Step25ExitGRow 254 []=
    some (s2Step25ExitGAfter,s2Step25ExitGOut,shrinkRow 769 s2Step25ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step25ExitGBefore s2Step25ExitGRow 254 s2Step25ExitG_distinct s2Step25ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step25ExitGRow.payload.take 254) s2Step25ExitGRow.sign=s2Step25ExitGOut := by decide +kernel
  have hi : s2Step25ExitGRow.payload.drop 254=s2Step25ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step25ExitG_retired] at result
  exact result
def s2Step25ExitFBefore : Arena := s2Step25ExitGAfter
def s2Step25ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step25ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 839],768⟩
def s2Step25ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766],768⟩
def s2Step25ExitFExtra : List Wire := [839]
theorem s2Step25ExitF_distinct : (s2Step25ExitFRow.sign::s2Step25ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step25ExitF_owned : (s2Step25ExitFRow.sign::s2Step25ExitFRow.payload).toFinset⊆s2Step25ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step25ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25ExitF_retired : s2Step25ExitFBefore.retireSet s2Step25ExitFExtra.toFinset=s2Step25ExitFAfter := by
  unfold Arena.retireSet s2Step25ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step25ExitFBefore,s2Step25ExitGAfter,s2Step25ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step25ExitF_checked : planRowResizeLog s2Step25ExitFBefore s2Step25ExitFRow 255 []=
    some (s2Step25ExitFAfter,s2Step25ExitFOut,shrinkRow 768 s2Step25ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step25ExitFBefore s2Step25ExitFRow 255 s2Step25ExitF_distinct s2Step25ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step25ExitFRow.payload.take 255) s2Step25ExitFRow.sign=s2Step25ExitFOut := by decide +kernel
  have hi : s2Step25ExitFRow.payload.drop 255=s2Step25ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step25ExitF_retired] at result
  exact result
def s2Step25ExitFvBefore : Arena := s2Step25ExitFAfter
def s2Step25ExitFvAfter : Arena := s2Step25ExitFAfter
def s2Step25ExitFvRow : WindowRow := ⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784],770⟩
def s2Step25ExitFvOut : WindowRow := ⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784],770⟩
def s2Step25ExitFvExtra : List Wire := []
theorem s2Step25ExitFv_distinct : (s2Step25ExitFvRow.sign::s2Step25ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step25ExitFv_owned : (s2Step25ExitFvRow.sign::s2Step25ExitFvRow.payload).toFinset⊆s2Step25ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step25ExitFvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25ExitFv_reserved : s2Step25ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step25ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step25ExitFv_checked : planRowResizeLog s2Step25ExitFvBefore s2Step25ExitFvRow 26 []=
    some (s2Step25ExitFvAfter,s2Step25ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step25ExitFvBefore s2Step25ExitFvAfter s2Step25ExitFvRow 26 []
    s2Step25ExitFv_distinct s2Step25ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step25ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step25ExitFvRow.payload++[]) s2Step25ExitFvRow.sign=s2Step25ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step25ExitGvBefore : Arena := s2Step25ExitFAfter
def s2Step25ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step25ExitGvRow : WindowRow := ⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840],771⟩
def s2Step25ExitGvOut : WindowRow := ⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836],771⟩
def s2Step25ExitGvExtra : List Wire := [840]
theorem s2Step25ExitGv_distinct : (s2Step25ExitGvRow.sign::s2Step25ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step25ExitGv_owned : (s2Step25ExitGvRow.sign::s2Step25ExitGvRow.payload).toFinset⊆s2Step25ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step25ExitGvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25ExitGv_retired : s2Step25ExitGvBefore.retireSet s2Step25ExitGvExtra.toFinset=s2Step25ExitGvAfter := by
  unfold Arena.retireSet s2Step25ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step25ExitGvBefore,s2Step25ExitFAfter,s2Step25ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step25ExitGv_checked : planRowResizeLog s2Step25ExitGvBefore s2Step25ExitGvRow 25 []=
    some (s2Step25ExitGvAfter,s2Step25ExitGvOut,shrinkRow 771 s2Step25ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step25ExitGvBefore s2Step25ExitGvRow 25 s2Step25ExitGv_distinct s2Step25ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step25ExitGvRow.payload.take 25) s2Step25ExitGvRow.sign=s2Step25ExitGvOut := by decide +kernel
  have hi : s2Step25ExitGvRow.payload.drop 25=s2Step25ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step25ExitGv_retired] at result
  exact result
def s2Step26ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step26ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step26ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 785, 781],769⟩
def s2Step26ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253],769⟩
def s2Step26ExitGExtra : List Wire := [785, 781]
theorem s2Step26ExitG_distinct : (s2Step26ExitGRow.sign::s2Step26ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step26ExitG_owned : (s2Step26ExitGRow.sign::s2Step26ExitGRow.payload).toFinset⊆s2Step26ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step26ExitGBefore (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26ExitG_retired : s2Step26ExitGBefore.retireSet s2Step26ExitGExtra.toFinset=s2Step26ExitGAfter := by
  unfold Arena.retireSet s2Step26ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step26ExitGBefore,s2Step26ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step26ExitG_checked : planRowResizeLog s2Step26ExitGBefore s2Step26ExitGRow 254 []=
    some (s2Step26ExitGAfter,s2Step26ExitGOut,shrinkRow 769 s2Step26ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step26ExitGBefore s2Step26ExitGRow 254 s2Step26ExitG_distinct s2Step26ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step26ExitGRow.payload.take 254) s2Step26ExitGRow.sign=s2Step26ExitGOut := by decide +kernel
  have hi : s2Step26ExitGRow.payload.drop 254=s2Step26ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step26ExitG_retired] at result
  exact result
def s2Step26ExitFBefore : Arena := s2Step26ExitGAfter
def s2Step26ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step26ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 780],768⟩
def s2Step26ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766],768⟩
def s2Step26ExitFExtra : List Wire := [780]
theorem s2Step26ExitF_distinct : (s2Step26ExitFRow.sign::s2Step26ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step26ExitF_owned : (s2Step26ExitFRow.sign::s2Step26ExitFRow.payload).toFinset⊆s2Step26ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step26ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26ExitF_retired : s2Step26ExitFBefore.retireSet s2Step26ExitFExtra.toFinset=s2Step26ExitFAfter := by
  unfold Arena.retireSet s2Step26ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step26ExitFBefore,s2Step26ExitGAfter,s2Step26ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step26ExitF_checked : planRowResizeLog s2Step26ExitFBefore s2Step26ExitFRow 255 []=
    some (s2Step26ExitFAfter,s2Step26ExitFOut,shrinkRow 768 s2Step26ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step26ExitFBefore s2Step26ExitFRow 255 s2Step26ExitF_distinct s2Step26ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step26ExitFRow.payload.take 255) s2Step26ExitFRow.sign=s2Step26ExitFOut := by decide +kernel
  have hi : s2Step26ExitFRow.payload.drop 255=s2Step26ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step26ExitF_retired] at result
  exact result
def s2Step26ExitFvBefore : Arena := s2Step26ExitFAfter
def s2Step26ExitFvAfter : Arena := s2Step26ExitFAfter
def s2Step26ExitFvRow : WindowRow := ⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782],770⟩
def s2Step26ExitFvOut : WindowRow := ⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782],770⟩
def s2Step26ExitFvExtra : List Wire := []
theorem s2Step26ExitFv_distinct : (s2Step26ExitFvRow.sign::s2Step26ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step26ExitFv_owned : (s2Step26ExitFvRow.sign::s2Step26ExitFvRow.payload).toFinset⊆s2Step26ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step26ExitFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26ExitFv_reserved : s2Step26ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step26ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step26ExitFv_checked : planRowResizeLog s2Step26ExitFvBefore s2Step26ExitFvRow 27 []=
    some (s2Step26ExitFvAfter,s2Step26ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step26ExitFvBefore s2Step26ExitFvAfter s2Step26ExitFvRow 27 []
    s2Step26ExitFv_distinct s2Step26ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step26ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step26ExitFvRow.payload++[]) s2Step26ExitFvRow.sign=s2Step26ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step26ExitGvBefore : Arena := s2Step26ExitFAfter
def s2Step26ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step26ExitGvRow : WindowRow := ⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 779, 783],771⟩
def s2Step26ExitGvOut : WindowRow := ⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836],771⟩
def s2Step26ExitGvExtra : List Wire := [779, 783]
theorem s2Step26ExitGv_distinct : (s2Step26ExitGvRow.sign::s2Step26ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step26ExitGv_owned : (s2Step26ExitGvRow.sign::s2Step26ExitGvRow.payload).toFinset⊆s2Step26ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step26ExitGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26ExitGv_retired : s2Step26ExitGvBefore.retireSet s2Step26ExitGvExtra.toFinset=s2Step26ExitGvAfter := by
  unfold Arena.retireSet s2Step26ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step26ExitGvBefore,s2Step26ExitFAfter,s2Step26ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step26ExitGv_checked : planRowResizeLog s2Step26ExitGvBefore s2Step26ExitGvRow 25 []=
    some (s2Step26ExitGvAfter,s2Step26ExitGvOut,shrinkRow 771 s2Step26ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step26ExitGvBefore s2Step26ExitGvRow 25 s2Step26ExitGv_distinct s2Step26ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step26ExitGvRow.payload.take 25) s2Step26ExitGvRow.sign=s2Step26ExitGvOut := by decide +kernel
  have hi : s2Step26ExitGvRow.payload.drop 25=s2Step26ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step26ExitGv_retired] at result
  exact result
def s2Step27ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step27ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<253) ∨ (254≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step27ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 839, 785],769⟩
def s2Step27ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252],769⟩
def s2Step27ExitGExtra : List Wire := [253, 839, 785]
theorem s2Step27ExitG_distinct : (s2Step27ExitGRow.sign::s2Step27ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step27ExitG_owned : (s2Step27ExitGRow.sign::s2Step27ExitGRow.payload).toFinset⊆s2Step27ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step27ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27ExitG_retired : s2Step27ExitGBefore.retireSet s2Step27ExitGExtra.toFinset=s2Step27ExitGAfter := by
  unfold Arena.retireSet s2Step27ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step27ExitGBefore,s2Step27ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step27ExitG_checked : planRowResizeLog s2Step27ExitGBefore s2Step27ExitGRow 253 []=
    some (s2Step27ExitGAfter,s2Step27ExitGOut,shrinkRow 769 s2Step27ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step27ExitGBefore s2Step27ExitGRow 253 s2Step27ExitG_distinct s2Step27ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step27ExitGRow.payload.take 253) s2Step27ExitGRow.sign=s2Step27ExitGOut := by decide +kernel
  have hi : s2Step27ExitGRow.payload.drop 253=s2Step27ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step27ExitG_retired] at result
  exact result
def s2Step27ExitFBefore : Arena := s2Step27ExitGAfter
def s2Step27ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<253) ∨ (254≤q ∧ q<766) ∨ (767≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step27ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 781],768⟩
def s2Step27ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765],768⟩
def s2Step27ExitFExtra : List Wire := [766, 781]
theorem s2Step27ExitF_distinct : (s2Step27ExitFRow.sign::s2Step27ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step27ExitF_owned : (s2Step27ExitFRow.sign::s2Step27ExitFRow.payload).toFinset⊆s2Step27ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step27ExitFBefore (fun q => (0≤q ∧ q<253) ∨ (254≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27ExitF_retired : s2Step27ExitFBefore.retireSet s2Step27ExitFExtra.toFinset=s2Step27ExitFAfter := by
  unfold Arena.retireSet s2Step27ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step27ExitFBefore,s2Step27ExitGAfter,s2Step27ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step27ExitF_checked : planRowResizeLog s2Step27ExitFBefore s2Step27ExitFRow 254 []=
    some (s2Step27ExitFAfter,s2Step27ExitFOut,shrinkRow 768 s2Step27ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step27ExitFBefore s2Step27ExitFRow 254 s2Step27ExitF_distinct s2Step27ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step27ExitFRow.payload.take 254) s2Step27ExitFRow.sign=s2Step27ExitFOut := by decide +kernel
  have hi : s2Step27ExitFRow.payload.drop 254=s2Step27ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step27ExitF_retired] at result
  exact result
def s2Step27ExitFvBefore : Arena := s2Step27ExitFAfter
def s2Step27ExitFvAfter : Arena := s2Step27ExitFAfter
def s2Step27ExitFvRow : WindowRow := ⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842],770⟩
def s2Step27ExitFvOut : WindowRow := ⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842],770⟩
def s2Step27ExitFvExtra : List Wire := []
theorem s2Step27ExitFv_distinct : (s2Step27ExitFvRow.sign::s2Step27ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step27ExitFv_owned : (s2Step27ExitFvRow.sign::s2Step27ExitFvRow.payload).toFinset⊆s2Step27ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step27ExitFvBefore (fun q => (0≤q ∧ q<253) ∨ (254≤q ∧ q<766) ∨ (767≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27ExitFv_reserved : s2Step27ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step27ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step27ExitFv_checked : planRowResizeLog s2Step27ExitFvBefore s2Step27ExitFvRow 28 []=
    some (s2Step27ExitFvAfter,s2Step27ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step27ExitFvBefore s2Step27ExitFvAfter s2Step27ExitFvRow 28 []
    s2Step27ExitFv_distinct s2Step27ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step27ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step27ExitFvRow.payload++[]) s2Step27ExitFvRow.sign=s2Step27ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step27ExitGvBefore : Arena := s2Step27ExitFAfter
def s2Step27ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<253) ∨ (254≤q ∧ q<766) ∨ (767≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step27ExitGvRow : WindowRow := ⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 779, 841],771⟩
def s2Step27ExitGvOut : WindowRow := ⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840],771⟩
def s2Step27ExitGvExtra : List Wire := [779, 841]
theorem s2Step27ExitGv_distinct : (s2Step27ExitGvRow.sign::s2Step27ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step27ExitGv_owned : (s2Step27ExitGvRow.sign::s2Step27ExitGvRow.payload).toFinset⊆s2Step27ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step27ExitGvBefore (fun q => (0≤q ∧ q<253) ∨ (254≤q ∧ q<766) ∨ (767≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27ExitGv_retired : s2Step27ExitGvBefore.retireSet s2Step27ExitGvExtra.toFinset=s2Step27ExitGvAfter := by
  unfold Arena.retireSet s2Step27ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step27ExitGvBefore,s2Step27ExitFAfter,s2Step27ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step27ExitGv_checked : planRowResizeLog s2Step27ExitGvBefore s2Step27ExitGvRow 26 []=
    some (s2Step27ExitGvAfter,s2Step27ExitGvOut,shrinkRow 771 s2Step27ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step27ExitGvBefore s2Step27ExitGvRow 26 s2Step27ExitGv_distinct s2Step27ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step27ExitGvRow.payload.take 26) s2Step27ExitGvRow.sign=s2Step27ExitGvOut := by decide +kernel
  have hi : s2Step27ExitGvRow.payload.drop 26=s2Step27ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step27ExitGv_retired] at result
  exact result
def s2Step28ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step28ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step28ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 780, 841],769⟩
def s2Step28ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252],769⟩
def s2Step28ExitGExtra : List Wire := [780, 841]
theorem s2Step28ExitG_distinct : (s2Step28ExitGRow.sign::s2Step28ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step28ExitG_owned : (s2Step28ExitGRow.sign::s2Step28ExitGRow.payload).toFinset⊆s2Step28ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step28ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28ExitG_retired : s2Step28ExitGBefore.retireSet s2Step28ExitGExtra.toFinset=s2Step28ExitGAfter := by
  unfold Arena.retireSet s2Step28ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step28ExitGBefore,s2Step28ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step28ExitG_checked : planRowResizeLog s2Step28ExitGBefore s2Step28ExitGRow 253 []=
    some (s2Step28ExitGAfter,s2Step28ExitGOut,shrinkRow 769 s2Step28ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step28ExitGBefore s2Step28ExitGRow 253 s2Step28ExitG_distinct s2Step28ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step28ExitGRow.payload.take 253) s2Step28ExitGRow.sign=s2Step28ExitGOut := by decide +kernel
  have hi : s2Step28ExitGRow.payload.drop 253=s2Step28ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step28ExitG_retired] at result
  exact result
def s2Step28ExitFBefore : Arena := s2Step28ExitGAfter
def s2Step28ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step28ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 781],768⟩
def s2Step28ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765],768⟩
def s2Step28ExitFExtra : List Wire := [781]
theorem s2Step28ExitF_distinct : (s2Step28ExitFRow.sign::s2Step28ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step28ExitF_owned : (s2Step28ExitFRow.sign::s2Step28ExitFRow.payload).toFinset⊆s2Step28ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step28ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28ExitF_retired : s2Step28ExitFBefore.retireSet s2Step28ExitFExtra.toFinset=s2Step28ExitFAfter := by
  unfold Arena.retireSet s2Step28ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step28ExitFBefore,s2Step28ExitGAfter,s2Step28ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step28ExitF_checked : planRowResizeLog s2Step28ExitFBefore s2Step28ExitFRow 254 []=
    some (s2Step28ExitFAfter,s2Step28ExitFOut,shrinkRow 768 s2Step28ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step28ExitFBefore s2Step28ExitFRow 254 s2Step28ExitF_distinct s2Step28ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step28ExitFRow.payload.take 254) s2Step28ExitFRow.sign=s2Step28ExitFOut := by decide +kernel
  have hi : s2Step28ExitFRow.payload.drop 254=s2Step28ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step28ExitF_retired] at result
  exact result
def s2Step28ExitFvBefore : Arena := s2Step28ExitFAfter
def s2Step28ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step28ExitFvRow : WindowRow := ⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 785],770⟩
def s2Step28ExitFvOut : WindowRow := ⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842],770⟩
def s2Step28ExitFvExtra : List Wire := [785]
theorem s2Step28ExitFv_distinct : (s2Step28ExitFvRow.sign::s2Step28ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step28ExitFv_owned : (s2Step28ExitFvRow.sign::s2Step28ExitFvRow.payload).toFinset⊆s2Step28ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step28ExitFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28ExitFv_retired : s2Step28ExitFvBefore.retireSet s2Step28ExitFvExtra.toFinset=s2Step28ExitFvAfter := by
  unfold Arena.retireSet s2Step28ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step28ExitFvBefore,s2Step28ExitFAfter,s2Step28ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step28ExitFv_checked : planRowResizeLog s2Step28ExitFvBefore s2Step28ExitFvRow 28 []=
    some (s2Step28ExitFvAfter,s2Step28ExitFvOut,shrinkRow 770 s2Step28ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step28ExitFvBefore s2Step28ExitFvRow 28 s2Step28ExitFv_distinct s2Step28ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step28ExitFvRow.payload.take 28) s2Step28ExitFvRow.sign=s2Step28ExitFvOut := by decide +kernel
  have hi : s2Step28ExitFvRow.payload.drop 28=s2Step28ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step28ExitFv_retired] at result
  exact result
def s2Step28ExitGvBefore : Arena := s2Step28ExitFvAfter
def s2Step28ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step28ExitGvRow : WindowRow := ⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839],771⟩
def s2Step28ExitGvOut : WindowRow := ⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783],771⟩
def s2Step28ExitGvExtra : List Wire := [778, 839]
theorem s2Step28ExitGv_distinct : (s2Step28ExitGvRow.sign::s2Step28ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step28ExitGv_owned : (s2Step28ExitGvRow.sign::s2Step28ExitGvRow.payload).toFinset⊆s2Step28ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step28ExitGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28ExitGv_retired : s2Step28ExitGvBefore.retireSet s2Step28ExitGvExtra.toFinset=s2Step28ExitGvAfter := by
  unfold Arena.retireSet s2Step28ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step28ExitGvBefore,s2Step28ExitFvAfter,s2Step28ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step28ExitGv_checked : planRowResizeLog s2Step28ExitGvBefore s2Step28ExitGvRow 27 []=
    some (s2Step28ExitGvAfter,s2Step28ExitGvOut,shrinkRow 771 s2Step28ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step28ExitGvBefore s2Step28ExitGvRow 27 s2Step28ExitGv_distinct s2Step28ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step28ExitGvRow.payload.take 27) s2Step28ExitGvRow.sign=s2Step28ExitGvOut := by decide +kernel
  have hi : s2Step28ExitGvRow.payload.drop 27=s2Step28ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step28ExitGv_retired] at result
  exact result
def s2Step29ExitGBefore : Arena := s2Step28ExitGBefore
def s2Step29ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<252) ∨ (253≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step29ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 779, 785],769⟩
def s2Step29ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251],769⟩
def s2Step29ExitGExtra : List Wire := [252, 779, 785]
theorem s2Step29ExitG_distinct : (s2Step29ExitGRow.sign::s2Step29ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step29ExitG_owned : (s2Step29ExitGRow.sign::s2Step29ExitGRow.payload).toFinset⊆s2Step29ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step29ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29ExitG_retired : s2Step29ExitGBefore.retireSet s2Step29ExitGExtra.toFinset=s2Step29ExitGAfter := by
  unfold Arena.retireSet s2Step29ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step29ExitGBefore,s2Step28ExitGBefore,s2Step29ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step29ExitG_checked : planRowResizeLog s2Step29ExitGBefore s2Step29ExitGRow 252 []=
    some (s2Step29ExitGAfter,s2Step29ExitGOut,shrinkRow 769 s2Step29ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step29ExitGBefore s2Step29ExitGRow 252 s2Step29ExitG_distinct s2Step29ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step29ExitGRow.payload.take 252) s2Step29ExitGRow.sign=s2Step29ExitGOut := by decide +kernel
  have hi : s2Step29ExitGRow.payload.drop 252=s2Step29ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step29ExitG_retired] at result
  exact result
def s2Step29ExitFBefore : Arena := s2Step29ExitGAfter
def s2Step29ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<252) ∨ (253≤q ∧ q<765) ∨ (766≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step29ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 781],768⟩
def s2Step29ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764],768⟩
def s2Step29ExitFExtra : List Wire := [765, 781]
theorem s2Step29ExitF_distinct : (s2Step29ExitFRow.sign::s2Step29ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step29ExitF_owned : (s2Step29ExitFRow.sign::s2Step29ExitFRow.payload).toFinset⊆s2Step29ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step29ExitFBefore (fun q => (0≤q ∧ q<252) ∨ (253≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29ExitF_retired : s2Step29ExitFBefore.retireSet s2Step29ExitFExtra.toFinset=s2Step29ExitFAfter := by
  unfold Arena.retireSet s2Step29ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step29ExitFBefore,s2Step29ExitGAfter,s2Step29ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step29ExitF_checked : planRowResizeLog s2Step29ExitFBefore s2Step29ExitFRow 253 []=
    some (s2Step29ExitFAfter,s2Step29ExitFOut,shrinkRow 768 s2Step29ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step29ExitFBefore s2Step29ExitFRow 253 s2Step29ExitF_distinct s2Step29ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step29ExitFRow.payload.take 253) s2Step29ExitFRow.sign=s2Step29ExitFOut := by decide +kernel
  have hi : s2Step29ExitFRow.payload.drop 253=s2Step29ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step29ExitF_retired] at result
  exact result
def s2Step29ExitFvBefore : Arena := s2Step29ExitFAfter
def s2Step29ExitFvAfter : Arena := s2Step29ExitFAfter
def s2Step29ExitFvRow : WindowRow := ⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩
def s2Step29ExitFvOut : WindowRow := ⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩
def s2Step29ExitFvExtra : List Wire := []
theorem s2Step29ExitFv_distinct : (s2Step29ExitFvRow.sign::s2Step29ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step29ExitFv_owned : (s2Step29ExitFvRow.sign::s2Step29ExitFvRow.payload).toFinset⊆s2Step29ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step29ExitFvBefore (fun q => (0≤q ∧ q<252) ∨ (253≤q ∧ q<765) ∨ (766≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29ExitFv_reserved : s2Step29ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step29ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step29ExitFv_checked : planRowResizeLog s2Step29ExitFvBefore s2Step29ExitFvRow 29 []=
    some (s2Step29ExitFvAfter,s2Step29ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step29ExitFvBefore s2Step29ExitFvAfter s2Step29ExitFvRow 29 []
    s2Step29ExitFv_distinct s2Step29ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step29ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step29ExitFvRow.payload++[]) s2Step29ExitFvRow.sign=s2Step29ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step29ExitGvBefore : Arena := s2Step29ExitFAfter
def s2Step29ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<252) ∨ (253≤q ∧ q<765) ∨ (766≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step29ExitGvRow : WindowRow := ⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 787, 780],771⟩
def s2Step29ExitGvOut : WindowRow := ⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783],771⟩
def s2Step29ExitGvExtra : List Wire := [787, 780]
theorem s2Step29ExitGv_distinct : (s2Step29ExitGvRow.sign::s2Step29ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step29ExitGv_owned : (s2Step29ExitGvRow.sign::s2Step29ExitGvRow.payload).toFinset⊆s2Step29ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step29ExitGvBefore (fun q => (0≤q ∧ q<252) ∨ (253≤q ∧ q<765) ∨ (766≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29ExitGv_retired : s2Step29ExitGvBefore.retireSet s2Step29ExitGvExtra.toFinset=s2Step29ExitGvAfter := by
  unfold Arena.retireSet s2Step29ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step29ExitGvBefore,s2Step29ExitFAfter,s2Step29ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step29ExitGv_checked : planRowResizeLog s2Step29ExitGvBefore s2Step29ExitGvRow 27 []=
    some (s2Step29ExitGvAfter,s2Step29ExitGvOut,shrinkRow 771 s2Step29ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step29ExitGvBefore s2Step29ExitGvRow 27 s2Step29ExitGv_distinct s2Step29ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step29ExitGvRow.payload.take 27) s2Step29ExitGvRow.sign=s2Step29ExitGvOut := by decide +kernel
  have hi : s2Step29ExitGvRow.payload.drop 27=s2Step29ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step29ExitGv_retired] at result
  exact result
def s2Step30ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step30ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step30ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 839, 780],769⟩
def s2Step30ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251],769⟩
def s2Step30ExitGExtra : List Wire := [839, 780]
theorem s2Step30ExitG_distinct : (s2Step30ExitGRow.sign::s2Step30ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step30ExitG_owned : (s2Step30ExitGRow.sign::s2Step30ExitGRow.payload).toFinset⊆s2Step30ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step30ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30ExitG_retired : s2Step30ExitGBefore.retireSet s2Step30ExitGExtra.toFinset=s2Step30ExitGAfter := by
  unfold Arena.retireSet s2Step30ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step30ExitGBefore,s2Step30ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step30ExitG_checked : planRowResizeLog s2Step30ExitGBefore s2Step30ExitGRow 252 []=
    some (s2Step30ExitGAfter,s2Step30ExitGOut,shrinkRow 769 s2Step30ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step30ExitGBefore s2Step30ExitGRow 252 s2Step30ExitG_distinct s2Step30ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step30ExitGRow.payload.take 252) s2Step30ExitGRow.sign=s2Step30ExitGOut := by decide +kernel
  have hi : s2Step30ExitGRow.payload.drop 252=s2Step30ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step30ExitG_retired] at result
  exact result
def s2Step30ExitFBefore : Arena := s2Step30ExitGAfter
def s2Step30ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step30ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 781],768⟩
def s2Step30ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764],768⟩
def s2Step30ExitFExtra : List Wire := [781]
theorem s2Step30ExitF_distinct : (s2Step30ExitFRow.sign::s2Step30ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step30ExitF_owned : (s2Step30ExitFRow.sign::s2Step30ExitFRow.payload).toFinset⊆s2Step30ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step30ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30ExitF_retired : s2Step30ExitFBefore.retireSet s2Step30ExitFExtra.toFinset=s2Step30ExitFAfter := by
  unfold Arena.retireSet s2Step30ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step30ExitFBefore,s2Step30ExitGAfter,s2Step30ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step30ExitF_checked : planRowResizeLog s2Step30ExitFBefore s2Step30ExitFRow 253 []=
    some (s2Step30ExitFAfter,s2Step30ExitFOut,shrinkRow 768 s2Step30ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step30ExitFBefore s2Step30ExitFRow 253 s2Step30ExitF_distinct s2Step30ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step30ExitFRow.payload.take 253) s2Step30ExitFRow.sign=s2Step30ExitFOut := by decide +kernel
  have hi : s2Step30ExitFRow.payload.drop 253=s2Step30ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step30ExitF_retired] at result
  exact result
def s2Step30ExitFvBefore : Arena := s2Step30ExitFAfter
def s2Step30ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step30ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 785],770⟩
def s2Step30ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩
def s2Step30ExitFvExtra : List Wire := [785]
theorem s2Step30ExitFv_distinct : (s2Step30ExitFvRow.sign::s2Step30ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step30ExitFv_owned : (s2Step30ExitFvRow.sign::s2Step30ExitFvRow.payload).toFinset⊆s2Step30ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step30ExitFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30ExitFv_retired : s2Step30ExitFvBefore.retireSet s2Step30ExitFvExtra.toFinset=s2Step30ExitFvAfter := by
  unfold Arena.retireSet s2Step30ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step30ExitFvBefore,s2Step30ExitFAfter,s2Step30ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step30ExitFv_checked : planRowResizeLog s2Step30ExitFvBefore s2Step30ExitFvRow 29 []=
    some (s2Step30ExitFvAfter,s2Step30ExitFvOut,shrinkRow 770 s2Step30ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step30ExitFvBefore s2Step30ExitFvRow 29 s2Step30ExitFv_distinct s2Step30ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step30ExitFvRow.payload.take 29) s2Step30ExitFvRow.sign=s2Step30ExitFvOut := by decide +kernel
  have hi : s2Step30ExitFvRow.payload.drop 29=s2Step30ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step30ExitFv_retired] at result
  exact result
def s2Step30ExitGvBefore : Arena := s2Step30ExitFvAfter
def s2Step30ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step30ExitGvRow : WindowRow := ⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 786, 779],771⟩
def s2Step30ExitGvOut : WindowRow := ⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778],771⟩
def s2Step30ExitGvExtra : List Wire := [786, 779]
theorem s2Step30ExitGv_distinct : (s2Step30ExitGvRow.sign::s2Step30ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step30ExitGv_owned : (s2Step30ExitGvRow.sign::s2Step30ExitGvRow.payload).toFinset⊆s2Step30ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step30ExitGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30ExitGv_retired : s2Step30ExitGvBefore.retireSet s2Step30ExitGvExtra.toFinset=s2Step30ExitGvAfter := by
  unfold Arena.retireSet s2Step30ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step30ExitGvBefore,s2Step30ExitFvAfter,s2Step30ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step30ExitGv_checked : planRowResizeLog s2Step30ExitGvBefore s2Step30ExitGvRow 28 []=
    some (s2Step30ExitGvAfter,s2Step30ExitGvOut,shrinkRow 771 s2Step30ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step30ExitGvBefore s2Step30ExitGvRow 28 s2Step30ExitGv_distinct s2Step30ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step30ExitGvRow.payload.take 28) s2Step30ExitGvRow.sign=s2Step30ExitGvOut := by decide +kernel
  have hi : s2Step30ExitGvRow.payload.drop 28=s2Step30ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step30ExitGv_retired] at result
  exact result
def s2Step31ExitGBefore : Arena := s2Step30ExitGBefore
def s2Step31ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<251) ∨ (252≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step31ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 787, 785],769⟩
def s2Step31ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250],769⟩
def s2Step31ExitGExtra : List Wire := [251, 787, 785]
theorem s2Step31ExitG_distinct : (s2Step31ExitGRow.sign::s2Step31ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step31ExitG_owned : (s2Step31ExitGRow.sign::s2Step31ExitGRow.payload).toFinset⊆s2Step31ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step31ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31ExitG_retired : s2Step31ExitGBefore.retireSet s2Step31ExitGExtra.toFinset=s2Step31ExitGAfter := by
  unfold Arena.retireSet s2Step31ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step31ExitGBefore,s2Step30ExitGBefore,s2Step31ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step31ExitG_checked : planRowResizeLog s2Step31ExitGBefore s2Step31ExitGRow 251 []=
    some (s2Step31ExitGAfter,s2Step31ExitGOut,shrinkRow 769 s2Step31ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step31ExitGBefore s2Step31ExitGRow 251 s2Step31ExitG_distinct s2Step31ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step31ExitGRow.payload.take 251) s2Step31ExitGRow.sign=s2Step31ExitGOut := by decide +kernel
  have hi : s2Step31ExitGRow.payload.drop 251=s2Step31ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step31ExitG_retired] at result
  exact result
def s2Step31ExitFBefore : Arena := s2Step31ExitGAfter
def s2Step31ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<251) ∨ (252≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step31ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 781],768⟩
def s2Step31ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764],768⟩
def s2Step31ExitFExtra : List Wire := [781]
theorem s2Step31ExitF_distinct : (s2Step31ExitFRow.sign::s2Step31ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step31ExitF_owned : (s2Step31ExitFRow.sign::s2Step31ExitFRow.payload).toFinset⊆s2Step31ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step31ExitFBefore (fun q => (0≤q ∧ q<251) ∨ (252≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31ExitF_retired : s2Step31ExitFBefore.retireSet s2Step31ExitFExtra.toFinset=s2Step31ExitFAfter := by
  unfold Arena.retireSet s2Step31ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step31ExitFBefore,s2Step31ExitGAfter,s2Step31ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step31ExitF_checked : planRowResizeLog s2Step31ExitFBefore s2Step31ExitFRow 253 []=
    some (s2Step31ExitFAfter,s2Step31ExitFOut,shrinkRow 768 s2Step31ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step31ExitFBefore s2Step31ExitFRow 253 s2Step31ExitF_distinct s2Step31ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step31ExitFRow.payload.take 253) s2Step31ExitFRow.sign=s2Step31ExitFOut := by decide +kernel
  have hi : s2Step31ExitFRow.payload.drop 253=s2Step31ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step31ExitF_retired] at result
  exact result
def s2Step31ExitFvBefore : Arena := s2Step31ExitFAfter
def s2Step31ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<251) ∨ (252≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step31ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 780],770⟩
def s2Step31ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩
def s2Step31ExitFvExtra : List Wire := [780]
theorem s2Step31ExitFv_distinct : (s2Step31ExitFvRow.sign::s2Step31ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step31ExitFv_owned : (s2Step31ExitFvRow.sign::s2Step31ExitFvRow.payload).toFinset⊆s2Step31ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step31ExitFvBefore (fun q => (0≤q ∧ q<251) ∨ (252≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31ExitFv_retired : s2Step31ExitFvBefore.retireSet s2Step31ExitFvExtra.toFinset=s2Step31ExitFvAfter := by
  unfold Arena.retireSet s2Step31ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step31ExitFvBefore,s2Step31ExitFAfter,s2Step31ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step31ExitFv_checked : planRowResizeLog s2Step31ExitFvBefore s2Step31ExitFvRow 29 []=
    some (s2Step31ExitFvAfter,s2Step31ExitFvOut,shrinkRow 770 s2Step31ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step31ExitFvBefore s2Step31ExitFvRow 29 s2Step31ExitFv_distinct s2Step31ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step31ExitFvRow.payload.take 29) s2Step31ExitFvRow.sign=s2Step31ExitFvOut := by decide +kernel
  have hi : s2Step31ExitFvRow.payload.drop 29=s2Step31ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step31ExitFv_retired] at result
  exact result
def s2Step31ExitGvBefore : Arena := s2Step31ExitFvAfter
def s2Step31ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<251) ∨ (252≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step31ExitGvRow : WindowRow := ⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 789, 839],771⟩
def s2Step31ExitGvOut : WindowRow := ⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778],771⟩
def s2Step31ExitGvExtra : List Wire := [789, 839]
theorem s2Step31ExitGv_distinct : (s2Step31ExitGvRow.sign::s2Step31ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step31ExitGv_owned : (s2Step31ExitGvRow.sign::s2Step31ExitGvRow.payload).toFinset⊆s2Step31ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step31ExitGvBefore (fun q => (0≤q ∧ q<251) ∨ (252≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31ExitGv_retired : s2Step31ExitGvBefore.retireSet s2Step31ExitGvExtra.toFinset=s2Step31ExitGvAfter := by
  unfold Arena.retireSet s2Step31ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step31ExitGvBefore,s2Step31ExitFvAfter,s2Step31ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step31ExitGv_checked : planRowResizeLog s2Step31ExitGvBefore s2Step31ExitGvRow 28 []=
    some (s2Step31ExitGvAfter,s2Step31ExitGvOut,shrinkRow 771 s2Step31ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step31ExitGvBefore s2Step31ExitGvRow 28 s2Step31ExitGv_distinct s2Step31ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step31ExitGvRow.payload.take 28) s2Step31ExitGvRow.sign=s2Step31ExitGvOut := by decide +kernel
  have hi : s2Step31ExitGvRow.payload.drop 28=s2Step31ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step31ExitGv_retired] at result
  exact result

end ECDSAAdd.Arithmetic.Paper935
