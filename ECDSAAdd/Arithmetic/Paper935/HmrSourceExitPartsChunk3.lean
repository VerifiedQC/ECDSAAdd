import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk2

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step48ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step48ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<243) ∨ (244≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step48ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 806],769⟩
def s2Step48ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242],769⟩
def s2Step48ExitGExtra : List Wire := [243, 806]
theorem s2Step48ExitG_distinct : (s2Step48ExitGRow.sign::s2Step48ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step48ExitG_owned : (s2Step48ExitGRow.sign::s2Step48ExitGRow.payload).toFinset⊆s2Step48ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step48ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48ExitG_retired : s2Step48ExitGBefore.retireSet s2Step48ExitGExtra.toFinset=s2Step48ExitGAfter := by
  unfold Arena.retireSet s2Step48ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step48ExitGBefore,s2Step48ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step48ExitG_checked : planRowResizeLog s2Step48ExitGBefore s2Step48ExitGRow 243 []=
    some (s2Step48ExitGAfter,s2Step48ExitGOut,shrinkRow 769 s2Step48ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step48ExitGBefore s2Step48ExitGRow 243 s2Step48ExitG_distinct s2Step48ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step48ExitGRow.payload.take 243) s2Step48ExitGRow.sign=s2Step48ExitGOut := by decide +kernel
  have hi : s2Step48ExitGRow.payload.drop 243=s2Step48ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step48ExitG_retired] at result
  exact result
def s2Step48ExitFBefore : Arena := s2Step48ExitGAfter
def s2Step48ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<243) ∨ (244≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step48ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 805],768⟩
def s2Step48ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755],768⟩
def s2Step48ExitFExtra : List Wire := [805]
theorem s2Step48ExitF_distinct : (s2Step48ExitFRow.sign::s2Step48ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step48ExitF_owned : (s2Step48ExitFRow.sign::s2Step48ExitFRow.payload).toFinset⊆s2Step48ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step48ExitFBefore (fun q => (0≤q ∧ q<243) ∨ (244≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48ExitF_retired : s2Step48ExitFBefore.retireSet s2Step48ExitFExtra.toFinset=s2Step48ExitFAfter := by
  unfold Arena.retireSet s2Step48ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step48ExitFBefore,s2Step48ExitGAfter,s2Step48ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step48ExitF_checked : planRowResizeLog s2Step48ExitFBefore s2Step48ExitFRow 244 []=
    some (s2Step48ExitFAfter,s2Step48ExitFOut,shrinkRow 768 s2Step48ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step48ExitFBefore s2Step48ExitFRow 244 s2Step48ExitF_distinct s2Step48ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step48ExitFRow.payload.take 244) s2Step48ExitFRow.sign=s2Step48ExitFOut := by decide +kernel
  have hi : s2Step48ExitFRow.payload.drop 244=s2Step48ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step48ExitF_retired] at result
  exact result
def s2Step48ExitFvBefore : Arena := s2Step48ExitFAfter
def s2Step48ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<243) ∨ (244≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step48ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 790],770⟩
def s2Step48ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩
def s2Step48ExitFvExtra : List Wire := [790]
theorem s2Step48ExitFv_distinct : (s2Step48ExitFvRow.sign::s2Step48ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step48ExitFv_owned : (s2Step48ExitFvRow.sign::s2Step48ExitFvRow.payload).toFinset⊆s2Step48ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step48ExitFvBefore (fun q => (0≤q ∧ q<243) ∨ (244≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48ExitFv_retired : s2Step48ExitFvBefore.retireSet s2Step48ExitFvExtra.toFinset=s2Step48ExitFvAfter := by
  unfold Arena.retireSet s2Step48ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step48ExitFvBefore,s2Step48ExitFAfter,s2Step48ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step48ExitFv_checked : planRowResizeLog s2Step48ExitFvBefore s2Step48ExitFvRow 37 []=
    some (s2Step48ExitFvAfter,s2Step48ExitFvOut,shrinkRow 770 s2Step48ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step48ExitFvBefore s2Step48ExitFvRow 37 s2Step48ExitFv_distinct s2Step48ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step48ExitFvRow.payload.take 37) s2Step48ExitFvRow.sign=s2Step48ExitFvOut := by decide +kernel
  have hi : s2Step48ExitFvRow.payload.drop 37=s2Step48ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step48ExitFv_retired] at result
  exact result
def s2Step48ExitGvBefore : Arena := s2Step48ExitFvAfter
def s2Step48ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<243) ∨ (244≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step48ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 787],771⟩
def s2Step48ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩
def s2Step48ExitGvExtra : List Wire := [787]
theorem s2Step48ExitGv_distinct : (s2Step48ExitGvRow.sign::s2Step48ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step48ExitGv_owned : (s2Step48ExitGvRow.sign::s2Step48ExitGvRow.payload).toFinset⊆s2Step48ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step48ExitGvBefore (fun q => (0≤q ∧ q<243) ∨ (244≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48ExitGv_retired : s2Step48ExitGvBefore.retireSet s2Step48ExitGvExtra.toFinset=s2Step48ExitGvAfter := by
  unfold Arena.retireSet s2Step48ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step48ExitGvBefore,s2Step48ExitFvAfter,s2Step48ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step48ExitGv_checked : planRowResizeLog s2Step48ExitGvBefore s2Step48ExitGvRow 37 []=
    some (s2Step48ExitGvAfter,s2Step48ExitGvOut,shrinkRow 771 s2Step48ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step48ExitGvBefore s2Step48ExitGvRow 37 s2Step48ExitGv_distinct s2Step48ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step48ExitGvRow.payload.take 37) s2Step48ExitGvRow.sign=s2Step48ExitGvOut := by decide +kernel
  have hi : s2Step48ExitGvRow.payload.drop 37=s2Step48ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step48ExitGv_retired] at result
  exact result
def s2Step49ExitGBefore : Arena := s2Step48ExitGBefore
def s2Step49ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step49ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 803, 787],769⟩
def s2Step49ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242],769⟩
def s2Step49ExitGExtra : List Wire := [803, 787]
theorem s2Step49ExitG_distinct : (s2Step49ExitGRow.sign::s2Step49ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step49ExitG_owned : (s2Step49ExitGRow.sign::s2Step49ExitGRow.payload).toFinset⊆s2Step49ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step49ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49ExitG_retired : s2Step49ExitGBefore.retireSet s2Step49ExitGExtra.toFinset=s2Step49ExitGAfter := by
  unfold Arena.retireSet s2Step49ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step49ExitGBefore,s2Step48ExitGBefore,s2Step49ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step49ExitG_checked : planRowResizeLog s2Step49ExitGBefore s2Step49ExitGRow 243 []=
    some (s2Step49ExitGAfter,s2Step49ExitGOut,shrinkRow 769 s2Step49ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step49ExitGBefore s2Step49ExitGRow 243 s2Step49ExitG_distinct s2Step49ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step49ExitGRow.payload.take 243) s2Step49ExitGRow.sign=s2Step49ExitGOut := by decide +kernel
  have hi : s2Step49ExitGRow.payload.drop 243=s2Step49ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step49ExitG_retired] at result
  exact result
def s2Step49ExitFBefore : Arena := s2Step49ExitGAfter
def s2Step49ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<755) ∨ (756≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step49ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 790],768⟩
def s2Step49ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754],768⟩
def s2Step49ExitFExtra : List Wire := [755, 790]
theorem s2Step49ExitF_distinct : (s2Step49ExitFRow.sign::s2Step49ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step49ExitF_owned : (s2Step49ExitFRow.sign::s2Step49ExitFRow.payload).toFinset⊆s2Step49ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step49ExitFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49ExitF_retired : s2Step49ExitFBefore.retireSet s2Step49ExitFExtra.toFinset=s2Step49ExitFAfter := by
  unfold Arena.retireSet s2Step49ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step49ExitFBefore,s2Step49ExitGAfter,s2Step49ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step49ExitF_checked : planRowResizeLog s2Step49ExitFBefore s2Step49ExitFRow 243 []=
    some (s2Step49ExitFAfter,s2Step49ExitFOut,shrinkRow 768 s2Step49ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step49ExitFBefore s2Step49ExitFRow 243 s2Step49ExitF_distinct s2Step49ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step49ExitFRow.payload.take 243) s2Step49ExitFRow.sign=s2Step49ExitFOut := by decide +kernel
  have hi : s2Step49ExitFRow.payload.drop 243=s2Step49ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step49ExitF_retired] at result
  exact result
def s2Step49ExitFvBefore : Arena := s2Step49ExitFAfter
def s2Step49ExitFvAfter : Arena := s2Step49ExitFAfter
def s2Step49ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806],770⟩
def s2Step49ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806],770⟩
def s2Step49ExitFvExtra : List Wire := []
theorem s2Step49ExitFv_distinct : (s2Step49ExitFvRow.sign::s2Step49ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step49ExitFv_owned : (s2Step49ExitFvRow.sign::s2Step49ExitFvRow.payload).toFinset⊆s2Step49ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step49ExitFvBefore (fun q => (0≤q ∧ q<755) ∨ (756≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49ExitFv_reserved : s2Step49ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step49ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step49ExitFv_checked : planRowResizeLog s2Step49ExitFvBefore s2Step49ExitFvRow 38 []=
    some (s2Step49ExitFvAfter,s2Step49ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step49ExitFvBefore s2Step49ExitFvAfter s2Step49ExitFvRow 38 []
    s2Step49ExitFv_distinct s2Step49ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step49ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step49ExitFvRow.payload++[]) s2Step49ExitFvRow.sign=s2Step49ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step49ExitGvBefore : Arena := s2Step49ExitFAfter
def s2Step49ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<755) ∨ (756≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step49ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 805],771⟩
def s2Step49ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩
def s2Step49ExitGvExtra : List Wire := [805]
theorem s2Step49ExitGv_distinct : (s2Step49ExitGvRow.sign::s2Step49ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step49ExitGv_owned : (s2Step49ExitGvRow.sign::s2Step49ExitGvRow.payload).toFinset⊆s2Step49ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step49ExitGvBefore (fun q => (0≤q ∧ q<755) ∨ (756≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49ExitGv_retired : s2Step49ExitGvBefore.retireSet s2Step49ExitGvExtra.toFinset=s2Step49ExitGvAfter := by
  unfold Arena.retireSet s2Step49ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step49ExitGvBefore,s2Step49ExitFAfter,s2Step49ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step49ExitGv_checked : planRowResizeLog s2Step49ExitGvBefore s2Step49ExitGvRow 37 []=
    some (s2Step49ExitGvAfter,s2Step49ExitGvOut,shrinkRow 771 s2Step49ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step49ExitGvBefore s2Step49ExitGvRow 37 s2Step49ExitGv_distinct s2Step49ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step49ExitGvRow.payload.take 37) s2Step49ExitGvRow.sign=s2Step49ExitGvOut := by decide +kernel
  have hi : s2Step49ExitGvRow.payload.drop 37=s2Step49ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step49ExitGv_retired] at result
  exact result
def s2Step50ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step50ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<242) ∨ (243≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step50ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 805],769⟩
def s2Step50ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241],769⟩
def s2Step50ExitGExtra : List Wire := [242, 805]
theorem s2Step50ExitG_distinct : (s2Step50ExitGRow.sign::s2Step50ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step50ExitG_owned : (s2Step50ExitGRow.sign::s2Step50ExitGRow.payload).toFinset⊆s2Step50ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step50ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50ExitG_retired : s2Step50ExitGBefore.retireSet s2Step50ExitGExtra.toFinset=s2Step50ExitGAfter := by
  unfold Arena.retireSet s2Step50ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step50ExitGBefore,s2Step50ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step50ExitG_checked : planRowResizeLog s2Step50ExitGBefore s2Step50ExitGRow 242 []=
    some (s2Step50ExitGAfter,s2Step50ExitGOut,shrinkRow 769 s2Step50ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step50ExitGBefore s2Step50ExitGRow 242 s2Step50ExitG_distinct s2Step50ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step50ExitGRow.payload.take 242) s2Step50ExitGRow.sign=s2Step50ExitGOut := by decide +kernel
  have hi : s2Step50ExitGRow.payload.drop 242=s2Step50ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step50ExitG_retired] at result
  exact result
def s2Step50ExitFBefore : Arena := s2Step50ExitGAfter
def s2Step50ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<242) ∨ (243≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step50ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 790],768⟩
def s2Step50ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754],768⟩
def s2Step50ExitFExtra : List Wire := [790]
theorem s2Step50ExitF_distinct : (s2Step50ExitFRow.sign::s2Step50ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step50ExitF_owned : (s2Step50ExitFRow.sign::s2Step50ExitFRow.payload).toFinset⊆s2Step50ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step50ExitFBefore (fun q => (0≤q ∧ q<242) ∨ (243≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50ExitF_retired : s2Step50ExitFBefore.retireSet s2Step50ExitFExtra.toFinset=s2Step50ExitFAfter := by
  unfold Arena.retireSet s2Step50ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step50ExitFBefore,s2Step50ExitGAfter,s2Step50ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step50ExitF_checked : planRowResizeLog s2Step50ExitFBefore s2Step50ExitFRow 243 []=
    some (s2Step50ExitFAfter,s2Step50ExitFOut,shrinkRow 768 s2Step50ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step50ExitFBefore s2Step50ExitFRow 243 s2Step50ExitF_distinct s2Step50ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step50ExitFRow.payload.take 243) s2Step50ExitFRow.sign=s2Step50ExitFOut := by decide +kernel
  have hi : s2Step50ExitFRow.payload.drop 243=s2Step50ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step50ExitF_retired] at result
  exact result
def s2Step50ExitFvBefore : Arena := s2Step50ExitFAfter
def s2Step50ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<242) ∨ (243≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step50ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 787],770⟩
def s2Step50ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806],770⟩
def s2Step50ExitFvExtra : List Wire := [787]
theorem s2Step50ExitFv_distinct : (s2Step50ExitFvRow.sign::s2Step50ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step50ExitFv_owned : (s2Step50ExitFvRow.sign::s2Step50ExitFvRow.payload).toFinset⊆s2Step50ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step50ExitFvBefore (fun q => (0≤q ∧ q<242) ∨ (243≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50ExitFv_retired : s2Step50ExitFvBefore.retireSet s2Step50ExitFvExtra.toFinset=s2Step50ExitFvAfter := by
  unfold Arena.retireSet s2Step50ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step50ExitFvBefore,s2Step50ExitFAfter,s2Step50ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step50ExitFv_checked : planRowResizeLog s2Step50ExitFvBefore s2Step50ExitFvRow 38 []=
    some (s2Step50ExitFvAfter,s2Step50ExitFvOut,shrinkRow 770 s2Step50ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step50ExitFvBefore s2Step50ExitFvRow 38 s2Step50ExitFv_distinct s2Step50ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step50ExitFvRow.payload.take 38) s2Step50ExitFvRow.sign=s2Step50ExitFvOut := by decide +kernel
  have hi : s2Step50ExitFvRow.payload.drop 38=s2Step50ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step50ExitFv_retired] at result
  exact result
def s2Step50ExitGvBefore : Arena := s2Step50ExitFvAfter
def s2Step50ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<242) ∨ (243≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step50ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 808, 803],771⟩
def s2Step50ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩
def s2Step50ExitGvExtra : List Wire := [808, 803]
theorem s2Step50ExitGv_distinct : (s2Step50ExitGvRow.sign::s2Step50ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step50ExitGv_owned : (s2Step50ExitGvRow.sign::s2Step50ExitGvRow.payload).toFinset⊆s2Step50ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step50ExitGvBefore (fun q => (0≤q ∧ q<242) ∨ (243≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50ExitGv_retired : s2Step50ExitGvBefore.retireSet s2Step50ExitGvExtra.toFinset=s2Step50ExitGvAfter := by
  unfold Arena.retireSet s2Step50ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step50ExitGvBefore,s2Step50ExitFvAfter,s2Step50ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step50ExitGv_checked : planRowResizeLog s2Step50ExitGvBefore s2Step50ExitGvRow 37 []=
    some (s2Step50ExitGvAfter,s2Step50ExitGvOut,shrinkRow 771 s2Step50ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step50ExitGvBefore s2Step50ExitGvRow 37 s2Step50ExitGv_distinct s2Step50ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step50ExitGvRow.payload.take 37) s2Step50ExitGvRow.sign=s2Step50ExitGvOut := by decide +kernel
  have hi : s2Step50ExitGvRow.payload.drop 37=s2Step50ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step50ExitGv_retired] at result
  exact result
def s2Step51ExitGBefore : Arena := s2Step50ExitGBefore
def s2Step51ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step51ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 807, 803],769⟩
def s2Step51ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241],769⟩
def s2Step51ExitGExtra : List Wire := [807, 803]
theorem s2Step51ExitG_distinct : (s2Step51ExitGRow.sign::s2Step51ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step51ExitG_owned : (s2Step51ExitGRow.sign::s2Step51ExitGRow.payload).toFinset⊆s2Step51ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step51ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51ExitG_retired : s2Step51ExitGBefore.retireSet s2Step51ExitGExtra.toFinset=s2Step51ExitGAfter := by
  unfold Arena.retireSet s2Step51ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step51ExitGBefore,s2Step50ExitGBefore,s2Step51ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step51ExitG_checked : planRowResizeLog s2Step51ExitGBefore s2Step51ExitGRow 242 []=
    some (s2Step51ExitGAfter,s2Step51ExitGOut,shrinkRow 769 s2Step51ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step51ExitGBefore s2Step51ExitGRow 242 s2Step51ExitG_distinct s2Step51ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step51ExitGRow.payload.take 242) s2Step51ExitGRow.sign=s2Step51ExitGOut := by decide +kernel
  have hi : s2Step51ExitGRow.payload.drop 242=s2Step51ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step51ExitG_retired] at result
  exact result
def s2Step51ExitFBefore : Arena := s2Step51ExitGAfter
def s2Step51ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<754) ∨ (755≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step51ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 787],768⟩
def s2Step51ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753],768⟩
def s2Step51ExitFExtra : List Wire := [754, 787]
theorem s2Step51ExitF_distinct : (s2Step51ExitFRow.sign::s2Step51ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step51ExitF_owned : (s2Step51ExitFRow.sign::s2Step51ExitFRow.payload).toFinset⊆s2Step51ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step51ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51ExitF_retired : s2Step51ExitFBefore.retireSet s2Step51ExitFExtra.toFinset=s2Step51ExitFAfter := by
  unfold Arena.retireSet s2Step51ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step51ExitFBefore,s2Step51ExitGAfter,s2Step51ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step51ExitF_checked : planRowResizeLog s2Step51ExitFBefore s2Step51ExitFRow 242 []=
    some (s2Step51ExitFAfter,s2Step51ExitFOut,shrinkRow 768 s2Step51ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step51ExitFBefore s2Step51ExitFRow 242 s2Step51ExitF_distinct s2Step51ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step51ExitFRow.payload.take 242) s2Step51ExitFRow.sign=s2Step51ExitFOut := by decide +kernel
  have hi : s2Step51ExitFRow.payload.drop 242=s2Step51ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step51ExitF_retired] at result
  exact result
def s2Step51ExitFvBefore : Arena := s2Step51ExitFAfter
def s2Step51ExitFvAfter : Arena := s2Step51ExitFAfter
def s2Step51ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805],770⟩
def s2Step51ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805],770⟩
def s2Step51ExitFvExtra : List Wire := []
theorem s2Step51ExitFv_distinct : (s2Step51ExitFvRow.sign::s2Step51ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step51ExitFv_owned : (s2Step51ExitFvRow.sign::s2Step51ExitFvRow.payload).toFinset⊆s2Step51ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step51ExitFvBefore (fun q => (0≤q ∧ q<754) ∨ (755≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51ExitFv_reserved : s2Step51ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step51ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step51ExitFv_checked : planRowResizeLog s2Step51ExitFvBefore s2Step51ExitFvRow 39 []=
    some (s2Step51ExitFvAfter,s2Step51ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step51ExitFvBefore s2Step51ExitFvAfter s2Step51ExitFvRow 39 []
    s2Step51ExitFv_distinct s2Step51ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step51ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step51ExitFvRow.payload++[]) s2Step51ExitFvRow.sign=s2Step51ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step51ExitGvBefore : Arena := s2Step51ExitFAfter
def s2Step51ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<754) ∨ (755≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step51ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 790],771⟩
def s2Step51ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798],771⟩
def s2Step51ExitGvExtra : List Wire := [790]
theorem s2Step51ExitGv_distinct : (s2Step51ExitGvRow.sign::s2Step51ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step51ExitGv_owned : (s2Step51ExitGvRow.sign::s2Step51ExitGvRow.payload).toFinset⊆s2Step51ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step51ExitGvBefore (fun q => (0≤q ∧ q<754) ∨ (755≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51ExitGv_retired : s2Step51ExitGvBefore.retireSet s2Step51ExitGvExtra.toFinset=s2Step51ExitGvAfter := by
  unfold Arena.retireSet s2Step51ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step51ExitGvBefore,s2Step51ExitFAfter,s2Step51ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step51ExitGv_checked : planRowResizeLog s2Step51ExitGvBefore s2Step51ExitGvRow 38 []=
    some (s2Step51ExitGvAfter,s2Step51ExitGvOut,shrinkRow 771 s2Step51ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step51ExitGvBefore s2Step51ExitGvRow 38 s2Step51ExitGv_distinct s2Step51ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step51ExitGvRow.payload.take 38) s2Step51ExitGvRow.sign=s2Step51ExitGvOut := by decide +kernel
  have hi : s2Step51ExitGvRow.payload.drop 38=s2Step51ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step51ExitGv_retired] at result
  exact result
def s2Step52ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step52ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<241) ∨ (242≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step52ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 790],769⟩
def s2Step52ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240],769⟩
def s2Step52ExitGExtra : List Wire := [241, 790]
theorem s2Step52ExitG_distinct : (s2Step52ExitGRow.sign::s2Step52ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step52ExitG_owned : (s2Step52ExitGRow.sign::s2Step52ExitGRow.payload).toFinset⊆s2Step52ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step52ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52ExitG_retired : s2Step52ExitGBefore.retireSet s2Step52ExitGExtra.toFinset=s2Step52ExitGAfter := by
  unfold Arena.retireSet s2Step52ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step52ExitGBefore,s2Step52ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step52ExitG_checked : planRowResizeLog s2Step52ExitGBefore s2Step52ExitGRow 241 []=
    some (s2Step52ExitGAfter,s2Step52ExitGOut,shrinkRow 769 s2Step52ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step52ExitGBefore s2Step52ExitGRow 241 s2Step52ExitG_distinct s2Step52ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step52ExitGRow.payload.take 241) s2Step52ExitGRow.sign=s2Step52ExitGOut := by decide +kernel
  have hi : s2Step52ExitGRow.payload.drop 241=s2Step52ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step52ExitG_retired] at result
  exact result
def s2Step52ExitFBefore : Arena := s2Step52ExitGAfter
def s2Step52ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<241) ∨ (242≤q ∧ q<753) ∨ (754≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step52ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 787],768⟩
def s2Step52ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752],768⟩
def s2Step52ExitFExtra : List Wire := [753, 787]
theorem s2Step52ExitF_distinct : (s2Step52ExitFRow.sign::s2Step52ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step52ExitF_owned : (s2Step52ExitFRow.sign::s2Step52ExitFRow.payload).toFinset⊆s2Step52ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step52ExitFBefore (fun q => (0≤q ∧ q<241) ∨ (242≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52ExitF_retired : s2Step52ExitFBefore.retireSet s2Step52ExitFExtra.toFinset=s2Step52ExitFAfter := by
  unfold Arena.retireSet s2Step52ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step52ExitFBefore,s2Step52ExitGAfter,s2Step52ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step52ExitF_checked : planRowResizeLog s2Step52ExitFBefore s2Step52ExitFRow 241 []=
    some (s2Step52ExitFAfter,s2Step52ExitFOut,shrinkRow 768 s2Step52ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step52ExitFBefore s2Step52ExitFRow 241 s2Step52ExitF_distinct s2Step52ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step52ExitFRow.payload.take 241) s2Step52ExitFRow.sign=s2Step52ExitFOut := by decide +kernel
  have hi : s2Step52ExitFRow.payload.drop 241=s2Step52ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step52ExitF_retired] at result
  exact result
def s2Step52ExitFvBefore : Arena := s2Step52ExitFAfter
def s2Step52ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<241) ∨ (242≤q ∧ q<753) ∨ (754≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step52ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803],770⟩
def s2Step52ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805],770⟩
def s2Step52ExitFvExtra : List Wire := [803]
theorem s2Step52ExitFv_distinct : (s2Step52ExitFvRow.sign::s2Step52ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step52ExitFv_owned : (s2Step52ExitFvRow.sign::s2Step52ExitFvRow.payload).toFinset⊆s2Step52ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step52ExitFvBefore (fun q => (0≤q ∧ q<241) ∨ (242≤q ∧ q<753) ∨ (754≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52ExitFv_retired : s2Step52ExitFvBefore.retireSet s2Step52ExitFvExtra.toFinset=s2Step52ExitFvAfter := by
  unfold Arena.retireSet s2Step52ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step52ExitFvBefore,s2Step52ExitFAfter,s2Step52ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step52ExitFv_checked : planRowResizeLog s2Step52ExitFvBefore s2Step52ExitFvRow 39 []=
    some (s2Step52ExitFvAfter,s2Step52ExitFvOut,shrinkRow 770 s2Step52ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step52ExitFvBefore s2Step52ExitFvRow 39 s2Step52ExitFv_distinct s2Step52ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step52ExitFvRow.payload.take 39) s2Step52ExitFvRow.sign=s2Step52ExitFvOut := by decide +kernel
  have hi : s2Step52ExitFvRow.payload.drop 39=s2Step52ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step52ExitFv_retired] at result
  exact result
def s2Step52ExitGvBefore : Arena := s2Step52ExitFvAfter
def s2Step52ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<241) ∨ (242≤q ∧ q<753) ∨ (754≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step52ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 808, 807],771⟩
def s2Step52ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798],771⟩
def s2Step52ExitGvExtra : List Wire := [808, 807]
theorem s2Step52ExitGv_distinct : (s2Step52ExitGvRow.sign::s2Step52ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step52ExitGv_owned : (s2Step52ExitGvRow.sign::s2Step52ExitGvRow.payload).toFinset⊆s2Step52ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step52ExitGvBefore (fun q => (0≤q ∧ q<241) ∨ (242≤q ∧ q<753) ∨ (754≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52ExitGv_retired : s2Step52ExitGvBefore.retireSet s2Step52ExitGvExtra.toFinset=s2Step52ExitGvAfter := by
  unfold Arena.retireSet s2Step52ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step52ExitGvBefore,s2Step52ExitFvAfter,s2Step52ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step52ExitGv_checked : planRowResizeLog s2Step52ExitGvBefore s2Step52ExitGvRow 38 []=
    some (s2Step52ExitGvAfter,s2Step52ExitGvOut,shrinkRow 771 s2Step52ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step52ExitGvBefore s2Step52ExitGvRow 38 s2Step52ExitGv_distinct s2Step52ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step52ExitGvRow.payload.take 38) s2Step52ExitGvRow.sign=s2Step52ExitGvOut := by decide +kernel
  have hi : s2Step52ExitGvRow.payload.drop 38=s2Step52ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step52ExitGv_retired] at result
  exact result
def s2Step53ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step53ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step53ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 812],769⟩
def s2Step53ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240],769⟩
def s2Step53ExitGExtra : List Wire := [812]
theorem s2Step53ExitG_distinct : (s2Step53ExitGRow.sign::s2Step53ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step53ExitG_owned : (s2Step53ExitGRow.sign::s2Step53ExitGRow.payload).toFinset⊆s2Step53ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step53ExitGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53ExitG_retired : s2Step53ExitGBefore.retireSet s2Step53ExitGExtra.toFinset=s2Step53ExitGAfter := by
  unfold Arena.retireSet s2Step53ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step53ExitGBefore,s2Step53ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step53ExitG_checked : planRowResizeLog s2Step53ExitGBefore s2Step53ExitGRow 241 []=
    some (s2Step53ExitGAfter,s2Step53ExitGOut,shrinkRow 769 s2Step53ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step53ExitGBefore s2Step53ExitGRow 241 s2Step53ExitG_distinct s2Step53ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step53ExitGRow.payload.take 241) s2Step53ExitGRow.sign=s2Step53ExitGOut := by decide +kernel
  have hi : s2Step53ExitGRow.payload.drop 241=s2Step53ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step53ExitG_retired] at result
  exact result
def s2Step53ExitFBefore : Arena := s2Step53ExitGAfter
def s2Step53ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step53ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 808],768⟩
def s2Step53ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752],768⟩
def s2Step53ExitFExtra : List Wire := [808]
theorem s2Step53ExitF_distinct : (s2Step53ExitFRow.sign::s2Step53ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step53ExitF_owned : (s2Step53ExitFRow.sign::s2Step53ExitFRow.payload).toFinset⊆s2Step53ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step53ExitFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53ExitF_retired : s2Step53ExitFBefore.retireSet s2Step53ExitFExtra.toFinset=s2Step53ExitFAfter := by
  unfold Arena.retireSet s2Step53ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step53ExitFBefore,s2Step53ExitGAfter,s2Step53ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step53ExitF_checked : planRowResizeLog s2Step53ExitFBefore s2Step53ExitFRow 241 []=
    some (s2Step53ExitFAfter,s2Step53ExitFOut,shrinkRow 768 s2Step53ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step53ExitFBefore s2Step53ExitFRow 241 s2Step53ExitF_distinct s2Step53ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step53ExitFRow.payload.take 241) s2Step53ExitFRow.sign=s2Step53ExitFOut := by decide +kernel
  have hi : s2Step53ExitFRow.payload.drop 241=s2Step53ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step53ExitF_retired] at result
  exact result
def s2Step53ExitFvBefore : Arena := s2Step53ExitFAfter
def s2Step53ExitFvAfter : Arena := s2Step53ExitFAfter
def s2Step53ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803],770⟩
def s2Step53ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803],770⟩
def s2Step53ExitFvExtra : List Wire := []
theorem s2Step53ExitFv_distinct : (s2Step53ExitFvRow.sign::s2Step53ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step53ExitFv_owned : (s2Step53ExitFvRow.sign::s2Step53ExitFvRow.payload).toFinset⊆s2Step53ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step53ExitFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53ExitFv_reserved : s2Step53ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step53ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step53ExitFv_checked : planRowResizeLog s2Step53ExitFvBefore s2Step53ExitFvRow 40 []=
    some (s2Step53ExitFvAfter,s2Step53ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step53ExitFvBefore s2Step53ExitFvAfter s2Step53ExitFvRow 40 []
    s2Step53ExitFv_distinct s2Step53ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step53ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step53ExitFvRow.payload++[]) s2Step53ExitFvRow.sign=s2Step53ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step53ExitGvBefore : Arena := s2Step53ExitFAfter
def s2Step53ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step53ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 807],771⟩
def s2Step53ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809],771⟩
def s2Step53ExitGvExtra : List Wire := [807]
theorem s2Step53ExitGv_distinct : (s2Step53ExitGvRow.sign::s2Step53ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step53ExitGv_owned : (s2Step53ExitGvRow.sign::s2Step53ExitGvRow.payload).toFinset⊆s2Step53ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step53ExitGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53ExitGv_retired : s2Step53ExitGvBefore.retireSet s2Step53ExitGvExtra.toFinset=s2Step53ExitGvAfter := by
  unfold Arena.retireSet s2Step53ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step53ExitGvBefore,s2Step53ExitFAfter,s2Step53ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step53ExitGv_checked : planRowResizeLog s2Step53ExitGvBefore s2Step53ExitGvRow 39 []=
    some (s2Step53ExitGvAfter,s2Step53ExitGvOut,shrinkRow 771 s2Step53ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step53ExitGvBefore s2Step53ExitGvRow 39 s2Step53ExitGv_distinct s2Step53ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step53ExitGvRow.payload.take 39) s2Step53ExitGvRow.sign=s2Step53ExitGvOut := by decide +kernel
  have hi : s2Step53ExitGvRow.payload.drop 39=s2Step53ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step53ExitGv_retired] at result
  exact result
def s2Step54ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step54ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<240) ∨ (241≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step54ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 808],769⟩
def s2Step54ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239],769⟩
def s2Step54ExitGExtra : List Wire := [240, 808]
theorem s2Step54ExitG_distinct : (s2Step54ExitGRow.sign::s2Step54ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step54ExitG_owned : (s2Step54ExitGRow.sign::s2Step54ExitGRow.payload).toFinset⊆s2Step54ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step54ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54ExitG_retired : s2Step54ExitGBefore.retireSet s2Step54ExitGExtra.toFinset=s2Step54ExitGAfter := by
  unfold Arena.retireSet s2Step54ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step54ExitGBefore,s2Step54ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step54ExitG_checked : planRowResizeLog s2Step54ExitGBefore s2Step54ExitGRow 240 []=
    some (s2Step54ExitGAfter,s2Step54ExitGOut,shrinkRow 769 s2Step54ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step54ExitGBefore s2Step54ExitGRow 240 s2Step54ExitG_distinct s2Step54ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step54ExitGRow.payload.take 240) s2Step54ExitGRow.sign=s2Step54ExitGOut := by decide +kernel
  have hi : s2Step54ExitGRow.payload.drop 240=s2Step54ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step54ExitG_retired] at result
  exact result
def s2Step54ExitFBefore : Arena := s2Step54ExitGAfter
def s2Step54ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<240) ∨ (241≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step54ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 812],768⟩
def s2Step54ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752],768⟩
def s2Step54ExitFExtra : List Wire := [812]
theorem s2Step54ExitF_distinct : (s2Step54ExitFRow.sign::s2Step54ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step54ExitF_owned : (s2Step54ExitFRow.sign::s2Step54ExitFRow.payload).toFinset⊆s2Step54ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step54ExitFBefore (fun q => (0≤q ∧ q<240) ∨ (241≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54ExitF_retired : s2Step54ExitFBefore.retireSet s2Step54ExitFExtra.toFinset=s2Step54ExitFAfter := by
  unfold Arena.retireSet s2Step54ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step54ExitFBefore,s2Step54ExitGAfter,s2Step54ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step54ExitF_checked : planRowResizeLog s2Step54ExitFBefore s2Step54ExitFRow 241 []=
    some (s2Step54ExitFAfter,s2Step54ExitFOut,shrinkRow 768 s2Step54ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step54ExitFBefore s2Step54ExitFRow 241 s2Step54ExitF_distinct s2Step54ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step54ExitFRow.payload.take 241) s2Step54ExitFRow.sign=s2Step54ExitFOut := by decide +kernel
  have hi : s2Step54ExitFRow.payload.drop 241=s2Step54ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step54ExitF_retired] at result
  exact result
def s2Step54ExitFvBefore : Arena := s2Step54ExitFAfter
def s2Step54ExitFvAfter : Arena := s2Step54ExitFAfter
def s2Step54ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 790],770⟩
def s2Step54ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 790],770⟩
def s2Step54ExitFvExtra : List Wire := []
theorem s2Step54ExitFv_distinct : (s2Step54ExitFvRow.sign::s2Step54ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step54ExitFv_owned : (s2Step54ExitFvRow.sign::s2Step54ExitFvRow.payload).toFinset⊆s2Step54ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step54ExitFvBefore (fun q => (0≤q ∧ q<240) ∨ (241≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54ExitFv_reserved : s2Step54ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step54ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step54ExitFv_checked : planRowResizeLog s2Step54ExitFvBefore s2Step54ExitFvRow 41 []=
    some (s2Step54ExitFvAfter,s2Step54ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step54ExitFvBefore s2Step54ExitFvAfter s2Step54ExitFvRow 41 []
    s2Step54ExitFv_distinct s2Step54ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step54ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step54ExitFvRow.payload++[]) s2Step54ExitFvRow.sign=s2Step54ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step54ExitGvBefore : Arena := s2Step54ExitFAfter
def s2Step54ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<240) ∨ (241≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step54ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 787],771⟩
def s2Step54ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811],771⟩
def s2Step54ExitGvExtra : List Wire := [787]
theorem s2Step54ExitGv_distinct : (s2Step54ExitGvRow.sign::s2Step54ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step54ExitGv_owned : (s2Step54ExitGvRow.sign::s2Step54ExitGvRow.payload).toFinset⊆s2Step54ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step54ExitGvBefore (fun q => (0≤q ∧ q<240) ∨ (241≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54ExitGv_retired : s2Step54ExitGvBefore.retireSet s2Step54ExitGvExtra.toFinset=s2Step54ExitGvAfter := by
  unfold Arena.retireSet s2Step54ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step54ExitGvBefore,s2Step54ExitFAfter,s2Step54ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step54ExitGv_checked : planRowResizeLog s2Step54ExitGvBefore s2Step54ExitGvRow 40 []=
    some (s2Step54ExitGvAfter,s2Step54ExitGvOut,shrinkRow 771 s2Step54ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step54ExitGvBefore s2Step54ExitGvRow 40 s2Step54ExitGv_distinct s2Step54ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step54ExitGvRow.payload.take 40) s2Step54ExitGvRow.sign=s2Step54ExitGvOut := by decide +kernel
  have hi : s2Step54ExitGvRow.payload.drop 40=s2Step54ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step54ExitGv_retired] at result
  exact result
def s2Step55ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step55ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step55ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 807, 812],769⟩
def s2Step55ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239],769⟩
def s2Step55ExitGExtra : List Wire := [807, 812]
theorem s2Step55ExitG_distinct : (s2Step55ExitGRow.sign::s2Step55ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step55ExitG_owned : (s2Step55ExitGRow.sign::s2Step55ExitGRow.payload).toFinset⊆s2Step55ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step55ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55ExitG_retired : s2Step55ExitGBefore.retireSet s2Step55ExitGExtra.toFinset=s2Step55ExitGAfter := by
  unfold Arena.retireSet s2Step55ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step55ExitGBefore,s2Step55ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step55ExitG_checked : planRowResizeLog s2Step55ExitGBefore s2Step55ExitGRow 240 []=
    some (s2Step55ExitGAfter,s2Step55ExitGOut,shrinkRow 769 s2Step55ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step55ExitGBefore s2Step55ExitGRow 240 s2Step55ExitG_distinct s2Step55ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step55ExitGRow.payload.take 240) s2Step55ExitGRow.sign=s2Step55ExitGOut := by decide +kernel
  have hi : s2Step55ExitGRow.payload.drop 240=s2Step55ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step55ExitG_retired] at result
  exact result
def s2Step55ExitFBefore : Arena := s2Step55ExitGAfter
def s2Step55ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<752) ∨ (753≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step55ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 808],768⟩
def s2Step55ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751],768⟩
def s2Step55ExitFExtra : List Wire := [752, 808]
theorem s2Step55ExitF_distinct : (s2Step55ExitFRow.sign::s2Step55ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step55ExitF_owned : (s2Step55ExitFRow.sign::s2Step55ExitFRow.payload).toFinset⊆s2Step55ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step55ExitFBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55ExitF_retired : s2Step55ExitFBefore.retireSet s2Step55ExitFExtra.toFinset=s2Step55ExitFAfter := by
  unfold Arena.retireSet s2Step55ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step55ExitFBefore,s2Step55ExitGAfter,s2Step55ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step55ExitF_checked : planRowResizeLog s2Step55ExitFBefore s2Step55ExitFRow 240 []=
    some (s2Step55ExitFAfter,s2Step55ExitFOut,shrinkRow 768 s2Step55ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step55ExitFBefore s2Step55ExitFRow 240 s2Step55ExitF_distinct s2Step55ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step55ExitFRow.payload.take 240) s2Step55ExitFRow.sign=s2Step55ExitFOut := by decide +kernel
  have hi : s2Step55ExitFRow.payload.drop 240=s2Step55ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step55ExitF_retired] at result
  exact result
def s2Step55ExitFvBefore : Arena := s2Step55ExitFAfter
def s2Step55ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<752) ∨ (753≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step55ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 790, 800],770⟩
def s2Step55ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803],770⟩
def s2Step55ExitFvExtra : List Wire := [790, 800]
theorem s2Step55ExitFv_distinct : (s2Step55ExitFvRow.sign::s2Step55ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step55ExitFv_owned : (s2Step55ExitFvRow.sign::s2Step55ExitFvRow.payload).toFinset⊆s2Step55ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step55ExitFvBefore (fun q => (0≤q ∧ q<752) ∨ (753≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55ExitFv_retired : s2Step55ExitFvBefore.retireSet s2Step55ExitFvExtra.toFinset=s2Step55ExitFvAfter := by
  unfold Arena.retireSet s2Step55ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step55ExitFvBefore,s2Step55ExitFAfter,s2Step55ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step55ExitFv_checked : planRowResizeLog s2Step55ExitFvBefore s2Step55ExitFvRow 40 []=
    some (s2Step55ExitFvAfter,s2Step55ExitFvOut,shrinkRow 770 s2Step55ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step55ExitFvBefore s2Step55ExitFvRow 40 s2Step55ExitFv_distinct s2Step55ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step55ExitFvRow.payload.take 40) s2Step55ExitFvRow.sign=s2Step55ExitFvOut := by decide +kernel
  have hi : s2Step55ExitFvRow.payload.drop 40=s2Step55ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step55ExitFv_retired] at result
  exact result
def s2Step55ExitGvBefore : Arena := s2Step55ExitFvAfter
def s2Step55ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<752) ∨ (753≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step55ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 792],771⟩
def s2Step55ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩
def s2Step55ExitGvExtra : List Wire := [792]
theorem s2Step55ExitGv_distinct : (s2Step55ExitGvRow.sign::s2Step55ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step55ExitGv_owned : (s2Step55ExitGvRow.sign::s2Step55ExitGvRow.payload).toFinset⊆s2Step55ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step55ExitGvBefore (fun q => (0≤q ∧ q<752) ∨ (753≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55ExitGv_retired : s2Step55ExitGvBefore.retireSet s2Step55ExitGvExtra.toFinset=s2Step55ExitGvAfter := by
  unfold Arena.retireSet s2Step55ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step55ExitGvBefore,s2Step55ExitFvAfter,s2Step55ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step55ExitGv_checked : planRowResizeLog s2Step55ExitGvBefore s2Step55ExitGvRow 41 []=
    some (s2Step55ExitGvAfter,s2Step55ExitGvOut,shrinkRow 771 s2Step55ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step55ExitGvBefore s2Step55ExitGvRow 41 s2Step55ExitGv_distinct s2Step55ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step55ExitGvRow.payload.take 41) s2Step55ExitGvRow.sign=s2Step55ExitGvOut := by decide +kernel
  have hi : s2Step55ExitGvRow.payload.drop 41=s2Step55ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step55ExitGv_retired] at result
  exact result
def s2Step56ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step56ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<239) ∨ (240≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step56ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 792],769⟩
def s2Step56ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238],769⟩
def s2Step56ExitGExtra : List Wire := [239, 792]
theorem s2Step56ExitG_distinct : (s2Step56ExitGRow.sign::s2Step56ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step56ExitG_owned : (s2Step56ExitGRow.sign::s2Step56ExitGRow.payload).toFinset⊆s2Step56ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step56ExitGBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56ExitG_retired : s2Step56ExitGBefore.retireSet s2Step56ExitGExtra.toFinset=s2Step56ExitGAfter := by
  unfold Arena.retireSet s2Step56ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step56ExitGBefore,s2Step56ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step56ExitG_checked : planRowResizeLog s2Step56ExitGBefore s2Step56ExitGRow 239 []=
    some (s2Step56ExitGAfter,s2Step56ExitGOut,shrinkRow 769 s2Step56ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step56ExitGBefore s2Step56ExitGRow 239 s2Step56ExitG_distinct s2Step56ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step56ExitGRow.payload.take 239) s2Step56ExitGRow.sign=s2Step56ExitGOut := by decide +kernel
  have hi : s2Step56ExitGRow.payload.drop 239=s2Step56ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step56ExitG_retired] at result
  exact result
def s2Step56ExitFBefore : Arena := s2Step56ExitGAfter
def s2Step56ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<239) ∨ (240≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step56ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 790],768⟩
def s2Step56ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751],768⟩
def s2Step56ExitFExtra : List Wire := [790]
theorem s2Step56ExitF_distinct : (s2Step56ExitFRow.sign::s2Step56ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step56ExitF_owned : (s2Step56ExitFRow.sign::s2Step56ExitFRow.payload).toFinset⊆s2Step56ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step56ExitFBefore (fun q => (0≤q ∧ q<239) ∨ (240≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56ExitF_retired : s2Step56ExitFBefore.retireSet s2Step56ExitFExtra.toFinset=s2Step56ExitFAfter := by
  unfold Arena.retireSet s2Step56ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step56ExitFBefore,s2Step56ExitGAfter,s2Step56ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step56ExitF_checked : planRowResizeLog s2Step56ExitFBefore s2Step56ExitFRow 240 []=
    some (s2Step56ExitFAfter,s2Step56ExitFOut,shrinkRow 768 s2Step56ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step56ExitFBefore s2Step56ExitFRow 240 s2Step56ExitF_distinct s2Step56ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step56ExitFRow.payload.take 240) s2Step56ExitFRow.sign=s2Step56ExitFOut := by decide +kernel
  have hi : s2Step56ExitFRow.payload.drop 240=s2Step56ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step56ExitF_retired] at result
  exact result
def s2Step56ExitFvBefore : Arena := s2Step56ExitFAfter
def s2Step56ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<239) ∨ (240≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step56ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808],770⟩
def s2Step56ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787],770⟩
def s2Step56ExitFvExtra : List Wire := [808]
theorem s2Step56ExitFv_distinct : (s2Step56ExitFvRow.sign::s2Step56ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step56ExitFv_owned : (s2Step56ExitFvRow.sign::s2Step56ExitFvRow.payload).toFinset⊆s2Step56ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step56ExitFvBefore (fun q => (0≤q ∧ q<239) ∨ (240≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56ExitFv_retired : s2Step56ExitFvBefore.retireSet s2Step56ExitFvExtra.toFinset=s2Step56ExitFvAfter := by
  unfold Arena.retireSet s2Step56ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step56ExitFvBefore,s2Step56ExitFAfter,s2Step56ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step56ExitFv_checked : planRowResizeLog s2Step56ExitFvBefore s2Step56ExitFvRow 41 []=
    some (s2Step56ExitFvAfter,s2Step56ExitFvOut,shrinkRow 770 s2Step56ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step56ExitFvBefore s2Step56ExitFvRow 41 s2Step56ExitFv_distinct s2Step56ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step56ExitFvRow.payload.take 41) s2Step56ExitFvRow.sign=s2Step56ExitFvOut := by decide +kernel
  have hi : s2Step56ExitFvRow.payload.drop 41=s2Step56ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step56ExitFv_retired] at result
  exact result
def s2Step56ExitGvBefore : Arena := s2Step56ExitFvAfter
def s2Step56ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<239) ∨ (240≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step56ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 800],771⟩
def s2Step56ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩
def s2Step56ExitGvExtra : List Wire := [800]
theorem s2Step56ExitGv_distinct : (s2Step56ExitGvRow.sign::s2Step56ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step56ExitGv_owned : (s2Step56ExitGvRow.sign::s2Step56ExitGvRow.payload).toFinset⊆s2Step56ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step56ExitGvBefore (fun q => (0≤q ∧ q<239) ∨ (240≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56ExitGv_retired : s2Step56ExitGvBefore.retireSet s2Step56ExitGvExtra.toFinset=s2Step56ExitGvAfter := by
  unfold Arena.retireSet s2Step56ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step56ExitGvBefore,s2Step56ExitFvAfter,s2Step56ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step56ExitGv_checked : planRowResizeLog s2Step56ExitGvBefore s2Step56ExitGvRow 41 []=
    some (s2Step56ExitGvAfter,s2Step56ExitGvOut,shrinkRow 771 s2Step56ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step56ExitGvBefore s2Step56ExitGvRow 41 s2Step56ExitGv_distinct s2Step56ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step56ExitGvRow.payload.take 41) s2Step56ExitGvRow.sign=s2Step56ExitGvOut := by decide +kernel
  have hi : s2Step56ExitGvRow.payload.drop 41=s2Step56ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step56ExitGv_retired] at result
  exact result
def s2Step57ExitGBefore : Arena := s2Step56ExitGBefore
def s2Step57ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<238) ∨ (239≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step57ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 814, 800],769⟩
def s2Step57ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237],769⟩
def s2Step57ExitGExtra : List Wire := [238, 814, 800]
theorem s2Step57ExitG_distinct : (s2Step57ExitGRow.sign::s2Step57ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step57ExitG_owned : (s2Step57ExitGRow.sign::s2Step57ExitGRow.payload).toFinset⊆s2Step57ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step57ExitGBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57ExitG_retired : s2Step57ExitGBefore.retireSet s2Step57ExitGExtra.toFinset=s2Step57ExitGAfter := by
  unfold Arena.retireSet s2Step57ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step57ExitGBefore,s2Step56ExitGBefore,s2Step57ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step57ExitG_checked : planRowResizeLog s2Step57ExitGBefore s2Step57ExitGRow 238 []=
    some (s2Step57ExitGAfter,s2Step57ExitGOut,shrinkRow 769 s2Step57ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step57ExitGBefore s2Step57ExitGRow 238 s2Step57ExitG_distinct s2Step57ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step57ExitGRow.payload.take 238) s2Step57ExitGRow.sign=s2Step57ExitGOut := by decide +kernel
  have hi : s2Step57ExitGRow.payload.drop 238=s2Step57ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step57ExitG_retired] at result
  exact result
def s2Step57ExitFBefore : Arena := s2Step57ExitGAfter
def s2Step57ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<238) ∨ (239≤q ∧ q<751) ∨ (752≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step57ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 808],768⟩
def s2Step57ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩
def s2Step57ExitFExtra : List Wire := [751, 808]
theorem s2Step57ExitF_distinct : (s2Step57ExitFRow.sign::s2Step57ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step57ExitF_owned : (s2Step57ExitFRow.sign::s2Step57ExitFRow.payload).toFinset⊆s2Step57ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step57ExitFBefore (fun q => (0≤q ∧ q<238) ∨ (239≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57ExitF_retired : s2Step57ExitFBefore.retireSet s2Step57ExitFExtra.toFinset=s2Step57ExitFAfter := by
  unfold Arena.retireSet s2Step57ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step57ExitFBefore,s2Step57ExitGAfter,s2Step57ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step57ExitF_checked : planRowResizeLog s2Step57ExitFBefore s2Step57ExitFRow 239 []=
    some (s2Step57ExitFAfter,s2Step57ExitFOut,shrinkRow 768 s2Step57ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step57ExitFBefore s2Step57ExitFRow 239 s2Step57ExitF_distinct s2Step57ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step57ExitFRow.payload.take 239) s2Step57ExitFRow.sign=s2Step57ExitFOut := by decide +kernel
  have hi : s2Step57ExitFRow.payload.drop 239=s2Step57ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step57ExitF_retired] at result
  exact result
def s2Step57ExitFvBefore : Arena := s2Step57ExitFAfter
def s2Step57ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<238) ∨ (239≤q ∧ q<751) ∨ (752≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step57ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 792],770⟩
def s2Step57ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787],770⟩
def s2Step57ExitFvExtra : List Wire := [792]
theorem s2Step57ExitFv_distinct : (s2Step57ExitFvRow.sign::s2Step57ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step57ExitFv_owned : (s2Step57ExitFvRow.sign::s2Step57ExitFvRow.payload).toFinset⊆s2Step57ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step57ExitFvBefore (fun q => (0≤q ∧ q<238) ∨ (239≤q ∧ q<751) ∨ (752≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57ExitFv_retired : s2Step57ExitFvBefore.retireSet s2Step57ExitFvExtra.toFinset=s2Step57ExitFvAfter := by
  unfold Arena.retireSet s2Step57ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step57ExitFvBefore,s2Step57ExitFAfter,s2Step57ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step57ExitFv_checked : planRowResizeLog s2Step57ExitFvBefore s2Step57ExitFvRow 41 []=
    some (s2Step57ExitFvAfter,s2Step57ExitFvOut,shrinkRow 770 s2Step57ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step57ExitFvBefore s2Step57ExitFvRow 41 s2Step57ExitFv_distinct s2Step57ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step57ExitFvRow.payload.take 41) s2Step57ExitFvRow.sign=s2Step57ExitFvOut := by decide +kernel
  have hi : s2Step57ExitFvRow.payload.drop 41=s2Step57ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step57ExitFv_retired] at result
  exact result
def s2Step57ExitGvBefore : Arena := s2Step57ExitFvAfter
def s2Step57ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<238) ∨ (239≤q ∧ q<751) ∨ (752≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step57ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 790],771⟩
def s2Step57ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩
def s2Step57ExitGvExtra : List Wire := [790]
theorem s2Step57ExitGv_distinct : (s2Step57ExitGvRow.sign::s2Step57ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step57ExitGv_owned : (s2Step57ExitGvRow.sign::s2Step57ExitGvRow.payload).toFinset⊆s2Step57ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step57ExitGvBefore (fun q => (0≤q ∧ q<238) ∨ (239≤q ∧ q<751) ∨ (752≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57ExitGv_retired : s2Step57ExitGvBefore.retireSet s2Step57ExitGvExtra.toFinset=s2Step57ExitGvAfter := by
  unfold Arena.retireSet s2Step57ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step57ExitGvBefore,s2Step57ExitFvAfter,s2Step57ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step57ExitGv_checked : planRowResizeLog s2Step57ExitGvBefore s2Step57ExitGvRow 41 []=
    some (s2Step57ExitGvAfter,s2Step57ExitGvOut,shrinkRow 771 s2Step57ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step57ExitGvBefore s2Step57ExitGvRow 41 s2Step57ExitGv_distinct s2Step57ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step57ExitGvRow.payload.take 41) s2Step57ExitGvRow.sign=s2Step57ExitGvOut := by decide +kernel
  have hi : s2Step57ExitGvRow.payload.drop 41=s2Step57ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step57ExitGv_retired] at result
  exact result
def s2Step58ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step58ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step58ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 817, 820],769⟩
def s2Step58ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237],769⟩
def s2Step58ExitGExtra : List Wire := [817, 820]
theorem s2Step58ExitG_distinct : (s2Step58ExitGRow.sign::s2Step58ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step58ExitG_owned : (s2Step58ExitGRow.sign::s2Step58ExitGRow.payload).toFinset⊆s2Step58ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step58ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58ExitG_retired : s2Step58ExitGBefore.retireSet s2Step58ExitGExtra.toFinset=s2Step58ExitGAfter := by
  unfold Arena.retireSet s2Step58ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step58ExitGBefore,s2Step58ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step58ExitG_checked : planRowResizeLog s2Step58ExitGBefore s2Step58ExitGRow 238 []=
    some (s2Step58ExitGAfter,s2Step58ExitGOut,shrinkRow 769 s2Step58ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step58ExitGBefore s2Step58ExitGRow 238 s2Step58ExitG_distinct s2Step58ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step58ExitGRow.payload.take 238) s2Step58ExitGRow.sign=s2Step58ExitGOut := by decide +kernel
  have hi : s2Step58ExitGRow.payload.drop 238=s2Step58ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step58ExitG_retired] at result
  exact result
def s2Step58ExitFBefore : Arena := s2Step58ExitGAfter
def s2Step58ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step58ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 790],768⟩
def s2Step58ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩
def s2Step58ExitFExtra : List Wire := [790]
theorem s2Step58ExitF_distinct : (s2Step58ExitFRow.sign::s2Step58ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step58ExitF_owned : (s2Step58ExitFRow.sign::s2Step58ExitFRow.payload).toFinset⊆s2Step58ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step58ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58ExitF_retired : s2Step58ExitFBefore.retireSet s2Step58ExitFExtra.toFinset=s2Step58ExitFAfter := by
  unfold Arena.retireSet s2Step58ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step58ExitFBefore,s2Step58ExitGAfter,s2Step58ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step58ExitF_checked : planRowResizeLog s2Step58ExitFBefore s2Step58ExitFRow 239 []=
    some (s2Step58ExitFAfter,s2Step58ExitFOut,shrinkRow 768 s2Step58ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step58ExitFBefore s2Step58ExitFRow 239 s2Step58ExitF_distinct s2Step58ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step58ExitFRow.payload.take 239) s2Step58ExitFRow.sign=s2Step58ExitFOut := by decide +kernel
  have hi : s2Step58ExitFRow.payload.drop 239=s2Step58ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step58ExitF_retired] at result
  exact result
def s2Step58ExitFvBefore : Arena := s2Step58ExitFAfter
def s2Step58ExitFvAfter : Arena := s2Step58ExitFAfter
def s2Step58ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808],770⟩
def s2Step58ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808],770⟩
def s2Step58ExitFvExtra : List Wire := []
theorem s2Step58ExitFv_distinct : (s2Step58ExitFvRow.sign::s2Step58ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step58ExitFv_owned : (s2Step58ExitFvRow.sign::s2Step58ExitFvRow.payload).toFinset⊆s2Step58ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step58ExitFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58ExitFv_reserved : s2Step58ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step58ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step58ExitFv_checked : planRowResizeLog s2Step58ExitFvBefore s2Step58ExitFvRow 42 []=
    some (s2Step58ExitFvAfter,s2Step58ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step58ExitFvBefore s2Step58ExitFvAfter s2Step58ExitFvRow 42 []
    s2Step58ExitFv_distinct s2Step58ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step58ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step58ExitFvRow.payload++[]) s2Step58ExitFvRow.sign=s2Step58ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step58ExitGvBefore : Arena := s2Step58ExitFAfter
def s2Step58ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step58ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 792],771⟩
def s2Step58ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩
def s2Step58ExitGvExtra : List Wire := [792]
theorem s2Step58ExitGv_distinct : (s2Step58ExitGvRow.sign::s2Step58ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step58ExitGv_owned : (s2Step58ExitGvRow.sign::s2Step58ExitGvRow.payload).toFinset⊆s2Step58ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step58ExitGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58ExitGv_retired : s2Step58ExitGvBefore.retireSet s2Step58ExitGvExtra.toFinset=s2Step58ExitGvAfter := by
  unfold Arena.retireSet s2Step58ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step58ExitGvBefore,s2Step58ExitFAfter,s2Step58ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step58ExitGv_checked : planRowResizeLog s2Step58ExitGvBefore s2Step58ExitGvRow 41 []=
    some (s2Step58ExitGvAfter,s2Step58ExitGvOut,shrinkRow 771 s2Step58ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step58ExitGvBefore s2Step58ExitGvRow 41 s2Step58ExitGv_distinct s2Step58ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step58ExitGvRow.payload.take 41) s2Step58ExitGvRow.sign=s2Step58ExitGvOut := by decide +kernel
  have hi : s2Step58ExitGvRow.payload.drop 41=s2Step58ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step58ExitGv_retired] at result
  exact result
def s2Step59ExitGBefore : Arena := s2Step56ExitGBefore
def s2Step59ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step59ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 816, 817],769⟩
def s2Step59ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237],769⟩
def s2Step59ExitGExtra : List Wire := [816, 817]
theorem s2Step59ExitG_distinct : (s2Step59ExitGRow.sign::s2Step59ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step59ExitG_owned : (s2Step59ExitGRow.sign::s2Step59ExitGRow.payload).toFinset⊆s2Step59ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step59ExitGBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59ExitG_retired : s2Step59ExitGBefore.retireSet s2Step59ExitGExtra.toFinset=s2Step59ExitGAfter := by
  unfold Arena.retireSet s2Step59ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step59ExitGBefore,s2Step56ExitGBefore,s2Step59ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step59ExitG_checked : planRowResizeLog s2Step59ExitGBefore s2Step59ExitGRow 238 []=
    some (s2Step59ExitGAfter,s2Step59ExitGOut,shrinkRow 769 s2Step59ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step59ExitGBefore s2Step59ExitGRow 238 s2Step59ExitG_distinct s2Step59ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step59ExitGRow.payload.take 238) s2Step59ExitGRow.sign=s2Step59ExitGOut := by decide +kernel
  have hi : s2Step59ExitGRow.payload.drop 238=s2Step59ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step59ExitG_retired] at result
  exact result
def s2Step59ExitFBefore : Arena := s2Step59ExitGAfter
def s2Step59ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step59ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 820],768⟩
def s2Step59ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩
def s2Step59ExitFExtra : List Wire := [820]
theorem s2Step59ExitF_distinct : (s2Step59ExitFRow.sign::s2Step59ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step59ExitF_owned : (s2Step59ExitFRow.sign::s2Step59ExitFRow.payload).toFinset⊆s2Step59ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step59ExitFBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59ExitF_retired : s2Step59ExitFBefore.retireSet s2Step59ExitFExtra.toFinset=s2Step59ExitFAfter := by
  unfold Arena.retireSet s2Step59ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step59ExitFBefore,s2Step59ExitGAfter,s2Step59ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step59ExitF_checked : planRowResizeLog s2Step59ExitFBefore s2Step59ExitFRow 239 []=
    some (s2Step59ExitFAfter,s2Step59ExitFOut,shrinkRow 768 s2Step59ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step59ExitFBefore s2Step59ExitFRow 239 s2Step59ExitF_distinct s2Step59ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step59ExitFRow.payload.take 239) s2Step59ExitFRow.sign=s2Step59ExitFOut := by decide +kernel
  have hi : s2Step59ExitFRow.payload.drop 239=s2Step59ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step59ExitF_retired] at result
  exact result
def s2Step59ExitFvBefore : Arena := s2Step59ExitFAfter
def s2Step59ExitFvAfter : Arena := s2Step59ExitFAfter
def s2Step59ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800],770⟩
def s2Step59ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800],770⟩
def s2Step59ExitFvExtra : List Wire := []
theorem s2Step59ExitFv_distinct : (s2Step59ExitFvRow.sign::s2Step59ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step59ExitFv_owned : (s2Step59ExitFvRow.sign::s2Step59ExitFvRow.payload).toFinset⊆s2Step59ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step59ExitFvBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59ExitFv_reserved : s2Step59ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step59ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step59ExitFv_checked : planRowResizeLog s2Step59ExitFvBefore s2Step59ExitFvRow 43 []=
    some (s2Step59ExitFvAfter,s2Step59ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step59ExitFvBefore s2Step59ExitFvAfter s2Step59ExitFvRow 43 []
    s2Step59ExitFv_distinct s2Step59ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step59ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step59ExitFvRow.payload++[]) s2Step59ExitFvRow.sign=s2Step59ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step59ExitGvBefore : Arena := s2Step59ExitFAfter
def s2Step59ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step59ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 814],771⟩
def s2Step59ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815],771⟩
def s2Step59ExitGvExtra : List Wire := [814]
theorem s2Step59ExitGv_distinct : (s2Step59ExitGvRow.sign::s2Step59ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step59ExitGv_owned : (s2Step59ExitGvRow.sign::s2Step59ExitGvRow.payload).toFinset⊆s2Step59ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step59ExitGvBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59ExitGv_retired : s2Step59ExitGvBefore.retireSet s2Step59ExitGvExtra.toFinset=s2Step59ExitGvAfter := by
  unfold Arena.retireSet s2Step59ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step59ExitGvBefore,s2Step59ExitFAfter,s2Step59ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step59ExitGv_checked : planRowResizeLog s2Step59ExitGvBefore s2Step59ExitGvRow 42 []=
    some (s2Step59ExitGvAfter,s2Step59ExitGvOut,shrinkRow 771 s2Step59ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step59ExitGvBefore s2Step59ExitGvRow 42 s2Step59ExitGv_distinct s2Step59ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step59ExitGvRow.payload.take 42) s2Step59ExitGvRow.sign=s2Step59ExitGvOut := by decide +kernel
  have hi : s2Step59ExitGvRow.payload.drop 42=s2Step59ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step59ExitGv_retired] at result
  exact result
def s2Step60ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step60ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<237) ∨ (238≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step60ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 790, 816],769⟩
def s2Step60ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],769⟩
def s2Step60ExitGExtra : List Wire := [237, 790, 816]
theorem s2Step60ExitG_distinct : (s2Step60ExitGRow.sign::s2Step60ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step60ExitG_owned : (s2Step60ExitGRow.sign::s2Step60ExitGRow.payload).toFinset⊆s2Step60ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step60ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60ExitG_retired : s2Step60ExitGBefore.retireSet s2Step60ExitGExtra.toFinset=s2Step60ExitGAfter := by
  unfold Arena.retireSet s2Step60ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step60ExitGBefore,s2Step60ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step60ExitG_checked : planRowResizeLog s2Step60ExitGBefore s2Step60ExitGRow 237 []=
    some (s2Step60ExitGAfter,s2Step60ExitGOut,shrinkRow 769 s2Step60ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step60ExitGBefore s2Step60ExitGRow 237 s2Step60ExitG_distinct s2Step60ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step60ExitGRow.payload.take 237) s2Step60ExitGRow.sign=s2Step60ExitGOut := by decide +kernel
  have hi : s2Step60ExitGRow.payload.drop 237=s2Step60ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step60ExitG_retired] at result
  exact result
def s2Step60ExitFBefore : Arena := s2Step60ExitGAfter
def s2Step60ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<237) ∨ (238≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step60ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 817],768⟩
def s2Step60ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩
def s2Step60ExitFExtra : List Wire := [817]
theorem s2Step60ExitF_distinct : (s2Step60ExitFRow.sign::s2Step60ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step60ExitF_owned : (s2Step60ExitFRow.sign::s2Step60ExitFRow.payload).toFinset⊆s2Step60ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step60ExitFBefore (fun q => (0≤q ∧ q<237) ∨ (238≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60ExitF_retired : s2Step60ExitFBefore.retireSet s2Step60ExitFExtra.toFinset=s2Step60ExitFAfter := by
  unfold Arena.retireSet s2Step60ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step60ExitFBefore,s2Step60ExitGAfter,s2Step60ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step60ExitF_checked : planRowResizeLog s2Step60ExitFBefore s2Step60ExitFRow 239 []=
    some (s2Step60ExitFAfter,s2Step60ExitFOut,shrinkRow 768 s2Step60ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step60ExitFBefore s2Step60ExitFRow 239 s2Step60ExitF_distinct s2Step60ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step60ExitFRow.payload.take 239) s2Step60ExitFRow.sign=s2Step60ExitFOut := by decide +kernel
  have hi : s2Step60ExitFRow.payload.drop 239=s2Step60ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step60ExitF_retired] at result
  exact result
def s2Step60ExitFvBefore : Arena := s2Step60ExitFAfter
def s2Step60ExitFvAfter : Arena := s2Step60ExitFAfter
def s2Step60ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812],770⟩
def s2Step60ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812],770⟩
def s2Step60ExitFvExtra : List Wire := []
theorem s2Step60ExitFv_distinct : (s2Step60ExitFvRow.sign::s2Step60ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step60ExitFv_owned : (s2Step60ExitFvRow.sign::s2Step60ExitFvRow.payload).toFinset⊆s2Step60ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step60ExitFvBefore (fun q => (0≤q ∧ q<237) ∨ (238≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60ExitFv_reserved : s2Step60ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step60ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step60ExitFv_checked : planRowResizeLog s2Step60ExitFvBefore s2Step60ExitFvRow 44 []=
    some (s2Step60ExitFvAfter,s2Step60ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step60ExitFvBefore s2Step60ExitFvAfter s2Step60ExitFvRow 44 []
    s2Step60ExitFv_distinct s2Step60ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step60ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step60ExitFvRow.payload++[]) s2Step60ExitFvRow.sign=s2Step60ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step60ExitGvBefore : Arena := s2Step60ExitFAfter
def s2Step60ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<237) ∨ (238≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step60ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807],771⟩
def s2Step60ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792],771⟩
def s2Step60ExitGvExtra : List Wire := [807]
theorem s2Step60ExitGv_distinct : (s2Step60ExitGvRow.sign::s2Step60ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step60ExitGv_owned : (s2Step60ExitGvRow.sign::s2Step60ExitGvRow.payload).toFinset⊆s2Step60ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step60ExitGvBefore (fun q => (0≤q ∧ q<237) ∨ (238≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60ExitGv_retired : s2Step60ExitGvBefore.retireSet s2Step60ExitGvExtra.toFinset=s2Step60ExitGvAfter := by
  unfold Arena.retireSet s2Step60ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step60ExitGvBefore,s2Step60ExitFAfter,s2Step60ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step60ExitGv_checked : planRowResizeLog s2Step60ExitGvBefore s2Step60ExitGvRow 43 []=
    some (s2Step60ExitGvAfter,s2Step60ExitGvOut,shrinkRow 771 s2Step60ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step60ExitGvBefore s2Step60ExitGvRow 43 s2Step60ExitGv_distinct s2Step60ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step60ExitGvRow.payload.take 43) s2Step60ExitGvRow.sign=s2Step60ExitGvOut := by decide +kernel
  have hi : s2Step60ExitGvRow.payload.drop 43=s2Step60ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step60ExitGv_retired] at result
  exact result
def s2Step61ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step61ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step61ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 820, 814, 790],769⟩
def s2Step61ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],769⟩
def s2Step61ExitGExtra : List Wire := [820, 814, 790]
theorem s2Step61ExitG_distinct : (s2Step61ExitGRow.sign::s2Step61ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step61ExitG_owned : (s2Step61ExitGRow.sign::s2Step61ExitGRow.payload).toFinset⊆s2Step61ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step61ExitGBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61ExitG_retired : s2Step61ExitGBefore.retireSet s2Step61ExitGExtra.toFinset=s2Step61ExitGAfter := by
  unfold Arena.retireSet s2Step61ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step61ExitGBefore,s2Step61ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step61ExitG_checked : planRowResizeLog s2Step61ExitGBefore s2Step61ExitGRow 237 []=
    some (s2Step61ExitGAfter,s2Step61ExitGOut,shrinkRow 769 s2Step61ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step61ExitGBefore s2Step61ExitGRow 237 s2Step61ExitG_distinct s2Step61ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step61ExitGRow.payload.take 237) s2Step61ExitGRow.sign=s2Step61ExitGOut := by decide +kernel
  have hi : s2Step61ExitGRow.payload.drop 237=s2Step61ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step61ExitG_retired] at result
  exact result
def s2Step61ExitFBefore : Arena := s2Step61ExitGAfter
def s2Step61ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<750) ∨ (751≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step61ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 816],768⟩
def s2Step61ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749],768⟩
def s2Step61ExitFExtra : List Wire := [750, 816]
theorem s2Step61ExitF_distinct : (s2Step61ExitFRow.sign::s2Step61ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step61ExitF_owned : (s2Step61ExitFRow.sign::s2Step61ExitFRow.payload).toFinset⊆s2Step61ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step61ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61ExitF_retired : s2Step61ExitFBefore.retireSet s2Step61ExitFExtra.toFinset=s2Step61ExitFAfter := by
  unfold Arena.retireSet s2Step61ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step61ExitFBefore,s2Step61ExitGAfter,s2Step61ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step61ExitF_checked : planRowResizeLog s2Step61ExitFBefore s2Step61ExitFRow 238 []=
    some (s2Step61ExitFAfter,s2Step61ExitFOut,shrinkRow 768 s2Step61ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step61ExitFBefore s2Step61ExitFRow 238 s2Step61ExitF_distinct s2Step61ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step61ExitFRow.payload.take 238) s2Step61ExitFRow.sign=s2Step61ExitFOut := by decide +kernel
  have hi : s2Step61ExitFRow.payload.drop 238=s2Step61ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step61ExitF_retired] at result
  exact result
def s2Step61ExitFvBefore : Arena := s2Step61ExitFAfter
def s2Step61ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<750) ∨ (751≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step61ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 845],770⟩
def s2Step61ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812],770⟩
def s2Step61ExitFvExtra : List Wire := [845]
theorem s2Step61ExitFv_distinct : (s2Step61ExitFvRow.sign::s2Step61ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step61ExitFv_owned : (s2Step61ExitFvRow.sign::s2Step61ExitFvRow.payload).toFinset⊆s2Step61ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step61ExitFvBefore (fun q => (0≤q ∧ q<750) ∨ (751≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61ExitFv_retired : s2Step61ExitFvBefore.retireSet s2Step61ExitFvExtra.toFinset=s2Step61ExitFvAfter := by
  unfold Arena.retireSet s2Step61ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step61ExitFvBefore,s2Step61ExitFAfter,s2Step61ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step61ExitFv_checked : planRowResizeLog s2Step61ExitFvBefore s2Step61ExitFvRow 44 []=
    some (s2Step61ExitFvAfter,s2Step61ExitFvOut,shrinkRow 770 s2Step61ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step61ExitFvBefore s2Step61ExitFvRow 44 s2Step61ExitFv_distinct s2Step61ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step61ExitFvRow.payload.take 44) s2Step61ExitFvRow.sign=s2Step61ExitFvOut := by decide +kernel
  have hi : s2Step61ExitFvRow.payload.drop 44=s2Step61ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step61ExitFv_retired] at result
  exact result
def s2Step61ExitGvBefore : Arena := s2Step61ExitFvAfter
def s2Step61ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<750) ∨ (751≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step61ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 822, 844],771⟩
def s2Step61ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792],771⟩
def s2Step61ExitGvExtra : List Wire := [822, 844]
theorem s2Step61ExitGv_distinct : (s2Step61ExitGvRow.sign::s2Step61ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step61ExitGv_owned : (s2Step61ExitGvRow.sign::s2Step61ExitGvRow.payload).toFinset⊆s2Step61ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step61ExitGvBefore (fun q => (0≤q ∧ q<750) ∨ (751≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61ExitGv_retired : s2Step61ExitGvBefore.retireSet s2Step61ExitGvExtra.toFinset=s2Step61ExitGvAfter := by
  unfold Arena.retireSet s2Step61ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step61ExitGvBefore,s2Step61ExitFvAfter,s2Step61ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step61ExitGv_checked : planRowResizeLog s2Step61ExitGvBefore s2Step61ExitGvRow 43 []=
    some (s2Step61ExitGvAfter,s2Step61ExitGvOut,shrinkRow 771 s2Step61ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step61ExitGvBefore s2Step61ExitGvRow 43 s2Step61ExitGv_distinct s2Step61ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step61ExitGvRow.payload.take 43) s2Step61ExitGvRow.sign=s2Step61ExitGvOut := by decide +kernel
  have hi : s2Step61ExitGvRow.payload.drop 43=s2Step61ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step61ExitGv_retired] at result
  exact result
def s2Step62ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step62ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step62ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 817, 844],769⟩
def s2Step62ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],769⟩
def s2Step62ExitGExtra : List Wire := [817, 844]
theorem s2Step62ExitG_distinct : (s2Step62ExitGRow.sign::s2Step62ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step62ExitG_owned : (s2Step62ExitGRow.sign::s2Step62ExitGRow.payload).toFinset⊆s2Step62ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step62ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62ExitG_retired : s2Step62ExitGBefore.retireSet s2Step62ExitGExtra.toFinset=s2Step62ExitGAfter := by
  unfold Arena.retireSet s2Step62ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step62ExitGBefore,s2Step62ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step62ExitG_checked : planRowResizeLog s2Step62ExitGBefore s2Step62ExitGRow 237 []=
    some (s2Step62ExitGAfter,s2Step62ExitGOut,shrinkRow 769 s2Step62ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step62ExitGBefore s2Step62ExitGRow 237 s2Step62ExitG_distinct s2Step62ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step62ExitGRow.payload.take 237) s2Step62ExitGRow.sign=s2Step62ExitGOut := by decide +kernel
  have hi : s2Step62ExitGRow.payload.drop 237=s2Step62ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step62ExitG_retired] at result
  exact result
def s2Step62ExitFBefore : Arena := s2Step62ExitGAfter
def s2Step62ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<749) ∨ (750≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step62ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 845],768⟩
def s2Step62ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748],768⟩
def s2Step62ExitFExtra : List Wire := [749, 845]
theorem s2Step62ExitF_distinct : (s2Step62ExitFRow.sign::s2Step62ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step62ExitF_owned : (s2Step62ExitFRow.sign::s2Step62ExitFRow.payload).toFinset⊆s2Step62ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step62ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62ExitF_retired : s2Step62ExitFBefore.retireSet s2Step62ExitFExtra.toFinset=s2Step62ExitFAfter := by
  unfold Arena.retireSet s2Step62ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step62ExitFBefore,s2Step62ExitGAfter,s2Step62ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step62ExitF_checked : planRowResizeLog s2Step62ExitFBefore s2Step62ExitFRow 237 []=
    some (s2Step62ExitFAfter,s2Step62ExitFOut,shrinkRow 768 s2Step62ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step62ExitFBefore s2Step62ExitFRow 237 s2Step62ExitF_distinct s2Step62ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step62ExitFRow.payload.take 237) s2Step62ExitFRow.sign=s2Step62ExitFOut := by decide +kernel
  have hi : s2Step62ExitFRow.payload.drop 237=s2Step62ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step62ExitF_retired] at result
  exact result
def s2Step62ExitFvBefore : Arena := s2Step62ExitFAfter
def s2Step62ExitFvAfter : Arena := s2Step62ExitFAfter
def s2Step62ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820],770⟩
def s2Step62ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820],770⟩
def s2Step62ExitFvExtra : List Wire := []
theorem s2Step62ExitFv_distinct : (s2Step62ExitFvRow.sign::s2Step62ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step62ExitFv_owned : (s2Step62ExitFvRow.sign::s2Step62ExitFvRow.payload).toFinset⊆s2Step62ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step62ExitFvBefore (fun q => (0≤q ∧ q<749) ∨ (750≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62ExitFv_reserved : s2Step62ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step62ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step62ExitFv_checked : planRowResizeLog s2Step62ExitFvBefore s2Step62ExitFvRow 45 []=
    some (s2Step62ExitFvAfter,s2Step62ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step62ExitFvBefore s2Step62ExitFvAfter s2Step62ExitFvRow 45 []
    s2Step62ExitFv_distinct s2Step62ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step62ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step62ExitFvRow.payload++[]) s2Step62ExitFvRow.sign=s2Step62ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step62ExitGvBefore : Arena := s2Step62ExitFAfter
def s2Step62ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<749) ∨ (750≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step62ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 816],771⟩
def s2Step62ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807],771⟩
def s2Step62ExitGvExtra : List Wire := [816]
theorem s2Step62ExitGv_distinct : (s2Step62ExitGvRow.sign::s2Step62ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step62ExitGv_owned : (s2Step62ExitGvRow.sign::s2Step62ExitGvRow.payload).toFinset⊆s2Step62ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step62ExitGvBefore (fun q => (0≤q ∧ q<749) ∨ (750≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62ExitGv_retired : s2Step62ExitGvBefore.retireSet s2Step62ExitGvExtra.toFinset=s2Step62ExitGvAfter := by
  unfold Arena.retireSet s2Step62ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step62ExitGvBefore,s2Step62ExitFAfter,s2Step62ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step62ExitGv_checked : planRowResizeLog s2Step62ExitGvBefore s2Step62ExitGvRow 44 []=
    some (s2Step62ExitGvAfter,s2Step62ExitGvOut,shrinkRow 771 s2Step62ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step62ExitGvBefore s2Step62ExitGvRow 44 s2Step62ExitGv_distinct s2Step62ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step62ExitGvRow.payload.take 44) s2Step62ExitGvRow.sign=s2Step62ExitGvOut := by decide +kernel
  have hi : s2Step62ExitGvRow.payload.drop 44=s2Step62ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step62ExitGv_retired] at result
  exact result
def s2Step63ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)),Finset.filter_subset _ _⟩
def s2Step63ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)),Finset.filter_subset _ _⟩
def s2Step63ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 816],769⟩
def s2Step63ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],769⟩
def s2Step63ExitGExtra : List Wire := [816]
theorem s2Step63ExitG_distinct : (s2Step63ExitGRow.sign::s2Step63ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step63ExitG_owned : (s2Step63ExitGRow.sign::s2Step63ExitGRow.payload).toFinset⊆s2Step63ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step63ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63ExitG_retired : s2Step63ExitGBefore.retireSet s2Step63ExitGExtra.toFinset=s2Step63ExitGAfter := by
  unfold Arena.retireSet s2Step63ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step63ExitGBefore,s2Step63ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step63ExitG_checked : planRowResizeLog s2Step63ExitGBefore s2Step63ExitGRow 237 []=
    some (s2Step63ExitGAfter,s2Step63ExitGOut,shrinkRow 769 s2Step63ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step63ExitGBefore s2Step63ExitGRow 237 s2Step63ExitG_distinct s2Step63ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step63ExitGRow.payload.take 237) s2Step63ExitGRow.sign=s2Step63ExitGOut := by decide +kernel
  have hi : s2Step63ExitGRow.payload.drop 237=s2Step63ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step63ExitG_retired] at result
  exact result
def s2Step63ExitFBefore : Arena := s2Step63ExitGAfter
def s2Step63ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)),Finset.filter_subset _ _⟩
def s2Step63ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 845],768⟩
def s2Step63ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748],768⟩
def s2Step63ExitFExtra : List Wire := [845]
theorem s2Step63ExitF_distinct : (s2Step63ExitFRow.sign::s2Step63ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step63ExitF_owned : (s2Step63ExitFRow.sign::s2Step63ExitFRow.payload).toFinset⊆s2Step63ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step63ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63ExitF_retired : s2Step63ExitFBefore.retireSet s2Step63ExitFExtra.toFinset=s2Step63ExitFAfter := by
  unfold Arena.retireSet s2Step63ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step63ExitFBefore,s2Step63ExitGAfter,s2Step63ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step63ExitF_checked : planRowResizeLog s2Step63ExitFBefore s2Step63ExitFRow 237 []=
    some (s2Step63ExitFAfter,s2Step63ExitFOut,shrinkRow 768 s2Step63ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step63ExitFBefore s2Step63ExitFRow 237 s2Step63ExitF_distinct s2Step63ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step63ExitFRow.payload.take 237) s2Step63ExitFRow.sign=s2Step63ExitFOut := by decide +kernel
  have hi : s2Step63ExitFRow.payload.drop 237=s2Step63ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step63ExitF_retired] at result
  exact result
def s2Step63ExitFvBefore : Arena := s2Step63ExitFAfter
def s2Step63ExitFvAfter : Arena := s2Step63ExitFAfter
def s2Step63ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 844],770⟩
def s2Step63ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 844],770⟩
def s2Step63ExitFvExtra : List Wire := []
theorem s2Step63ExitFv_distinct : (s2Step63ExitFvRow.sign::s2Step63ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step63ExitFv_owned : (s2Step63ExitFvRow.sign::s2Step63ExitFvRow.payload).toFinset⊆s2Step63ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step63ExitFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63ExitFv_reserved : s2Step63ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step63ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl
theorem s2Step63ExitFv_checked : planRowResizeLog s2Step63ExitFvBefore s2Step63ExitFvRow 46 []=
    some (s2Step63ExitFvAfter,s2Step63ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step63ExitFvBefore s2Step63ExitFvAfter s2Step63ExitFvRow 46 []
    s2Step63ExitFv_distinct s2Step63ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step63ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step63ExitFvRow.payload++[]) s2Step63ExitFvRow.sign=s2Step63ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step63ExitGvBefore : Arena := s2Step63ExitFAfter
def s2Step63ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)),Finset.filter_subset _ _⟩
def s2Step63ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 822, 817],771⟩
def s2Step63ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807],771⟩
def s2Step63ExitGvExtra : List Wire := [822, 817]
theorem s2Step63ExitGv_distinct : (s2Step63ExitGvRow.sign::s2Step63ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step63ExitGv_owned : (s2Step63ExitGvRow.sign::s2Step63ExitGvRow.payload).toFinset⊆s2Step63ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step63ExitGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63ExitGv_retired : s2Step63ExitGvBefore.retireSet s2Step63ExitGvExtra.toFinset=s2Step63ExitGvAfter := by
  unfold Arena.retireSet s2Step63ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step63ExitGvBefore,s2Step63ExitFAfter,s2Step63ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega
theorem s2Step63ExitGv_checked : planRowResizeLog s2Step63ExitGvBefore s2Step63ExitGvRow 44 []=
    some (s2Step63ExitGvAfter,s2Step63ExitGvOut,shrinkRow 771 s2Step63ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step63ExitGvBefore s2Step63ExitGvRow 44 s2Step63ExitGv_distinct s2Step63ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step63ExitGvRow.payload.take 44) s2Step63ExitGvRow.sign=s2Step63ExitGvOut := by decide +kernel
  have hi : s2Step63ExitGvRow.payload.drop 44=s2Step63ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step63ExitGv_retired] at result
  exact result

end ECDSAAdd.Arithmetic.Paper935
