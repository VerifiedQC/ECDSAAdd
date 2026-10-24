import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk1

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step32ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step32ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step32ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779, 786, 780],769⟩
def s2Step32ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779],769⟩
def s2Step32ExitGExtra : List Wire := [786, 780]
theorem s2Step32ExitG_distinct : (s2Step32ExitGRow.sign::s2Step32ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step32ExitG_owned : (s2Step32ExitGRow.sign::s2Step32ExitGRow.payload).toFinset⊆s2Step32ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step32ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32ExitG_retired : s2Step32ExitGBefore.retireSet s2Step32ExitGExtra.toFinset=s2Step32ExitGAfter := by
  unfold Arena.retireSet s2Step32ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step32ExitGBefore,s2Step32ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step32ExitG_checked : planRowResizeLog s2Step32ExitGBefore s2Step32ExitGRow 252 []=
    some (s2Step32ExitGAfter,s2Step32ExitGOut,shrinkRow 769 s2Step32ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step32ExitGBefore s2Step32ExitGRow 252 s2Step32ExitG_distinct s2Step32ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step32ExitGRow.payload.take 252) s2Step32ExitGRow.sign=s2Step32ExitGOut := by decide +kernel
  have hi : s2Step32ExitGRow.payload.drop 252=s2Step32ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step32ExitG_retired] at result
  exact result
def s2Step32ExitFBefore : Arena := s2Step32ExitGAfter
def s2Step32ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<764) ∨ (765≤q ∧ q<780) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step32ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 781],768⟩
def s2Step32ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763],768⟩
def s2Step32ExitFExtra : List Wire := [764, 781]
theorem s2Step32ExitF_distinct : (s2Step32ExitFRow.sign::s2Step32ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step32ExitF_owned : (s2Step32ExitFRow.sign::s2Step32ExitFRow.payload).toFinset⊆s2Step32ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step32ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32ExitF_retired : s2Step32ExitFBefore.retireSet s2Step32ExitFExtra.toFinset=s2Step32ExitFAfter := by
  unfold Arena.retireSet s2Step32ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step32ExitFBefore,s2Step32ExitGAfter,s2Step32ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step32ExitF_checked : planRowResizeLog s2Step32ExitFBefore s2Step32ExitFRow 252 []=
    some (s2Step32ExitFAfter,s2Step32ExitFOut,shrinkRow 768 s2Step32ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step32ExitFBefore s2Step32ExitFRow 252 s2Step32ExitF_distinct s2Step32ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step32ExitFRow.payload.take 252) s2Step32ExitFRow.sign=s2Step32ExitFOut := by decide +kernel
  have hi : s2Step32ExitFRow.payload.drop 252=s2Step32ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step32ExitF_retired] at result
  exact result
def s2Step32ExitFvBefore : Arena := s2Step32ExitFAfter
def s2Step32ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<764) ∨ (765≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step32ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 785],770⟩
def s2Step32ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩
def s2Step32ExitFvExtra : List Wire := [785]
theorem s2Step32ExitFv_distinct : (s2Step32ExitFvRow.sign::s2Step32ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step32ExitFv_owned : (s2Step32ExitFvRow.sign::s2Step32ExitFvRow.payload).toFinset⊆s2Step32ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step32ExitFvBefore (fun q => (0≤q ∧ q<764) ∨ (765≤q ∧ q<780) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32ExitFv_retired : s2Step32ExitFvBefore.retireSet s2Step32ExitFvExtra.toFinset=s2Step32ExitFvAfter := by
  unfold Arena.retireSet s2Step32ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step32ExitFvBefore,s2Step32ExitFAfter,s2Step32ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step32ExitFv_checked : planRowResizeLog s2Step32ExitFvBefore s2Step32ExitFvRow 29 []=
    some (s2Step32ExitFvAfter,s2Step32ExitFvOut,shrinkRow 770 s2Step32ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step32ExitFvBefore s2Step32ExitFvRow 29 s2Step32ExitFv_distinct s2Step32ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step32ExitFvRow.payload.take 29) s2Step32ExitFvRow.sign=s2Step32ExitFvOut := by decide +kernel
  have hi : s2Step32ExitFvRow.payload.drop 29=s2Step32ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step32ExitFv_retired] at result
  exact result
def s2Step32ExitGvBefore : Arena := s2Step32ExitFvAfter
def s2Step32ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<764) ∨ (765≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step32ExitGvRow : WindowRow := ⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 791, 787],771⟩
def s2Step32ExitGvOut : WindowRow := ⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778],771⟩
def s2Step32ExitGvExtra : List Wire := [791, 787]
theorem s2Step32ExitGv_distinct : (s2Step32ExitGvRow.sign::s2Step32ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step32ExitGv_owned : (s2Step32ExitGvRow.sign::s2Step32ExitGvRow.payload).toFinset⊆s2Step32ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step32ExitGvBefore (fun q => (0≤q ∧ q<764) ∨ (765≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32ExitGv_retired : s2Step32ExitGvBefore.retireSet s2Step32ExitGvExtra.toFinset=s2Step32ExitGvAfter := by
  unfold Arena.retireSet s2Step32ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step32ExitGvBefore,s2Step32ExitFvAfter,s2Step32ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step32ExitGv_checked : planRowResizeLog s2Step32ExitGvBefore s2Step32ExitGvRow 28 []=
    some (s2Step32ExitGvAfter,s2Step32ExitGvOut,shrinkRow 771 s2Step32ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step32ExitGvBefore s2Step32ExitGvRow 28 s2Step32ExitGv_distinct s2Step32ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step32ExitGvRow.payload.take 28) s2Step32ExitGvRow.sign=s2Step32ExitGvOut := by decide +kernel
  have hi : s2Step32ExitGvRow.payload.drop 28=s2Step32ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step32ExitGv_retired] at result
  exact result
def s2Step33ExitGBefore : Arena := s2Step32ExitGAfter
def s2Step33ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step33ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779, 791],769⟩
def s2Step33ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250],769⟩
def s2Step33ExitGExtra : List Wire := [779, 791]
theorem s2Step33ExitG_distinct : (s2Step33ExitGRow.sign::s2Step33ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step33ExitG_owned : (s2Step33ExitGRow.sign::s2Step33ExitGRow.payload).toFinset⊆s2Step33ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step33ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33ExitG_retired : s2Step33ExitGBefore.retireSet s2Step33ExitGExtra.toFinset=s2Step33ExitGAfter := by
  unfold Arena.retireSet s2Step33ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step33ExitGBefore,s2Step32ExitGAfter,s2Step33ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step33ExitG_checked : planRowResizeLog s2Step33ExitGBefore s2Step33ExitGRow 251 []=
    some (s2Step33ExitGAfter,s2Step33ExitGOut,shrinkRow 769 s2Step33ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step33ExitGBefore s2Step33ExitGRow 251 s2Step33ExitG_distinct s2Step33ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step33ExitGRow.payload.take 251) s2Step33ExitGRow.sign=s2Step33ExitGOut := by decide +kernel
  have hi : s2Step33ExitGRow.payload.drop 251=s2Step33ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step33ExitG_retired] at result
  exact result
def s2Step33ExitFBefore : Arena := s2Step33ExitGAfter
def s2Step33ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<763) ∨ (764≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step33ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 787],768⟩
def s2Step33ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762],768⟩
def s2Step33ExitFExtra : List Wire := [763, 787]
theorem s2Step33ExitF_distinct : (s2Step33ExitFRow.sign::s2Step33ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step33ExitF_owned : (s2Step33ExitFRow.sign::s2Step33ExitFRow.payload).toFinset⊆s2Step33ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step33ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33ExitF_retired : s2Step33ExitFBefore.retireSet s2Step33ExitFExtra.toFinset=s2Step33ExitFAfter := by
  unfold Arena.retireSet s2Step33ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step33ExitFBefore,s2Step33ExitGAfter,s2Step33ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step33ExitF_checked : planRowResizeLog s2Step33ExitFBefore s2Step33ExitFRow 251 []=
    some (s2Step33ExitFAfter,s2Step33ExitFOut,shrinkRow 768 s2Step33ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step33ExitFBefore s2Step33ExitFRow 251 s2Step33ExitF_distinct s2Step33ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step33ExitFRow.payload.take 251) s2Step33ExitFRow.sign=s2Step33ExitFOut := by decide +kernel
  have hi : s2Step33ExitFRow.payload.drop 251=s2Step33ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step33ExitF_retired] at result
  exact result
def s2Step33ExitFvBefore : Arena := s2Step33ExitFAfter
def s2Step33ExitFvAfter : Arena := s2Step33ExitFAfter
def s2Step33ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781],770⟩
def s2Step33ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781],770⟩
def s2Step33ExitFvExtra : List Wire := []
theorem s2Step33ExitFv_distinct : (s2Step33ExitFvRow.sign::s2Step33ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step33ExitFv_owned : (s2Step33ExitFvRow.sign::s2Step33ExitFvRow.payload).toFinset⊆s2Step33ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step33ExitFvBefore (fun q => (0≤q ∧ q<763) ∨ (764≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33ExitFv_reserved : s2Step33ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step33ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step33ExitFv_checked : planRowResizeLog s2Step33ExitFvBefore s2Step33ExitFvRow 30 []=
    some (s2Step33ExitFvAfter,s2Step33ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step33ExitFvBefore s2Step33ExitFvAfter s2Step33ExitFvRow 30 []
    s2Step33ExitFv_distinct s2Step33ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step33ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step33ExitFvRow.payload++[]) s2Step33ExitFvRow.sign=s2Step33ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step33ExitGvBefore : Arena := s2Step33ExitFAfter
def s2Step33ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<763) ∨ (764≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step33ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 785],771⟩
def s2Step33ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839],771⟩
def s2Step33ExitGvExtra : List Wire := [785]
theorem s2Step33ExitGv_distinct : (s2Step33ExitGvRow.sign::s2Step33ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step33ExitGv_owned : (s2Step33ExitGvRow.sign::s2Step33ExitGvRow.payload).toFinset⊆s2Step33ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step33ExitGvBefore (fun q => (0≤q ∧ q<763) ∨ (764≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33ExitGv_retired : s2Step33ExitGvBefore.retireSet s2Step33ExitGvExtra.toFinset=s2Step33ExitGvAfter := by
  unfold Arena.retireSet s2Step33ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step33ExitGvBefore,s2Step33ExitFAfter,s2Step33ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step33ExitGv_checked : planRowResizeLog s2Step33ExitGvBefore s2Step33ExitGvRow 29 []=
    some (s2Step33ExitGvAfter,s2Step33ExitGvOut,shrinkRow 771 s2Step33ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step33ExitGvBefore s2Step33ExitGvRow 29 s2Step33ExitGv_distinct s2Step33ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step33ExitGvRow.payload.take 29) s2Step33ExitGvRow.sign=s2Step33ExitGvOut := by decide +kernel
  have hi : s2Step33ExitGvRow.payload.drop 29=s2Step33ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step33ExitGv_retired] at result
  exact result
def s2Step34ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step34ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<250) ∨ (251≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step34ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 785],769⟩
def s2Step34ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249],769⟩
def s2Step34ExitGExtra : List Wire := [250, 785]
theorem s2Step34ExitG_distinct : (s2Step34ExitGRow.sign::s2Step34ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step34ExitG_owned : (s2Step34ExitGRow.sign::s2Step34ExitGRow.payload).toFinset⊆s2Step34ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step34ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34ExitG_retired : s2Step34ExitGBefore.retireSet s2Step34ExitGExtra.toFinset=s2Step34ExitGAfter := by
  unfold Arena.retireSet s2Step34ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step34ExitGBefore,s2Step34ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step34ExitG_checked : planRowResizeLog s2Step34ExitGBefore s2Step34ExitGRow 250 []=
    some (s2Step34ExitGAfter,s2Step34ExitGOut,shrinkRow 769 s2Step34ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step34ExitGBefore s2Step34ExitGRow 250 s2Step34ExitG_distinct s2Step34ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step34ExitGRow.payload.take 250) s2Step34ExitGRow.sign=s2Step34ExitGOut := by decide +kernel
  have hi : s2Step34ExitGRow.payload.drop 250=s2Step34ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step34ExitG_retired] at result
  exact result
def s2Step34ExitFBefore : Arena := s2Step34ExitGAfter
def s2Step34ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<250) ∨ (251≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step34ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 787],768⟩
def s2Step34ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762],768⟩
def s2Step34ExitFExtra : List Wire := [787]
theorem s2Step34ExitF_distinct : (s2Step34ExitFRow.sign::s2Step34ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step34ExitF_owned : (s2Step34ExitFRow.sign::s2Step34ExitFRow.payload).toFinset⊆s2Step34ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step34ExitFBefore (fun q => (0≤q ∧ q<250) ∨ (251≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34ExitF_retired : s2Step34ExitFBefore.retireSet s2Step34ExitFExtra.toFinset=s2Step34ExitFAfter := by
  unfold Arena.retireSet s2Step34ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step34ExitFBefore,s2Step34ExitGAfter,s2Step34ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step34ExitF_checked : planRowResizeLog s2Step34ExitFBefore s2Step34ExitFRow 251 []=
    some (s2Step34ExitFAfter,s2Step34ExitFOut,shrinkRow 768 s2Step34ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step34ExitFBefore s2Step34ExitFRow 251 s2Step34ExitF_distinct s2Step34ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step34ExitFRow.payload.take 251) s2Step34ExitFRow.sign=s2Step34ExitFOut := by decide +kernel
  have hi : s2Step34ExitFRow.payload.drop 251=s2Step34ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step34ExitF_retired] at result
  exact result
def s2Step34ExitFvBefore : Arena := s2Step34ExitFAfter
def s2Step34ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<250) ∨ (251≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step34ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 791],770⟩
def s2Step34ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781],770⟩
def s2Step34ExitFvExtra : List Wire := [791]
theorem s2Step34ExitFv_distinct : (s2Step34ExitFvRow.sign::s2Step34ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step34ExitFv_owned : (s2Step34ExitFvRow.sign::s2Step34ExitFvRow.payload).toFinset⊆s2Step34ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step34ExitFvBefore (fun q => (0≤q ∧ q<250) ∨ (251≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34ExitFv_retired : s2Step34ExitFvBefore.retireSet s2Step34ExitFvExtra.toFinset=s2Step34ExitFvAfter := by
  unfold Arena.retireSet s2Step34ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step34ExitFvBefore,s2Step34ExitFAfter,s2Step34ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step34ExitFv_checked : planRowResizeLog s2Step34ExitFvBefore s2Step34ExitFvRow 30 []=
    some (s2Step34ExitFvAfter,s2Step34ExitFvOut,shrinkRow 770 s2Step34ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step34ExitFvBefore s2Step34ExitFvRow 30 s2Step34ExitFv_distinct s2Step34ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step34ExitFvRow.payload.take 30) s2Step34ExitFvRow.sign=s2Step34ExitFvOut := by decide +kernel
  have hi : s2Step34ExitFvRow.payload.drop 30=s2Step34ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step34ExitFv_retired] at result
  exact result
def s2Step34ExitGvBefore : Arena := s2Step34ExitFvAfter
def s2Step34ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<250) ∨ (251≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step34ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 779],771⟩
def s2Step34ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788],771⟩
def s2Step34ExitGvExtra : List Wire := [779]
theorem s2Step34ExitGv_distinct : (s2Step34ExitGvRow.sign::s2Step34ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step34ExitGv_owned : (s2Step34ExitGvRow.sign::s2Step34ExitGvRow.payload).toFinset⊆s2Step34ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step34ExitGvBefore (fun q => (0≤q ∧ q<250) ∨ (251≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34ExitGv_retired : s2Step34ExitGvBefore.retireSet s2Step34ExitGvExtra.toFinset=s2Step34ExitGvAfter := by
  unfold Arena.retireSet s2Step34ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step34ExitGvBefore,s2Step34ExitFvAfter,s2Step34ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step34ExitGv_checked : planRowResizeLog s2Step34ExitGvBefore s2Step34ExitGvRow 30 []=
    some (s2Step34ExitGvAfter,s2Step34ExitGvOut,shrinkRow 771 s2Step34ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step34ExitGvBefore s2Step34ExitGvRow 30 s2Step34ExitGv_distinct s2Step34ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step34ExitGvRow.payload.take 30) s2Step34ExitGvRow.sign=s2Step34ExitGvOut := by decide +kernel
  have hi : s2Step34ExitGvRow.payload.drop 30=s2Step34ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step34ExitGv_retired] at result
  exact result
def s2Step35ExitGBefore : Arena := s2Step34ExitGBefore
def s2Step35ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step35ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790, 779],769⟩
def s2Step35ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790],769⟩
def s2Step35ExitGExtra : List Wire := [779]
theorem s2Step35ExitG_distinct : (s2Step35ExitGRow.sign::s2Step35ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step35ExitG_owned : (s2Step35ExitGRow.sign::s2Step35ExitGRow.payload).toFinset⊆s2Step35ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step35ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35ExitG_retired : s2Step35ExitGBefore.retireSet s2Step35ExitGExtra.toFinset=s2Step35ExitGAfter := by
  unfold Arena.retireSet s2Step35ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step35ExitGBefore,s2Step34ExitGBefore,s2Step35ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step35ExitG_checked : planRowResizeLog s2Step35ExitGBefore s2Step35ExitGRow 251 []=
    some (s2Step35ExitGAfter,s2Step35ExitGOut,shrinkRow 769 s2Step35ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step35ExitGBefore s2Step35ExitGRow 251 s2Step35ExitG_distinct s2Step35ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step35ExitGRow.payload.take 251) s2Step35ExitGRow.sign=s2Step35ExitGOut := by decide +kernel
  have hi : s2Step35ExitGRow.payload.drop 251=s2Step35ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step35ExitG_retired] at result
  exact result
def s2Step35ExitFBefore : Arena := s2Step35ExitGAfter
def s2Step35ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<762) ∨ (763≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step35ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 791],768⟩
def s2Step35ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761],768⟩
def s2Step35ExitFExtra : List Wire := [762, 791]
theorem s2Step35ExitF_distinct : (s2Step35ExitFRow.sign::s2Step35ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step35ExitF_owned : (s2Step35ExitFRow.sign::s2Step35ExitFRow.payload).toFinset⊆s2Step35ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step35ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35ExitF_retired : s2Step35ExitFBefore.retireSet s2Step35ExitFExtra.toFinset=s2Step35ExitFAfter := by
  unfold Arena.retireSet s2Step35ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step35ExitFBefore,s2Step35ExitGAfter,s2Step35ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step35ExitF_checked : planRowResizeLog s2Step35ExitFBefore s2Step35ExitFRow 250 []=
    some (s2Step35ExitFAfter,s2Step35ExitFOut,shrinkRow 768 s2Step35ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step35ExitFBefore s2Step35ExitFRow 250 s2Step35ExitF_distinct s2Step35ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step35ExitFRow.payload.take 250) s2Step35ExitFRow.sign=s2Step35ExitFOut := by decide +kernel
  have hi : s2Step35ExitFRow.payload.drop 250=s2Step35ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step35ExitF_retired] at result
  exact result
def s2Step35ExitFvBefore : Arena := s2Step35ExitFAfter
def s2Step35ExitFvAfter : Arena := s2Step35ExitFAfter
def s2Step35ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785],770⟩
def s2Step35ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785],770⟩
def s2Step35ExitFvExtra : List Wire := []
theorem s2Step35ExitFv_distinct : (s2Step35ExitFvRow.sign::s2Step35ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step35ExitFv_owned : (s2Step35ExitFvRow.sign::s2Step35ExitFvRow.payload).toFinset⊆s2Step35ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step35ExitFvBefore (fun q => (0≤q ∧ q<762) ∨ (763≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35ExitFv_reserved : s2Step35ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step35ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step35ExitFv_checked : planRowResizeLog s2Step35ExitFvBefore s2Step35ExitFvRow 31 []=
    some (s2Step35ExitFvAfter,s2Step35ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step35ExitFvBefore s2Step35ExitFvAfter s2Step35ExitFvRow 31 []
    s2Step35ExitFv_distinct s2Step35ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step35ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step35ExitFvRow.payload++[]) s2Step35ExitFvRow.sign=s2Step35ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step35ExitGvBefore : Arena := s2Step35ExitFAfter
def s2Step35ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<762) ∨ (763≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step35ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 787],771⟩
def s2Step35ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788],771⟩
def s2Step35ExitGvExtra : List Wire := [787]
theorem s2Step35ExitGv_distinct : (s2Step35ExitGvRow.sign::s2Step35ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step35ExitGv_owned : (s2Step35ExitGvRow.sign::s2Step35ExitGvRow.payload).toFinset⊆s2Step35ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step35ExitGvBefore (fun q => (0≤q ∧ q<762) ∨ (763≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35ExitGv_retired : s2Step35ExitGvBefore.retireSet s2Step35ExitGvExtra.toFinset=s2Step35ExitGvAfter := by
  unfold Arena.retireSet s2Step35ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step35ExitGvBefore,s2Step35ExitFAfter,s2Step35ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step35ExitGv_checked : planRowResizeLog s2Step35ExitGvBefore s2Step35ExitGvRow 30 []=
    some (s2Step35ExitGvAfter,s2Step35ExitGvOut,shrinkRow 771 s2Step35ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step35ExitGvBefore s2Step35ExitGvRow 30 s2Step35ExitGv_distinct s2Step35ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step35ExitGvRow.payload.take 30) s2Step35ExitGvRow.sign=s2Step35ExitGvOut := by decide +kernel
  have hi : s2Step35ExitGvRow.payload.drop 30=s2Step35ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step35ExitGv_retired] at result
  exact result
def s2Step36ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step36ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step36ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790, 791],769⟩
def s2Step36ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249],769⟩
def s2Step36ExitGExtra : List Wire := [790, 791]
theorem s2Step36ExitG_distinct : (s2Step36ExitGRow.sign::s2Step36ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step36ExitG_owned : (s2Step36ExitGRow.sign::s2Step36ExitGRow.payload).toFinset⊆s2Step36ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step36ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36ExitG_retired : s2Step36ExitGBefore.retireSet s2Step36ExitGExtra.toFinset=s2Step36ExitGAfter := by
  unfold Arena.retireSet s2Step36ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step36ExitGBefore,s2Step36ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step36ExitG_checked : planRowResizeLog s2Step36ExitGBefore s2Step36ExitGRow 250 []=
    some (s2Step36ExitGAfter,s2Step36ExitGOut,shrinkRow 769 s2Step36ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step36ExitGBefore s2Step36ExitGRow 250 s2Step36ExitG_distinct s2Step36ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step36ExitGRow.payload.take 250) s2Step36ExitGRow.sign=s2Step36ExitGOut := by decide +kernel
  have hi : s2Step36ExitGRow.payload.drop 250=s2Step36ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step36ExitG_retired] at result
  exact result
def s2Step36ExitFBefore : Arena := s2Step36ExitGAfter
def s2Step36ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step36ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 793, 779],768⟩
def s2Step36ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761],768⟩
def s2Step36ExitFExtra : List Wire := [793, 779]
theorem s2Step36ExitF_distinct : (s2Step36ExitFRow.sign::s2Step36ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step36ExitF_owned : (s2Step36ExitFRow.sign::s2Step36ExitFRow.payload).toFinset⊆s2Step36ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step36ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36ExitF_retired : s2Step36ExitFBefore.retireSet s2Step36ExitFExtra.toFinset=s2Step36ExitFAfter := by
  unfold Arena.retireSet s2Step36ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step36ExitFBefore,s2Step36ExitGAfter,s2Step36ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step36ExitF_checked : planRowResizeLog s2Step36ExitFBefore s2Step36ExitFRow 250 []=
    some (s2Step36ExitFAfter,s2Step36ExitFOut,shrinkRow 768 s2Step36ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step36ExitFBefore s2Step36ExitFRow 250 s2Step36ExitF_distinct s2Step36ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step36ExitFRow.payload.take 250) s2Step36ExitFRow.sign=s2Step36ExitFOut := by decide +kernel
  have hi : s2Step36ExitFRow.payload.drop 250=s2Step36ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step36ExitF_retired] at result
  exact result
def s2Step36ExitFvBefore : Arena := s2Step36ExitFAfter
def s2Step36ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step36ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 780],770⟩
def s2Step36ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785],770⟩
def s2Step36ExitFvExtra : List Wire := [780]
theorem s2Step36ExitFv_distinct : (s2Step36ExitFvRow.sign::s2Step36ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step36ExitFv_owned : (s2Step36ExitFvRow.sign::s2Step36ExitFvRow.payload).toFinset⊆s2Step36ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step36ExitFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36ExitFv_retired : s2Step36ExitFvBefore.retireSet s2Step36ExitFvExtra.toFinset=s2Step36ExitFvAfter := by
  unfold Arena.retireSet s2Step36ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step36ExitFvBefore,s2Step36ExitFAfter,s2Step36ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step36ExitFv_checked : planRowResizeLog s2Step36ExitFvBefore s2Step36ExitFvRow 31 []=
    some (s2Step36ExitFvAfter,s2Step36ExitFvOut,shrinkRow 770 s2Step36ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step36ExitFvBefore s2Step36ExitFvRow 31 s2Step36ExitFv_distinct s2Step36ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step36ExitFvRow.payload.take 31) s2Step36ExitFvRow.sign=s2Step36ExitFvOut := by decide +kernel
  have hi : s2Step36ExitFvRow.payload.drop 31=s2Step36ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step36ExitFv_retired] at result
  exact result
def s2Step36ExitGvBefore : Arena := s2Step36ExitFvAfter
def s2Step36ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step36ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 786],771⟩
def s2Step36ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789],771⟩
def s2Step36ExitGvExtra : List Wire := [786]
theorem s2Step36ExitGv_distinct : (s2Step36ExitGvRow.sign::s2Step36ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step36ExitGv_owned : (s2Step36ExitGvRow.sign::s2Step36ExitGvRow.payload).toFinset⊆s2Step36ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step36ExitGvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36ExitGv_retired : s2Step36ExitGvBefore.retireSet s2Step36ExitGvExtra.toFinset=s2Step36ExitGvAfter := by
  unfold Arena.retireSet s2Step36ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step36ExitGvBefore,s2Step36ExitFvAfter,s2Step36ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step36ExitGv_checked : planRowResizeLog s2Step36ExitGvBefore s2Step36ExitGvRow 31 []=
    some (s2Step36ExitGvAfter,s2Step36ExitGvOut,shrinkRow 771 s2Step36ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step36ExitGvBefore s2Step36ExitGvRow 31 s2Step36ExitGv_distinct s2Step36ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step36ExitGvRow.payload.take 31) s2Step36ExitGvRow.sign=s2Step36ExitGvOut := by decide +kernel
  have hi : s2Step36ExitGvRow.payload.drop 31=s2Step36ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step36ExitGv_retired] at result
  exact result
def s2Step37ExitGBefore : Arena := s2Step36ExitGAfter
def s2Step37ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<249) ∨ (250≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step37ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 786],769⟩
def s2Step37ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248],769⟩
def s2Step37ExitGExtra : List Wire := [249, 786]
theorem s2Step37ExitG_distinct : (s2Step37ExitGRow.sign::s2Step37ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step37ExitG_owned : (s2Step37ExitGRow.sign::s2Step37ExitGRow.payload).toFinset⊆s2Step37ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step37ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37ExitG_retired : s2Step37ExitGBefore.retireSet s2Step37ExitGExtra.toFinset=s2Step37ExitGAfter := by
  unfold Arena.retireSet s2Step37ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step37ExitGBefore,s2Step36ExitGAfter,s2Step37ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step37ExitG_checked : planRowResizeLog s2Step37ExitGBefore s2Step37ExitGRow 249 []=
    some (s2Step37ExitGAfter,s2Step37ExitGOut,shrinkRow 769 s2Step37ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step37ExitGBefore s2Step37ExitGRow 249 s2Step37ExitG_distinct s2Step37ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step37ExitGRow.payload.take 249) s2Step37ExitGRow.sign=s2Step37ExitGOut := by decide +kernel
  have hi : s2Step37ExitGRow.payload.drop 249=s2Step37ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step37ExitG_retired] at result
  exact result
def s2Step37ExitFBefore : Arena := s2Step37ExitGAfter
def s2Step37ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<249) ∨ (250≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step37ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 780],768⟩
def s2Step37ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761],768⟩
def s2Step37ExitFExtra : List Wire := [780]
theorem s2Step37ExitF_distinct : (s2Step37ExitFRow.sign::s2Step37ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step37ExitF_owned : (s2Step37ExitFRow.sign::s2Step37ExitFRow.payload).toFinset⊆s2Step37ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step37ExitFBefore (fun q => (0≤q ∧ q<249) ∨ (250≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37ExitF_retired : s2Step37ExitFBefore.retireSet s2Step37ExitFExtra.toFinset=s2Step37ExitFAfter := by
  unfold Arena.retireSet s2Step37ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step37ExitFBefore,s2Step37ExitGAfter,s2Step37ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step37ExitF_checked : planRowResizeLog s2Step37ExitFBefore s2Step37ExitFRow 250 []=
    some (s2Step37ExitFAfter,s2Step37ExitFOut,shrinkRow 768 s2Step37ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step37ExitFBefore s2Step37ExitFRow 250 s2Step37ExitF_distinct s2Step37ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step37ExitFRow.payload.take 250) s2Step37ExitFRow.sign=s2Step37ExitFOut := by decide +kernel
  have hi : s2Step37ExitFRow.payload.drop 250=s2Step37ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step37ExitF_retired] at result
  exact result
def s2Step37ExitFvBefore : Arena := s2Step37ExitFAfter
def s2Step37ExitFvAfter : Arena := s2Step37ExitFAfter
def s2Step37ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779],770⟩
def s2Step37ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779],770⟩
def s2Step37ExitFvExtra : List Wire := []
theorem s2Step37ExitFv_distinct : (s2Step37ExitFvRow.sign::s2Step37ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step37ExitFv_owned : (s2Step37ExitFvRow.sign::s2Step37ExitFvRow.payload).toFinset⊆s2Step37ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step37ExitFvBefore (fun q => (0≤q ∧ q<249) ∨ (250≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37ExitFv_reserved : s2Step37ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step37ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step37ExitFv_checked : planRowResizeLog s2Step37ExitFvBefore s2Step37ExitFvRow 32 []=
    some (s2Step37ExitFvAfter,s2Step37ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step37ExitFvBefore s2Step37ExitFvAfter s2Step37ExitFvRow 32 []
    s2Step37ExitFv_distinct s2Step37ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step37ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step37ExitFvRow.payload++[]) s2Step37ExitFvRow.sign=s2Step37ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step37ExitGvBefore : Arena := s2Step37ExitFAfter
def s2Step37ExitGvAfter : Arena := s2Step37ExitFAfter
def s2Step37ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793],771⟩
def s2Step37ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793],771⟩
def s2Step37ExitGvExtra : List Wire := []
theorem s2Step37ExitGv_distinct : (s2Step37ExitGvRow.sign::s2Step37ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step37ExitGv_owned : (s2Step37ExitGvRow.sign::s2Step37ExitGvRow.payload).toFinset⊆s2Step37ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step37ExitGvBefore (fun q => (0≤q ∧ q<249) ∨ (250≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37ExitGv_reserved : s2Step37ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step37ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step37ExitGv_checked : planRowResizeLog s2Step37ExitGvBefore s2Step37ExitGvRow 32 []=
    some (s2Step37ExitGvAfter,s2Step37ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step37ExitGvBefore s2Step37ExitGvAfter s2Step37ExitGvRow 32 []
    s2Step37ExitGv_distinct s2Step37ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step37ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step37ExitGvRow.payload++[]) s2Step37ExitGvRow.sign=s2Step37ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step38ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step38ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step38ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 792, 780],769⟩
def s2Step38ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248],769⟩
def s2Step38ExitGExtra : List Wire := [792, 780]
theorem s2Step38ExitG_distinct : (s2Step38ExitGRow.sign::s2Step38ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step38ExitG_owned : (s2Step38ExitGRow.sign::s2Step38ExitGRow.payload).toFinset⊆s2Step38ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step38ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38ExitG_retired : s2Step38ExitGBefore.retireSet s2Step38ExitGExtra.toFinset=s2Step38ExitGAfter := by
  unfold Arena.retireSet s2Step38ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step38ExitGBefore,s2Step38ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step38ExitG_checked : planRowResizeLog s2Step38ExitGBefore s2Step38ExitGRow 249 []=
    some (s2Step38ExitGAfter,s2Step38ExitGOut,shrinkRow 769 s2Step38ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step38ExitGBefore s2Step38ExitGRow 249 s2Step38ExitG_distinct s2Step38ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step38ExitGRow.payload.take 249) s2Step38ExitGRow.sign=s2Step38ExitGOut := by decide +kernel
  have hi : s2Step38ExitGRow.payload.drop 249=s2Step38ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step38ExitG_retired] at result
  exact result
def s2Step38ExitFBefore : Arena := s2Step38ExitGAfter
def s2Step38ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<761) ∨ (762≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step38ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 786],768⟩
def s2Step38ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760],768⟩
def s2Step38ExitFExtra : List Wire := [761, 786]
theorem s2Step38ExitF_distinct : (s2Step38ExitFRow.sign::s2Step38ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step38ExitF_owned : (s2Step38ExitFRow.sign::s2Step38ExitFRow.payload).toFinset⊆s2Step38ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step38ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38ExitF_retired : s2Step38ExitFBefore.retireSet s2Step38ExitFExtra.toFinset=s2Step38ExitFAfter := by
  unfold Arena.retireSet s2Step38ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step38ExitFBefore,s2Step38ExitGAfter,s2Step38ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step38ExitF_checked : planRowResizeLog s2Step38ExitFBefore s2Step38ExitFRow 249 []=
    some (s2Step38ExitFAfter,s2Step38ExitFOut,shrinkRow 768 s2Step38ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step38ExitFBefore s2Step38ExitFRow 249 s2Step38ExitF_distinct s2Step38ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step38ExitFRow.payload.take 249) s2Step38ExitFRow.sign=s2Step38ExitFOut := by decide +kernel
  have hi : s2Step38ExitFRow.payload.drop 249=s2Step38ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step38ExitF_retired] at result
  exact result
def s2Step38ExitFvBefore : Arena := s2Step38ExitFAfter
def s2Step38ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<761) ∨ (762≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step38ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 791],770⟩
def s2Step38ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779],770⟩
def s2Step38ExitFvExtra : List Wire := [791]
theorem s2Step38ExitFv_distinct : (s2Step38ExitFvRow.sign::s2Step38ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step38ExitFv_owned : (s2Step38ExitFvRow.sign::s2Step38ExitFvRow.payload).toFinset⊆s2Step38ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step38ExitFvBefore (fun q => (0≤q ∧ q<761) ∨ (762≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38ExitFv_retired : s2Step38ExitFvBefore.retireSet s2Step38ExitFvExtra.toFinset=s2Step38ExitFvAfter := by
  unfold Arena.retireSet s2Step38ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step38ExitFvBefore,s2Step38ExitFAfter,s2Step38ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step38ExitFv_checked : planRowResizeLog s2Step38ExitFvBefore s2Step38ExitFvRow 32 []=
    some (s2Step38ExitFvAfter,s2Step38ExitFvOut,shrinkRow 770 s2Step38ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step38ExitFvBefore s2Step38ExitFvRow 32 s2Step38ExitFv_distinct s2Step38ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step38ExitFvRow.payload.take 32) s2Step38ExitFvRow.sign=s2Step38ExitFvOut := by decide +kernel
  have hi : s2Step38ExitFvRow.payload.drop 32=s2Step38ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step38ExitFv_retired] at result
  exact result
def s2Step38ExitGvBefore : Arena := s2Step38ExitFvAfter
def s2Step38ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<761) ∨ (762≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step38ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 790],771⟩
def s2Step38ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793],771⟩
def s2Step38ExitGvExtra : List Wire := [790]
theorem s2Step38ExitGv_distinct : (s2Step38ExitGvRow.sign::s2Step38ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step38ExitGv_owned : (s2Step38ExitGvRow.sign::s2Step38ExitGvRow.payload).toFinset⊆s2Step38ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step38ExitGvBefore (fun q => (0≤q ∧ q<761) ∨ (762≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38ExitGv_retired : s2Step38ExitGvBefore.retireSet s2Step38ExitGvExtra.toFinset=s2Step38ExitGvAfter := by
  unfold Arena.retireSet s2Step38ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step38ExitGvBefore,s2Step38ExitFvAfter,s2Step38ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step38ExitGv_checked : planRowResizeLog s2Step38ExitGvBefore s2Step38ExitGvRow 32 []=
    some (s2Step38ExitGvAfter,s2Step38ExitGvOut,shrinkRow 771 s2Step38ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step38ExitGvBefore s2Step38ExitGvRow 32 s2Step38ExitGv_distinct s2Step38ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step38ExitGvRow.payload.take 32) s2Step38ExitGvRow.sign=s2Step38ExitGvOut := by decide +kernel
  have hi : s2Step38ExitGvRow.payload.drop 32=s2Step38ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step38ExitGv_retired] at result
  exact result
def s2Step39ExitGBefore : Arena := s2Step38ExitGAfter
def s2Step39ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<248) ∨ (249≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step39ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 794],769⟩
def s2Step39ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],769⟩
def s2Step39ExitGExtra : List Wire := [248, 794]
theorem s2Step39ExitG_distinct : (s2Step39ExitGRow.sign::s2Step39ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step39ExitG_owned : (s2Step39ExitGRow.sign::s2Step39ExitGRow.payload).toFinset⊆s2Step39ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step39ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39ExitG_retired : s2Step39ExitGBefore.retireSet s2Step39ExitGExtra.toFinset=s2Step39ExitGAfter := by
  unfold Arena.retireSet s2Step39ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step39ExitGBefore,s2Step38ExitGAfter,s2Step39ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step39ExitG_checked : planRowResizeLog s2Step39ExitGBefore s2Step39ExitGRow 248 []=
    some (s2Step39ExitGAfter,s2Step39ExitGOut,shrinkRow 769 s2Step39ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step39ExitGBefore s2Step39ExitGRow 248 s2Step39ExitG_distinct s2Step39ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step39ExitGRow.payload.take 248) s2Step39ExitGRow.sign=s2Step39ExitGOut := by decide +kernel
  have hi : s2Step39ExitGRow.payload.drop 248=s2Step39ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step39ExitG_retired] at result
  exact result
def s2Step39ExitFBefore : Arena := s2Step39ExitGAfter
def s2Step39ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<248) ∨ (249≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step39ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 790],768⟩
def s2Step39ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760],768⟩
def s2Step39ExitFExtra : List Wire := [790]
theorem s2Step39ExitF_distinct : (s2Step39ExitFRow.sign::s2Step39ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step39ExitF_owned : (s2Step39ExitFRow.sign::s2Step39ExitFRow.payload).toFinset⊆s2Step39ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step39ExitFBefore (fun q => (0≤q ∧ q<248) ∨ (249≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39ExitF_retired : s2Step39ExitFBefore.retireSet s2Step39ExitFExtra.toFinset=s2Step39ExitFAfter := by
  unfold Arena.retireSet s2Step39ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step39ExitFBefore,s2Step39ExitGAfter,s2Step39ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step39ExitF_checked : planRowResizeLog s2Step39ExitFBefore s2Step39ExitFRow 249 []=
    some (s2Step39ExitFAfter,s2Step39ExitFOut,shrinkRow 768 s2Step39ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step39ExitFBefore s2Step39ExitFRow 249 s2Step39ExitF_distinct s2Step39ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step39ExitFRow.payload.take 249) s2Step39ExitFRow.sign=s2Step39ExitFOut := by decide +kernel
  have hi : s2Step39ExitFRow.payload.drop 249=s2Step39ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step39ExitF_retired] at result
  exact result
def s2Step39ExitFvBefore : Arena := s2Step39ExitFAfter
def s2Step39ExitFvAfter : Arena := s2Step39ExitFAfter
def s2Step39ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786],770⟩
def s2Step39ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786],770⟩
def s2Step39ExitFvExtra : List Wire := []
theorem s2Step39ExitFv_distinct : (s2Step39ExitFvRow.sign::s2Step39ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step39ExitFv_owned : (s2Step39ExitFvRow.sign::s2Step39ExitFvRow.payload).toFinset⊆s2Step39ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step39ExitFvBefore (fun q => (0≤q ∧ q<248) ∨ (249≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39ExitFv_reserved : s2Step39ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step39ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step39ExitFv_checked : planRowResizeLog s2Step39ExitFvBefore s2Step39ExitFvRow 33 []=
    some (s2Step39ExitFvAfter,s2Step39ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step39ExitFvBefore s2Step39ExitFvAfter s2Step39ExitFvRow 33 []
    s2Step39ExitFv_distinct s2Step39ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step39ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step39ExitFvRow.payload++[]) s2Step39ExitFvRow.sign=s2Step39ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step39ExitGvBefore : Arena := s2Step39ExitFAfter
def s2Step39ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<248) ∨ (249≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step39ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 791],771⟩
def s2Step39ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793],771⟩
def s2Step39ExitGvExtra : List Wire := [791]
theorem s2Step39ExitGv_distinct : (s2Step39ExitGvRow.sign::s2Step39ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step39ExitGv_owned : (s2Step39ExitGvRow.sign::s2Step39ExitGvRow.payload).toFinset⊆s2Step39ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step39ExitGvBefore (fun q => (0≤q ∧ q<248) ∨ (249≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39ExitGv_retired : s2Step39ExitGvBefore.retireSet s2Step39ExitGvExtra.toFinset=s2Step39ExitGvAfter := by
  unfold Arena.retireSet s2Step39ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step39ExitGvBefore,s2Step39ExitFAfter,s2Step39ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step39ExitGv_checked : planRowResizeLog s2Step39ExitGvBefore s2Step39ExitGvRow 32 []=
    some (s2Step39ExitGvAfter,s2Step39ExitGvOut,shrinkRow 771 s2Step39ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step39ExitGvBefore s2Step39ExitGvRow 32 s2Step39ExitGv_distinct s2Step39ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step39ExitGvRow.payload.take 32) s2Step39ExitGvRow.sign=s2Step39ExitGvOut := by decide +kernel
  have hi : s2Step39ExitGvRow.payload.drop 32=s2Step39ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step39ExitGv_retired] at result
  exact result
def s2Step40ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step40ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step40ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 787, 790],769⟩
def s2Step40ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],769⟩
def s2Step40ExitGExtra : List Wire := [787, 790]
theorem s2Step40ExitG_distinct : (s2Step40ExitGRow.sign::s2Step40ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step40ExitG_owned : (s2Step40ExitGRow.sign::s2Step40ExitGRow.payload).toFinset⊆s2Step40ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step40ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40ExitG_retired : s2Step40ExitGBefore.retireSet s2Step40ExitGExtra.toFinset=s2Step40ExitGAfter := by
  unfold Arena.retireSet s2Step40ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step40ExitGBefore,s2Step40ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step40ExitG_checked : planRowResizeLog s2Step40ExitGBefore s2Step40ExitGRow 248 []=
    some (s2Step40ExitGAfter,s2Step40ExitGOut,shrinkRow 769 s2Step40ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step40ExitGBefore s2Step40ExitGRow 248 s2Step40ExitG_distinct s2Step40ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step40ExitGRow.payload.take 248) s2Step40ExitGRow.sign=s2Step40ExitGOut := by decide +kernel
  have hi : s2Step40ExitGRow.payload.drop 248=s2Step40ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step40ExitG_retired] at result
  exact result
def s2Step40ExitFBefore : Arena := s2Step40ExitGAfter
def s2Step40ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<760) ∨ (761≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step40ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 794],768⟩
def s2Step40ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759],768⟩
def s2Step40ExitFExtra : List Wire := [760, 794]
theorem s2Step40ExitF_distinct : (s2Step40ExitFRow.sign::s2Step40ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step40ExitF_owned : (s2Step40ExitFRow.sign::s2Step40ExitFRow.payload).toFinset⊆s2Step40ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step40ExitFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40ExitF_retired : s2Step40ExitFBefore.retireSet s2Step40ExitFExtra.toFinset=s2Step40ExitFAfter := by
  unfold Arena.retireSet s2Step40ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step40ExitFBefore,s2Step40ExitGAfter,s2Step40ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step40ExitF_checked : planRowResizeLog s2Step40ExitFBefore s2Step40ExitFRow 248 []=
    some (s2Step40ExitFAfter,s2Step40ExitFOut,shrinkRow 768 s2Step40ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step40ExitFBefore s2Step40ExitFRow 248 s2Step40ExitF_distinct s2Step40ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step40ExitFRow.payload.take 248) s2Step40ExitFRow.sign=s2Step40ExitFOut := by decide +kernel
  have hi : s2Step40ExitFRow.payload.drop 248=s2Step40ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step40ExitF_retired] at result
  exact result
def s2Step40ExitFvBefore : Arena := s2Step40ExitFAfter
def s2Step40ExitFvAfter : Arena := s2Step40ExitFAfter
def s2Step40ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩
def s2Step40ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩
def s2Step40ExitFvExtra : List Wire := []
theorem s2Step40ExitFv_distinct : (s2Step40ExitFvRow.sign::s2Step40ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step40ExitFv_owned : (s2Step40ExitFvRow.sign::s2Step40ExitFvRow.payload).toFinset⊆s2Step40ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step40ExitFvBefore (fun q => (0≤q ∧ q<760) ∨ (761≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40ExitFv_reserved : s2Step40ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step40ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step40ExitFv_checked : planRowResizeLog s2Step40ExitFvBefore s2Step40ExitFvRow 34 []=
    some (s2Step40ExitFvAfter,s2Step40ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step40ExitFvBefore s2Step40ExitFvAfter s2Step40ExitFvRow 34 []
    s2Step40ExitFv_distinct s2Step40ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step40ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step40ExitFvRow.payload++[]) s2Step40ExitFvRow.sign=s2Step40ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step40ExitGvBefore : Arena := s2Step40ExitFAfter
def s2Step40ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<760) ∨ (761≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step40ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 792],771⟩
def s2Step40ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796],771⟩
def s2Step40ExitGvExtra : List Wire := [792]
theorem s2Step40ExitGv_distinct : (s2Step40ExitGvRow.sign::s2Step40ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step40ExitGv_owned : (s2Step40ExitGvRow.sign::s2Step40ExitGvRow.payload).toFinset⊆s2Step40ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step40ExitGvBefore (fun q => (0≤q ∧ q<760) ∨ (761≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40ExitGv_retired : s2Step40ExitGvBefore.retireSet s2Step40ExitGvExtra.toFinset=s2Step40ExitGvAfter := by
  unfold Arena.retireSet s2Step40ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step40ExitGvBefore,s2Step40ExitFAfter,s2Step40ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step40ExitGv_checked : planRowResizeLog s2Step40ExitGvBefore s2Step40ExitGvRow 33 []=
    some (s2Step40ExitGvAfter,s2Step40ExitGvOut,shrinkRow 771 s2Step40ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step40ExitGvBefore s2Step40ExitGvRow 33 s2Step40ExitGv_distinct s2Step40ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step40ExitGvRow.payload.take 33) s2Step40ExitGvRow.sign=s2Step40ExitGvOut := by decide +kernel
  have hi : s2Step40ExitGvRow.payload.drop 33=s2Step40ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step40ExitGv_retired] at result
  exact result
def s2Step41ExitGBefore : Arena := s2Step40ExitGBefore
def s2Step41ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step41ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 792],769⟩
def s2Step41ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],769⟩
def s2Step41ExitGExtra : List Wire := [792]
theorem s2Step41ExitG_distinct : (s2Step41ExitGRow.sign::s2Step41ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step41ExitG_owned : (s2Step41ExitGRow.sign::s2Step41ExitGRow.payload).toFinset⊆s2Step41ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step41ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41ExitG_retired : s2Step41ExitGBefore.retireSet s2Step41ExitGExtra.toFinset=s2Step41ExitGAfter := by
  unfold Arena.retireSet s2Step41ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step41ExitGBefore,s2Step40ExitGBefore,s2Step41ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step41ExitG_checked : planRowResizeLog s2Step41ExitGBefore s2Step41ExitGRow 248 []=
    some (s2Step41ExitGAfter,s2Step41ExitGOut,shrinkRow 769 s2Step41ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step41ExitGBefore s2Step41ExitGRow 248 s2Step41ExitG_distinct s2Step41ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step41ExitGRow.payload.take 248) s2Step41ExitGRow.sign=s2Step41ExitGOut := by decide +kernel
  have hi : s2Step41ExitGRow.payload.drop 248=s2Step41ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step41ExitG_retired] at result
  exact result
def s2Step41ExitFBefore : Arena := s2Step41ExitGAfter
def s2Step41ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step41ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 794],768⟩
def s2Step41ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759],768⟩
def s2Step41ExitFExtra : List Wire := [794]
theorem s2Step41ExitF_distinct : (s2Step41ExitFRow.sign::s2Step41ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step41ExitF_owned : (s2Step41ExitFRow.sign::s2Step41ExitFRow.payload).toFinset⊆s2Step41ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step41ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41ExitF_retired : s2Step41ExitFBefore.retireSet s2Step41ExitFExtra.toFinset=s2Step41ExitFAfter := by
  unfold Arena.retireSet s2Step41ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step41ExitFBefore,s2Step41ExitGAfter,s2Step41ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step41ExitF_checked : planRowResizeLog s2Step41ExitFBefore s2Step41ExitFRow 248 []=
    some (s2Step41ExitFAfter,s2Step41ExitFOut,shrinkRow 768 s2Step41ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step41ExitFBefore s2Step41ExitFRow 248 s2Step41ExitF_distinct s2Step41ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step41ExitFRow.payload.take 248) s2Step41ExitFRow.sign=s2Step41ExitFOut := by decide +kernel
  have hi : s2Step41ExitFRow.payload.drop 248=s2Step41ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step41ExitF_retired] at result
  exact result
def s2Step41ExitFvBefore : Arena := s2Step41ExitFAfter
def s2Step41ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step41ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 790],770⟩
def s2Step41ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩
def s2Step41ExitFvExtra : List Wire := [790]
theorem s2Step41ExitFv_distinct : (s2Step41ExitFvRow.sign::s2Step41ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step41ExitFv_owned : (s2Step41ExitFvRow.sign::s2Step41ExitFvRow.payload).toFinset⊆s2Step41ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step41ExitFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41ExitFv_retired : s2Step41ExitFvBefore.retireSet s2Step41ExitFvExtra.toFinset=s2Step41ExitFvAfter := by
  unfold Arena.retireSet s2Step41ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step41ExitFvBefore,s2Step41ExitFAfter,s2Step41ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step41ExitFv_checked : planRowResizeLog s2Step41ExitFvBefore s2Step41ExitFvRow 34 []=
    some (s2Step41ExitFvAfter,s2Step41ExitFvOut,shrinkRow 770 s2Step41ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step41ExitFvBefore s2Step41ExitFvRow 34 s2Step41ExitFv_distinct s2Step41ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step41ExitFvRow.payload.take 34) s2Step41ExitFvRow.sign=s2Step41ExitFvOut := by decide +kernel
  have hi : s2Step41ExitFvRow.payload.drop 34=s2Step41ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step41ExitFv_retired] at result
  exact result
def s2Step41ExitGvBefore : Arena := s2Step41ExitFvAfter
def s2Step41ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step41ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 791, 787],771⟩
def s2Step41ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796],771⟩
def s2Step41ExitGvExtra : List Wire := [791, 787]
theorem s2Step41ExitGv_distinct : (s2Step41ExitGvRow.sign::s2Step41ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step41ExitGv_owned : (s2Step41ExitGvRow.sign::s2Step41ExitGvRow.payload).toFinset⊆s2Step41ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step41ExitGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41ExitGv_retired : s2Step41ExitGvBefore.retireSet s2Step41ExitGvExtra.toFinset=s2Step41ExitGvAfter := by
  unfold Arena.retireSet s2Step41ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step41ExitGvBefore,s2Step41ExitFvAfter,s2Step41ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step41ExitGv_checked : planRowResizeLog s2Step41ExitGvBefore s2Step41ExitGvRow 33 []=
    some (s2Step41ExitGvAfter,s2Step41ExitGvOut,shrinkRow 771 s2Step41ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step41ExitGvBefore s2Step41ExitGvRow 33 s2Step41ExitGv_distinct s2Step41ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step41ExitGvRow.payload.take 33) s2Step41ExitGvRow.sign=s2Step41ExitGvOut := by decide +kernel
  have hi : s2Step41ExitGvRow.payload.drop 33=s2Step41ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step41ExitGv_retired] at result
  exact result
def s2Step42ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step42ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<247) ∨ (248≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step42ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 787],769⟩
def s2Step42ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246],769⟩
def s2Step42ExitGExtra : List Wire := [247, 787]
theorem s2Step42ExitG_distinct : (s2Step42ExitGRow.sign::s2Step42ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step42ExitG_owned : (s2Step42ExitGRow.sign::s2Step42ExitGRow.payload).toFinset⊆s2Step42ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step42ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42ExitG_retired : s2Step42ExitGBefore.retireSet s2Step42ExitGExtra.toFinset=s2Step42ExitGAfter := by
  unfold Arena.retireSet s2Step42ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step42ExitGBefore,s2Step42ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step42ExitG_checked : planRowResizeLog s2Step42ExitGBefore s2Step42ExitGRow 247 []=
    some (s2Step42ExitGAfter,s2Step42ExitGOut,shrinkRow 769 s2Step42ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step42ExitGBefore s2Step42ExitGRow 247 s2Step42ExitG_distinct s2Step42ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step42ExitGRow.payload.take 247) s2Step42ExitGRow.sign=s2Step42ExitGOut := by decide +kernel
  have hi : s2Step42ExitGRow.payload.drop 247=s2Step42ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step42ExitG_retired] at result
  exact result
def s2Step42ExitFBefore : Arena := s2Step42ExitGAfter
def s2Step42ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<247) ∨ (248≤q ∧ q<759) ∨ (760≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step42ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 790],768⟩
def s2Step42ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758],768⟩
def s2Step42ExitFExtra : List Wire := [759, 790]
theorem s2Step42ExitF_distinct : (s2Step42ExitFRow.sign::s2Step42ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step42ExitF_owned : (s2Step42ExitFRow.sign::s2Step42ExitFRow.payload).toFinset⊆s2Step42ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step42ExitFBefore (fun q => (0≤q ∧ q<247) ∨ (248≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42ExitF_retired : s2Step42ExitFBefore.retireSet s2Step42ExitFExtra.toFinset=s2Step42ExitFAfter := by
  unfold Arena.retireSet s2Step42ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step42ExitFBefore,s2Step42ExitGAfter,s2Step42ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step42ExitF_checked : planRowResizeLog s2Step42ExitFBefore s2Step42ExitFRow 247 []=
    some (s2Step42ExitFAfter,s2Step42ExitFOut,shrinkRow 768 s2Step42ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step42ExitFBefore s2Step42ExitFRow 247 s2Step42ExitF_distinct s2Step42ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step42ExitFRow.payload.take 247) s2Step42ExitFRow.sign=s2Step42ExitFOut := by decide +kernel
  have hi : s2Step42ExitFRow.payload.drop 247=s2Step42ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step42ExitF_retired] at result
  exact result
def s2Step42ExitFvBefore : Arena := s2Step42ExitFAfter
def s2Step42ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<247) ∨ (248≤q ∧ q<759) ∨ (760≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step42ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 792],770⟩
def s2Step42ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩
def s2Step42ExitFvExtra : List Wire := [792]
theorem s2Step42ExitFv_distinct : (s2Step42ExitFvRow.sign::s2Step42ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step42ExitFv_owned : (s2Step42ExitFvRow.sign::s2Step42ExitFvRow.payload).toFinset⊆s2Step42ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step42ExitFvBefore (fun q => (0≤q ∧ q<247) ∨ (248≤q ∧ q<759) ∨ (760≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42ExitFv_retired : s2Step42ExitFvBefore.retireSet s2Step42ExitFvExtra.toFinset=s2Step42ExitFvAfter := by
  unfold Arena.retireSet s2Step42ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step42ExitFvBefore,s2Step42ExitFAfter,s2Step42ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step42ExitFv_checked : planRowResizeLog s2Step42ExitFvBefore s2Step42ExitFvRow 34 []=
    some (s2Step42ExitFvAfter,s2Step42ExitFvOut,shrinkRow 770 s2Step42ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step42ExitFvBefore s2Step42ExitFvRow 34 s2Step42ExitFv_distinct s2Step42ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step42ExitFvRow.payload.take 34) s2Step42ExitFvRow.sign=s2Step42ExitFvOut := by decide +kernel
  have hi : s2Step42ExitFvRow.payload.drop 34=s2Step42ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step42ExitFv_retired] at result
  exact result
def s2Step42ExitGvBefore : Arena := s2Step42ExitFvAfter
def s2Step42ExitGvAfter : Arena := s2Step42ExitFvAfter
def s2Step42ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩
def s2Step42ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩
def s2Step42ExitGvExtra : List Wire := []
theorem s2Step42ExitGv_distinct : (s2Step42ExitGvRow.sign::s2Step42ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step42ExitGv_owned : (s2Step42ExitGvRow.sign::s2Step42ExitGvRow.payload).toFinset⊆s2Step42ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step42ExitGvBefore (fun q => (0≤q ∧ q<247) ∨ (248≤q ∧ q<759) ∨ (760≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42ExitGv_reserved : s2Step42ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step42ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step42ExitGv_checked : planRowResizeLog s2Step42ExitGvBefore s2Step42ExitGvRow 35 []=
    some (s2Step42ExitGvAfter,s2Step42ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step42ExitGvBefore s2Step42ExitGvAfter s2Step42ExitGvRow 35 []
    s2Step42ExitGv_distinct s2Step42ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step42ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step42ExitGvRow.payload++[]) s2Step42ExitGvRow.sign=s2Step42ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step43ExitGBefore : Arena := s2Step42ExitGBefore
def s2Step43ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<246) ∨ (247≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step43ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 800],769⟩
def s2Step43ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245],769⟩
def s2Step43ExitGExtra : List Wire := [246, 800]
theorem s2Step43ExitG_distinct : (s2Step43ExitGRow.sign::s2Step43ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step43ExitG_owned : (s2Step43ExitGRow.sign::s2Step43ExitGRow.payload).toFinset⊆s2Step43ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step43ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43ExitG_retired : s2Step43ExitGBefore.retireSet s2Step43ExitGExtra.toFinset=s2Step43ExitGAfter := by
  unfold Arena.retireSet s2Step43ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step43ExitGBefore,s2Step42ExitGBefore,s2Step43ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step43ExitG_checked : planRowResizeLog s2Step43ExitGBefore s2Step43ExitGRow 246 []=
    some (s2Step43ExitGAfter,s2Step43ExitGOut,shrinkRow 769 s2Step43ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step43ExitGBefore s2Step43ExitGRow 246 s2Step43ExitG_distinct s2Step43ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step43ExitGRow.payload.take 246) s2Step43ExitGRow.sign=s2Step43ExitGOut := by decide +kernel
  have hi : s2Step43ExitGRow.payload.drop 246=s2Step43ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step43ExitG_retired] at result
  exact result
def s2Step43ExitFBefore : Arena := s2Step43ExitGAfter
def s2Step43ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<246) ∨ (247≤q ∧ q<758) ∨ (759≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step43ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 792],768⟩
def s2Step43ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757],768⟩
def s2Step43ExitFExtra : List Wire := [758, 792]
theorem s2Step43ExitF_distinct : (s2Step43ExitFRow.sign::s2Step43ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step43ExitF_owned : (s2Step43ExitFRow.sign::s2Step43ExitFRow.payload).toFinset⊆s2Step43ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step43ExitFBefore (fun q => (0≤q ∧ q<246) ∨ (247≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43ExitF_retired : s2Step43ExitFBefore.retireSet s2Step43ExitFExtra.toFinset=s2Step43ExitFAfter := by
  unfold Arena.retireSet s2Step43ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step43ExitFBefore,s2Step43ExitGAfter,s2Step43ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step43ExitF_checked : planRowResizeLog s2Step43ExitFBefore s2Step43ExitFRow 246 []=
    some (s2Step43ExitFAfter,s2Step43ExitFOut,shrinkRow 768 s2Step43ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step43ExitFBefore s2Step43ExitFRow 246 s2Step43ExitF_distinct s2Step43ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step43ExitFRow.payload.take 246) s2Step43ExitFRow.sign=s2Step43ExitFOut := by decide +kernel
  have hi : s2Step43ExitFRow.payload.drop 246=s2Step43ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step43ExitF_retired] at result
  exact result
def s2Step43ExitFvBefore : Arena := s2Step43ExitFAfter
def s2Step43ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<246) ∨ (247≤q ∧ q<758) ∨ (759≤q ∧ q<787) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step43ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 791, 787],770⟩
def s2Step43ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩
def s2Step43ExitFvExtra : List Wire := [791, 787]
theorem s2Step43ExitFv_distinct : (s2Step43ExitFvRow.sign::s2Step43ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step43ExitFv_owned : (s2Step43ExitFvRow.sign::s2Step43ExitFvRow.payload).toFinset⊆s2Step43ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step43ExitFvBefore (fun q => (0≤q ∧ q<246) ∨ (247≤q ∧ q<758) ∨ (759≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43ExitFv_retired : s2Step43ExitFvBefore.retireSet s2Step43ExitFvExtra.toFinset=s2Step43ExitFvAfter := by
  unfold Arena.retireSet s2Step43ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step43ExitFvBefore,s2Step43ExitFAfter,s2Step43ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step43ExitFv_checked : planRowResizeLog s2Step43ExitFvBefore s2Step43ExitFvRow 34 []=
    some (s2Step43ExitFvAfter,s2Step43ExitFvOut,shrinkRow 770 s2Step43ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step43ExitFvBefore s2Step43ExitFvRow 34 s2Step43ExitFv_distinct s2Step43ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step43ExitFvRow.payload.take 34) s2Step43ExitFvRow.sign=s2Step43ExitFvOut := by decide +kernel
  have hi : s2Step43ExitFvRow.payload.drop 34=s2Step43ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step43ExitFv_retired] at result
  exact result
def s2Step43ExitGvBefore : Arena := s2Step43ExitFvAfter
def s2Step43ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<246) ∨ (247≤q ∧ q<758) ∨ (759≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step43ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 790],771⟩
def s2Step43ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩
def s2Step43ExitGvExtra : List Wire := [790]
theorem s2Step43ExitGv_distinct : (s2Step43ExitGvRow.sign::s2Step43ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step43ExitGv_owned : (s2Step43ExitGvRow.sign::s2Step43ExitGvRow.payload).toFinset⊆s2Step43ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step43ExitGvBefore (fun q => (0≤q ∧ q<246) ∨ (247≤q ∧ q<758) ∨ (759≤q ∧ q<787) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43ExitGv_retired : s2Step43ExitGvBefore.retireSet s2Step43ExitGvExtra.toFinset=s2Step43ExitGvAfter := by
  unfold Arena.retireSet s2Step43ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step43ExitGvBefore,s2Step43ExitFvAfter,s2Step43ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step43ExitGv_checked : planRowResizeLog s2Step43ExitGvBefore s2Step43ExitGvRow 35 []=
    some (s2Step43ExitGvAfter,s2Step43ExitGvOut,shrinkRow 771 s2Step43ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step43ExitGvBefore s2Step43ExitGvRow 35 s2Step43ExitGv_distinct s2Step43ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step43ExitGvRow.payload.take 35) s2Step43ExitGvRow.sign=s2Step43ExitGvOut := by decide +kernel
  have hi : s2Step43ExitGvRow.payload.drop 35=s2Step43ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step43ExitGv_retired] at result
  exact result
def s2Step44ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step44ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<245) ∨ (246≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step44ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 802],769⟩
def s2Step44ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244],769⟩
def s2Step44ExitGExtra : List Wire := [245, 802]
theorem s2Step44ExitG_distinct : (s2Step44ExitGRow.sign::s2Step44ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step44ExitG_owned : (s2Step44ExitGRow.sign::s2Step44ExitGRow.payload).toFinset⊆s2Step44ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step44ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44ExitG_retired : s2Step44ExitGBefore.retireSet s2Step44ExitGExtra.toFinset=s2Step44ExitGAfter := by
  unfold Arena.retireSet s2Step44ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step44ExitGBefore,s2Step44ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step44ExitG_checked : planRowResizeLog s2Step44ExitGBefore s2Step44ExitGRow 245 []=
    some (s2Step44ExitGAfter,s2Step44ExitGOut,shrinkRow 769 s2Step44ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step44ExitGBefore s2Step44ExitGRow 245 s2Step44ExitG_distinct s2Step44ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step44ExitGRow.payload.take 245) s2Step44ExitGRow.sign=s2Step44ExitGOut := by decide +kernel
  have hi : s2Step44ExitGRow.payload.drop 245=s2Step44ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step44ExitG_retired] at result
  exact result
def s2Step44ExitFBefore : Arena := s2Step44ExitGAfter
def s2Step44ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<245) ∨ (246≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step44ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 790],768⟩
def s2Step44ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757],768⟩
def s2Step44ExitFExtra : List Wire := [790]
theorem s2Step44ExitF_distinct : (s2Step44ExitFRow.sign::s2Step44ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step44ExitF_owned : (s2Step44ExitFRow.sign::s2Step44ExitFRow.payload).toFinset⊆s2Step44ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step44ExitFBefore (fun q => (0≤q ∧ q<245) ∨ (246≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44ExitF_retired : s2Step44ExitFBefore.retireSet s2Step44ExitFExtra.toFinset=s2Step44ExitFAfter := by
  unfold Arena.retireSet s2Step44ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step44ExitFBefore,s2Step44ExitGAfter,s2Step44ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step44ExitF_checked : planRowResizeLog s2Step44ExitFBefore s2Step44ExitFRow 246 []=
    some (s2Step44ExitFAfter,s2Step44ExitFOut,shrinkRow 768 s2Step44ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step44ExitFBefore s2Step44ExitFRow 246 s2Step44ExitF_distinct s2Step44ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step44ExitFRow.payload.take 246) s2Step44ExitFRow.sign=s2Step44ExitFOut := by decide +kernel
  have hi : s2Step44ExitFRow.payload.drop 246=s2Step44ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step44ExitF_retired] at result
  exact result
def s2Step44ExitFvBefore : Arena := s2Step44ExitFAfter
def s2Step44ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<245) ∨ (246≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step44ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 787],770⟩
def s2Step44ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799],770⟩
def s2Step44ExitFvExtra : List Wire := [787]
theorem s2Step44ExitFv_distinct : (s2Step44ExitFvRow.sign::s2Step44ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step44ExitFv_owned : (s2Step44ExitFvRow.sign::s2Step44ExitFvRow.payload).toFinset⊆s2Step44ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step44ExitFvBefore (fun q => (0≤q ∧ q<245) ∨ (246≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44ExitFv_retired : s2Step44ExitFvBefore.retireSet s2Step44ExitFvExtra.toFinset=s2Step44ExitFvAfter := by
  unfold Arena.retireSet s2Step44ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step44ExitFvBefore,s2Step44ExitFAfter,s2Step44ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step44ExitFv_checked : planRowResizeLog s2Step44ExitFvBefore s2Step44ExitFvRow 35 []=
    some (s2Step44ExitFvAfter,s2Step44ExitFvOut,shrinkRow 770 s2Step44ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step44ExitFvBefore s2Step44ExitFvRow 35 s2Step44ExitFv_distinct s2Step44ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step44ExitFvRow.payload.take 35) s2Step44ExitFvRow.sign=s2Step44ExitFvOut := by decide +kernel
  have hi : s2Step44ExitFvRow.payload.drop 35=s2Step44ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step44ExitFv_retired] at result
  exact result
def s2Step44ExitGvBefore : Arena := s2Step44ExitFvAfter
def s2Step44ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<245) ∨ (246≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step44ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 791],771⟩
def s2Step44ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩
def s2Step44ExitGvExtra : List Wire := [791]
theorem s2Step44ExitGv_distinct : (s2Step44ExitGvRow.sign::s2Step44ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step44ExitGv_owned : (s2Step44ExitGvRow.sign::s2Step44ExitGvRow.payload).toFinset⊆s2Step44ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step44ExitGvBefore (fun q => (0≤q ∧ q<245) ∨ (246≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44ExitGv_retired : s2Step44ExitGvBefore.retireSet s2Step44ExitGvExtra.toFinset=s2Step44ExitGvAfter := by
  unfold Arena.retireSet s2Step44ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step44ExitGvBefore,s2Step44ExitFvAfter,s2Step44ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step44ExitGv_checked : planRowResizeLog s2Step44ExitGvBefore s2Step44ExitGvRow 35 []=
    some (s2Step44ExitGvAfter,s2Step44ExitGvOut,shrinkRow 771 s2Step44ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step44ExitGvBefore s2Step44ExitGvRow 35 s2Step44ExitGv_distinct s2Step44ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step44ExitGvRow.payload.take 35) s2Step44ExitGvRow.sign=s2Step44ExitGvOut := by decide +kernel
  have hi : s2Step44ExitGvRow.payload.drop 35=s2Step44ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step44ExitGv_retired] at result
  exact result
def s2Step45ExitGBefore : Arena := s2Step44ExitGBefore
def s2Step45ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step45ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 801, 791],769⟩
def s2Step45ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244],769⟩
def s2Step45ExitGExtra : List Wire := [801, 791]
theorem s2Step45ExitG_distinct : (s2Step45ExitGRow.sign::s2Step45ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step45ExitG_owned : (s2Step45ExitGRow.sign::s2Step45ExitGRow.payload).toFinset⊆s2Step45ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step45ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45ExitG_retired : s2Step45ExitGBefore.retireSet s2Step45ExitGExtra.toFinset=s2Step45ExitGAfter := by
  unfold Arena.retireSet s2Step45ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step45ExitGBefore,s2Step44ExitGBefore,s2Step45ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step45ExitG_checked : planRowResizeLog s2Step45ExitGBefore s2Step45ExitGRow 245 []=
    some (s2Step45ExitGAfter,s2Step45ExitGOut,shrinkRow 769 s2Step45ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step45ExitGBefore s2Step45ExitGRow 245 s2Step45ExitG_distinct s2Step45ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step45ExitGRow.payload.take 245) s2Step45ExitGRow.sign=s2Step45ExitGOut := by decide +kernel
  have hi : s2Step45ExitGRow.payload.drop 245=s2Step45ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step45ExitG_retired] at result
  exact result
def s2Step45ExitFBefore : Arena := s2Step45ExitGAfter
def s2Step45ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<757) ∨ (758≤q ∧ q<787) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step45ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 787],768⟩
def s2Step45ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756],768⟩
def s2Step45ExitFExtra : List Wire := [757, 787]
theorem s2Step45ExitF_distinct : (s2Step45ExitFRow.sign::s2Step45ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step45ExitF_owned : (s2Step45ExitFRow.sign::s2Step45ExitFRow.payload).toFinset⊆s2Step45ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step45ExitFBefore (fun q => (0≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45ExitF_retired : s2Step45ExitFBefore.retireSet s2Step45ExitFExtra.toFinset=s2Step45ExitFAfter := by
  unfold Arena.retireSet s2Step45ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step45ExitFBefore,s2Step45ExitGAfter,s2Step45ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step45ExitF_checked : planRowResizeLog s2Step45ExitFBefore s2Step45ExitFRow 245 []=
    some (s2Step45ExitFAfter,s2Step45ExitFOut,shrinkRow 768 s2Step45ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step45ExitFBefore s2Step45ExitFRow 245 s2Step45ExitF_distinct s2Step45ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step45ExitFRow.payload.take 245) s2Step45ExitFRow.sign=s2Step45ExitFOut := by decide +kernel
  have hi : s2Step45ExitFRow.payload.drop 245=s2Step45ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step45ExitF_retired] at result
  exact result
def s2Step45ExitFvBefore : Arena := s2Step45ExitFAfter
def s2Step45ExitFvAfter : Arena := s2Step45ExitFAfter
def s2Step45ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802],770⟩
def s2Step45ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802],770⟩
def s2Step45ExitFvExtra : List Wire := []
theorem s2Step45ExitFv_distinct : (s2Step45ExitFvRow.sign::s2Step45ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step45ExitFv_owned : (s2Step45ExitFvRow.sign::s2Step45ExitFvRow.payload).toFinset⊆s2Step45ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step45ExitFvBefore (fun q => (0≤q ∧ q<757) ∨ (758≤q ∧ q<787) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45ExitFv_reserved : s2Step45ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step45ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step45ExitFv_checked : planRowResizeLog s2Step45ExitFvBefore s2Step45ExitFvRow 36 []=
    some (s2Step45ExitFvAfter,s2Step45ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step45ExitFvBefore s2Step45ExitFvAfter s2Step45ExitFvRow 36 []
    s2Step45ExitFv_distinct s2Step45ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step45ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step45ExitFvRow.payload++[]) s2Step45ExitFvRow.sign=s2Step45ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step45ExitGvBefore : Arena := s2Step45ExitFAfter
def s2Step45ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<757) ∨ (758≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step45ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 790],771⟩
def s2Step45ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩
def s2Step45ExitGvExtra : List Wire := [790]
theorem s2Step45ExitGv_distinct : (s2Step45ExitGvRow.sign::s2Step45ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step45ExitGv_owned : (s2Step45ExitGvRow.sign::s2Step45ExitGvRow.payload).toFinset⊆s2Step45ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step45ExitGvBefore (fun q => (0≤q ∧ q<757) ∨ (758≤q ∧ q<787) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45ExitGv_retired : s2Step45ExitGvBefore.retireSet s2Step45ExitGvExtra.toFinset=s2Step45ExitGvAfter := by
  unfold Arena.retireSet s2Step45ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step45ExitGvBefore,s2Step45ExitFAfter,s2Step45ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step45ExitGv_checked : planRowResizeLog s2Step45ExitGvBefore s2Step45ExitGvRow 35 []=
    some (s2Step45ExitGvAfter,s2Step45ExitGvOut,shrinkRow 771 s2Step45ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step45ExitGvBefore s2Step45ExitGvRow 35 s2Step45ExitGv_distinct s2Step45ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step45ExitGvRow.payload.take 35) s2Step45ExitGvRow.sign=s2Step45ExitGvOut := by decide +kernel
  have hi : s2Step45ExitGvRow.payload.drop 35=s2Step45ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step45ExitGv_retired] at result
  exact result
def s2Step46ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step46ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<244) ∨ (245≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step46ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 790],769⟩
def s2Step46ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243],769⟩
def s2Step46ExitGExtra : List Wire := [244, 790]
theorem s2Step46ExitG_distinct : (s2Step46ExitGRow.sign::s2Step46ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step46ExitG_owned : (s2Step46ExitGRow.sign::s2Step46ExitGRow.payload).toFinset⊆s2Step46ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step46ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46ExitG_retired : s2Step46ExitGBefore.retireSet s2Step46ExitGExtra.toFinset=s2Step46ExitGAfter := by
  unfold Arena.retireSet s2Step46ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step46ExitGBefore,s2Step46ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step46ExitG_checked : planRowResizeLog s2Step46ExitGBefore s2Step46ExitGRow 244 []=
    some (s2Step46ExitGAfter,s2Step46ExitGOut,shrinkRow 769 s2Step46ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step46ExitGBefore s2Step46ExitGRow 244 s2Step46ExitG_distinct s2Step46ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step46ExitGRow.payload.take 244) s2Step46ExitGRow.sign=s2Step46ExitGOut := by decide +kernel
  have hi : s2Step46ExitGRow.payload.drop 244=s2Step46ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step46ExitG_retired] at result
  exact result
def s2Step46ExitFBefore : Arena := s2Step46ExitGAfter
def s2Step46ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<244) ∨ (245≤q ∧ q<756) ∨ (757≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step46ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 787],768⟩
def s2Step46ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755],768⟩
def s2Step46ExitFExtra : List Wire := [756, 787]
theorem s2Step46ExitF_distinct : (s2Step46ExitFRow.sign::s2Step46ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step46ExitF_owned : (s2Step46ExitFRow.sign::s2Step46ExitFRow.payload).toFinset⊆s2Step46ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step46ExitFBefore (fun q => (0≤q ∧ q<244) ∨ (245≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46ExitF_retired : s2Step46ExitFBefore.retireSet s2Step46ExitFExtra.toFinset=s2Step46ExitFAfter := by
  unfold Arena.retireSet s2Step46ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step46ExitFBefore,s2Step46ExitGAfter,s2Step46ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step46ExitF_checked : planRowResizeLog s2Step46ExitFBefore s2Step46ExitFRow 244 []=
    some (s2Step46ExitFAfter,s2Step46ExitFOut,shrinkRow 768 s2Step46ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step46ExitFBefore s2Step46ExitFRow 244 s2Step46ExitF_distinct s2Step46ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step46ExitFRow.payload.take 244) s2Step46ExitFRow.sign=s2Step46ExitFOut := by decide +kernel
  have hi : s2Step46ExitFRow.payload.drop 244=s2Step46ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step46ExitF_retired] at result
  exact result
def s2Step46ExitFvBefore : Arena := s2Step46ExitFAfter
def s2Step46ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<244) ∨ (245≤q ∧ q<756) ∨ (757≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step46ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩
def s2Step46ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802],770⟩
def s2Step46ExitFvExtra : List Wire := [791]
theorem s2Step46ExitFv_distinct : (s2Step46ExitFvRow.sign::s2Step46ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step46ExitFv_owned : (s2Step46ExitFvRow.sign::s2Step46ExitFvRow.payload).toFinset⊆s2Step46ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step46ExitFvBefore (fun q => (0≤q ∧ q<244) ∨ (245≤q ∧ q<756) ∨ (757≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46ExitFv_retired : s2Step46ExitFvBefore.retireSet s2Step46ExitFvExtra.toFinset=s2Step46ExitFvAfter := by
  unfold Arena.retireSet s2Step46ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step46ExitFvBefore,s2Step46ExitFAfter,s2Step46ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step46ExitFv_checked : planRowResizeLog s2Step46ExitFvBefore s2Step46ExitFvRow 36 []=
    some (s2Step46ExitFvAfter,s2Step46ExitFvOut,shrinkRow 770 s2Step46ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step46ExitFvBefore s2Step46ExitFvRow 36 s2Step46ExitFv_distinct s2Step46ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step46ExitFvRow.payload.take 36) s2Step46ExitFvRow.sign=s2Step46ExitFvOut := by decide +kernel
  have hi : s2Step46ExitFvRow.payload.drop 36=s2Step46ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step46ExitFv_retired] at result
  exact result
def s2Step46ExitGvBefore : Arena := s2Step46ExitFvAfter
def s2Step46ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<244) ∨ (245≤q ∧ q<756) ∨ (757≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step46ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩
def s2Step46ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804],771⟩
def s2Step46ExitGvExtra : List Wire := [801]
theorem s2Step46ExitGv_distinct : (s2Step46ExitGvRow.sign::s2Step46ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step46ExitGv_owned : (s2Step46ExitGvRow.sign::s2Step46ExitGvRow.payload).toFinset⊆s2Step46ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step46ExitGvBefore (fun q => (0≤q ∧ q<244) ∨ (245≤q ∧ q<756) ∨ (757≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46ExitGv_retired : s2Step46ExitGvBefore.retireSet s2Step46ExitGvExtra.toFinset=s2Step46ExitGvAfter := by
  unfold Arena.retireSet s2Step46ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step46ExitGvBefore,s2Step46ExitFvAfter,s2Step46ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step46ExitGv_checked : planRowResizeLog s2Step46ExitGvBefore s2Step46ExitGvRow 36 []=
    some (s2Step46ExitGvAfter,s2Step46ExitGvOut,shrinkRow 771 s2Step46ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step46ExitGvBefore s2Step46ExitGvRow 36 s2Step46ExitGv_distinct s2Step46ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step46ExitGvRow.payload.take 36) s2Step46ExitGvRow.sign=s2Step46ExitGvOut := by decide +kernel
  have hi : s2Step46ExitGvRow.payload.drop 36=s2Step46ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step46ExitGv_retired] at result
  exact result
def s2Step47ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step47ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step47ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 805],769⟩
def s2Step47ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243],769⟩
def s2Step47ExitGExtra : List Wire := [805]
theorem s2Step47ExitG_distinct : (s2Step47ExitGRow.sign::s2Step47ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step47ExitG_owned : (s2Step47ExitGRow.sign::s2Step47ExitGRow.payload).toFinset⊆s2Step47ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step47ExitGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47ExitG_retired : s2Step47ExitGBefore.retireSet s2Step47ExitGExtra.toFinset=s2Step47ExitGAfter := by
  unfold Arena.retireSet s2Step47ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step47ExitGBefore,s2Step47ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step47ExitG_checked : planRowResizeLog s2Step47ExitGBefore s2Step47ExitGRow 244 []=
    some (s2Step47ExitGAfter,s2Step47ExitGOut,shrinkRow 769 s2Step47ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step47ExitGBefore s2Step47ExitGRow 244 s2Step47ExitG_distinct s2Step47ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step47ExitGRow.payload.take 244) s2Step47ExitGRow.sign=s2Step47ExitGOut := by decide +kernel
  have hi : s2Step47ExitGRow.payload.drop 244=s2Step47ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step47ExitG_retired] at result
  exact result
def s2Step47ExitFBefore : Arena := s2Step47ExitGAfter
def s2Step47ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step47ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 806],768⟩
def s2Step47ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755],768⟩
def s2Step47ExitFExtra : List Wire := [806]
theorem s2Step47ExitF_distinct : (s2Step47ExitFRow.sign::s2Step47ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step47ExitF_owned : (s2Step47ExitFRow.sign::s2Step47ExitFRow.payload).toFinset⊆s2Step47ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step47ExitFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47ExitF_retired : s2Step47ExitFBefore.retireSet s2Step47ExitFExtra.toFinset=s2Step47ExitFAfter := by
  unfold Arena.retireSet s2Step47ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step47ExitFBefore,s2Step47ExitGAfter,s2Step47ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step47ExitF_checked : planRowResizeLog s2Step47ExitFBefore s2Step47ExitFRow 244 []=
    some (s2Step47ExitFAfter,s2Step47ExitFOut,shrinkRow 768 s2Step47ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step47ExitFBefore s2Step47ExitFRow 244 s2Step47ExitF_distinct s2Step47ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step47ExitFRow.payload.take 244) s2Step47ExitFRow.sign=s2Step47ExitFOut := by decide +kernel
  have hi : s2Step47ExitFRow.payload.drop 244=s2Step47ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step47ExitF_retired] at result
  exact result
def s2Step47ExitFvBefore : Arena := s2Step47ExitFAfter
def s2Step47ExitFvAfter : Arena := s2Step47ExitFAfter
def s2Step47ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩
def s2Step47ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩
def s2Step47ExitFvExtra : List Wire := []
theorem s2Step47ExitFv_distinct : (s2Step47ExitFvRow.sign::s2Step47ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step47ExitFv_owned : (s2Step47ExitFvRow.sign::s2Step47ExitFvRow.payload).toFinset⊆s2Step47ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step47ExitFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47ExitFv_reserved : s2Step47ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step47ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step47ExitFv_checked : planRowResizeLog s2Step47ExitFvBefore s2Step47ExitFvRow 37 []=
    some (s2Step47ExitFvAfter,s2Step47ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step47ExitFvBefore s2Step47ExitFvAfter s2Step47ExitFvRow 37 []
    s2Step47ExitFv_distinct s2Step47ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step47ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step47ExitFvRow.payload++[]) s2Step47ExitFvRow.sign=s2Step47ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step47ExitGvBefore : Arena := s2Step47ExitFAfter
def s2Step47ExitGvAfter : Arena := s2Step47ExitFAfter
def s2Step47ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩
def s2Step47ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩
def s2Step47ExitGvExtra : List Wire := []
theorem s2Step47ExitGv_distinct : (s2Step47ExitGvRow.sign::s2Step47ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step47ExitGv_owned : (s2Step47ExitGvRow.sign::s2Step47ExitGvRow.payload).toFinset⊆s2Step47ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step47ExitGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47ExitGv_reserved : s2Step47ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step47ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step47ExitGv_checked : planRowResizeLog s2Step47ExitGvBefore s2Step47ExitGvRow 37 []=
    some (s2Step47ExitGvAfter,s2Step47ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step47ExitGvBefore s2Step47ExitGvAfter s2Step47ExitGvRow 37 []
    s2Step47ExitGv_distinct s2Step47ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step47ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step47ExitGvRow.payload++[]) s2Step47ExitGvRow.sign=s2Step47ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

end ECDSAAdd.Arithmetic.Paper935
