import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk0

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step16HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step16HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step16HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩
def s2Step16HeadGFresh : List Wire := [782]
theorem s2Step16HeadG_distinct : (s2Step16HeadGRow.sign::s2Step16HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step16HeadG_owned : (s2Step16HeadGRow.sign::s2Step16HeadGRow.payload).toFinset⊆s2Step16HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step16HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16HeadG_reserved : s2Step16HeadGBefore.reserve s2Step16HeadGFresh.toFinset=some s2Step16HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step16HeadGFresh,arenaWires]
  · norm_num [s2Step16HeadGBefore,s2Step16HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step16HeadGAfter,s2Step16HeadGBefore,s2Step16HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step16HeadG_checked : planRowResizeLog s2Step16HeadGBefore s2Step16HeadGRow 257 s2Step16HeadGFresh=
    some (s2Step16HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩,growRow 769 s2Step16HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step16HeadGBefore s2Step16HeadGAfter s2Step16HeadGRow 257 s2Step16HeadGFresh
    s2Step16HeadG_distinct s2Step16HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step16HeadG_reserved
  have rowEq : WindowRow.mk (s2Step16HeadGRow.payload++s2Step16HeadGFresh) s2Step16HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step16HeadFBefore : Arena := s2Step16HeadGAfter
def s2Step16HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step16HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step16HeadFFresh : List Wire := [784]
theorem s2Step16HeadF_distinct : (s2Step16HeadFRow.sign::s2Step16HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step16HeadF_owned : (s2Step16HeadFRow.sign::s2Step16HeadFRow.payload).toFinset⊆s2Step16HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step16HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16HeadF_reserved : s2Step16HeadFBefore.reserve s2Step16HeadFFresh.toFinset=some s2Step16HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step16HeadFFresh,arenaWires]
  · norm_num [s2Step16HeadFBefore,s2Step16HeadGAfter,s2Step16HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step16HeadFAfter,s2Step16HeadFBefore,s2Step16HeadGAfter,s2Step16HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step16HeadF_checked : planRowResizeLog s2Step16HeadFBefore s2Step16HeadFRow 257 s2Step16HeadFFresh=
    some (s2Step16HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩,growRow 768 s2Step16HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step16HeadFBefore s2Step16HeadFAfter s2Step16HeadFRow 257 s2Step16HeadFFresh
    s2Step16HeadF_distinct s2Step16HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step16HeadF_reserved
  have rowEq : WindowRow.mk (s2Step16HeadFRow.payload++s2Step16HeadFFresh) s2Step16HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step16HeadGvBefore : Arena := s2Step16HeadFAfter
def s2Step16HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<820) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step16HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 780],771⟩
def s2Step16HeadGvFresh : List Wire := [819]
theorem s2Step16HeadGv_distinct : (s2Step16HeadGvRow.sign::s2Step16HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step16HeadGv_owned : (s2Step16HeadGvRow.sign::s2Step16HeadGvRow.payload).toFinset⊆s2Step16HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step16HeadGvBefore (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16HeadGv_reserved : s2Step16HeadGvBefore.reserve s2Step16HeadGvFresh.toFinset=some s2Step16HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step16HeadGvFresh,arenaWires]
  · norm_num [s2Step16HeadGvBefore,s2Step16HeadFAfter,s2Step16HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step16HeadGvAfter,s2Step16HeadGvBefore,s2Step16HeadFAfter,s2Step16HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step16HeadGv_checked : planRowResizeLog s2Step16HeadGvBefore s2Step16HeadGvRow 18 s2Step16HeadGvFresh=
    some (s2Step16HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 780, 819],771⟩,growRow 771 s2Step16HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step16HeadGvBefore s2Step16HeadGvAfter s2Step16HeadGvRow 18 s2Step16HeadGvFresh
    s2Step16HeadGv_distinct s2Step16HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step16HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step16HeadGvRow.payload++s2Step16HeadGvFresh) s2Step16HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 780, 819],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step16HeadFvBefore : Arena := s2Step16HeadGvAfter
def s2Step16HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step16HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817],770⟩
def s2Step16HeadFvFresh : List Wire := [820]
theorem s2Step16HeadFv_distinct : (s2Step16HeadFvRow.sign::s2Step16HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step16HeadFv_owned : (s2Step16HeadFvRow.sign::s2Step16HeadFvRow.payload).toFinset⊆s2Step16HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step16HeadFvBefore (fun q => (0≤q ∧ q<820) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16HeadFv_reserved : s2Step16HeadFvBefore.reserve s2Step16HeadFvFresh.toFinset=some s2Step16HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step16HeadFvFresh,arenaWires]
  · norm_num [s2Step16HeadFvBefore,s2Step16HeadGvAfter,s2Step16HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step16HeadFvAfter,s2Step16HeadFvBefore,s2Step16HeadGvAfter,s2Step16HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step16HeadFv_checked : planRowResizeLog s2Step16HeadFvBefore s2Step16HeadFvRow 18 s2Step16HeadFvFresh=
    some (s2Step16HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820],770⟩,growRow 770 s2Step16HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step16HeadFvBefore s2Step16HeadFvAfter s2Step16HeadFvRow 18 s2Step16HeadFvFresh
    s2Step16HeadFv_distinct s2Step16HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step16HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step16HeadFvRow.payload++s2Step16HeadFvFresh) s2Step16HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step17HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step17HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step17HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩
def s2Step17HeadGFresh : List Wire := [783]
theorem s2Step17HeadG_distinct : (s2Step17HeadGRow.sign::s2Step17HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step17HeadG_owned : (s2Step17HeadGRow.sign::s2Step17HeadGRow.payload).toFinset⊆s2Step17HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step17HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17HeadG_reserved : s2Step17HeadGBefore.reserve s2Step17HeadGFresh.toFinset=some s2Step17HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step17HeadGFresh,arenaWires]
  · norm_num [s2Step17HeadGBefore,s2Step17HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step17HeadGAfter,s2Step17HeadGBefore,s2Step17HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step17HeadG_checked : planRowResizeLog s2Step17HeadGBefore s2Step17HeadGRow 257 s2Step17HeadGFresh=
    some (s2Step17HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩,growRow 769 s2Step17HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step17HeadGBefore s2Step17HeadGAfter s2Step17HeadGRow 257 s2Step17HeadGFresh
    s2Step17HeadG_distinct s2Step17HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step17HeadG_reserved
  have rowEq : WindowRow.mk (s2Step17HeadGRow.payload++s2Step17HeadGFresh) s2Step17HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step17HeadFBefore : Arena := s2Step17HeadGAfter
def s2Step17HeadFAfter : Arena := s2Step16HeadFvAfter
def s2Step17HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step17HeadFFresh : List Wire := [782]
theorem s2Step17HeadF_distinct : (s2Step17HeadFRow.sign::s2Step17HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step17HeadF_owned : (s2Step17HeadFRow.sign::s2Step17HeadFRow.payload).toFinset⊆s2Step17HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step17HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17HeadF_reserved : s2Step17HeadFBefore.reserve s2Step17HeadFFresh.toFinset=some s2Step17HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step17HeadFFresh,arenaWires]
  · norm_num [s2Step17HeadFBefore,s2Step17HeadGAfter,s2Step17HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step17HeadFAfter,s2Step16HeadFvAfter,s2Step17HeadFBefore,s2Step17HeadGAfter,s2Step17HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step17HeadF_checked : planRowResizeLog s2Step17HeadFBefore s2Step17HeadFRow 257 s2Step17HeadFFresh=
    some (s2Step17HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩,growRow 768 s2Step17HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step17HeadFBefore s2Step17HeadFAfter s2Step17HeadFRow 257 s2Step17HeadFFresh
    s2Step17HeadF_distinct s2Step17HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step17HeadF_reserved
  have rowEq : WindowRow.mk (s2Step17HeadFRow.payload++s2Step17HeadFFresh) s2Step17HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step17HeadGvBefore : Arena := s2Step16HeadFvAfter
def s2Step17HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step17HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 780],771⟩
def s2Step17HeadGvFresh : List Wire := [821]
theorem s2Step17HeadGv_distinct : (s2Step17HeadGvRow.sign::s2Step17HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step17HeadGv_owned : (s2Step17HeadGvRow.sign::s2Step17HeadGvRow.payload).toFinset⊆s2Step17HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step17HeadGvBefore (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17HeadGv_reserved : s2Step17HeadGvBefore.reserve s2Step17HeadGvFresh.toFinset=some s2Step17HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step17HeadGvFresh,arenaWires]
  · norm_num [s2Step17HeadGvBefore,s2Step16HeadFvAfter,s2Step17HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step17HeadGvAfter,s2Step17HeadGvBefore,s2Step16HeadFvAfter,s2Step17HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step17HeadGv_checked : planRowResizeLog s2Step17HeadGvBefore s2Step17HeadGvRow 19 s2Step17HeadGvFresh=
    some (s2Step17HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 780, 821],771⟩,growRow 771 s2Step17HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step17HeadGvBefore s2Step17HeadGvAfter s2Step17HeadGvRow 19 s2Step17HeadGvFresh
    s2Step17HeadGv_distinct s2Step17HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step17HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step17HeadGvRow.payload++s2Step17HeadGvFresh) s2Step17HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 780, 821],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step17HeadFvBefore : Arena := s2Step17HeadGvAfter
def s2Step17HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step17HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820],770⟩
def s2Step17HeadFvFresh : List Wire := [822]
theorem s2Step17HeadFv_distinct : (s2Step17HeadFvRow.sign::s2Step17HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step17HeadFv_owned : (s2Step17HeadFvRow.sign::s2Step17HeadFvRow.payload).toFinset⊆s2Step17HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step17HeadFvBefore (fun q => (0≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17HeadFv_reserved : s2Step17HeadFvBefore.reserve s2Step17HeadFvFresh.toFinset=some s2Step17HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step17HeadFvFresh,arenaWires]
  · norm_num [s2Step17HeadFvBefore,s2Step17HeadGvAfter,s2Step17HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step17HeadFvAfter,s2Step17HeadFvBefore,s2Step17HeadGvAfter,s2Step17HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step17HeadFv_checked : planRowResizeLog s2Step17HeadFvBefore s2Step17HeadFvRow 19 s2Step17HeadFvFresh=
    some (s2Step17HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822],770⟩,growRow 770 s2Step17HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step17HeadFvBefore s2Step17HeadFvAfter s2Step17HeadFvRow 19 s2Step17HeadFvFresh
    s2Step17HeadFv_distinct s2Step17HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step17HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step17HeadFvRow.payload++s2Step17HeadFvFresh) s2Step17HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step18HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step18HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step18HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩
def s2Step18HeadGFresh : List Wire := [781]
theorem s2Step18HeadG_distinct : (s2Step18HeadGRow.sign::s2Step18HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step18HeadG_owned : (s2Step18HeadGRow.sign::s2Step18HeadGRow.payload).toFinset⊆s2Step18HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step18HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18HeadG_reserved : s2Step18HeadGBefore.reserve s2Step18HeadGFresh.toFinset=some s2Step18HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step18HeadGFresh,arenaWires]
  · norm_num [s2Step18HeadGBefore,s2Step18HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step18HeadGAfter,s2Step18HeadGBefore,s2Step18HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step18HeadG_checked : planRowResizeLog s2Step18HeadGBefore s2Step18HeadGRow 257 s2Step18HeadGFresh=
    some (s2Step18HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩,growRow 769 s2Step18HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step18HeadGBefore s2Step18HeadGAfter s2Step18HeadGRow 257 s2Step18HeadGFresh
    s2Step18HeadG_distinct s2Step18HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step18HeadG_reserved
  have rowEq : WindowRow.mk (s2Step18HeadGRow.payload++s2Step18HeadGFresh) s2Step18HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step18HeadFBefore : Arena := s2Step18HeadGAfter
def s2Step18HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step18HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step18HeadFFresh : List Wire := [783]
theorem s2Step18HeadF_distinct : (s2Step18HeadFRow.sign::s2Step18HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step18HeadF_owned : (s2Step18HeadFRow.sign::s2Step18HeadFRow.payload).toFinset⊆s2Step18HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step18HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18HeadF_reserved : s2Step18HeadFBefore.reserve s2Step18HeadFFresh.toFinset=some s2Step18HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step18HeadFFresh,arenaWires]
  · norm_num [s2Step18HeadFBefore,s2Step18HeadGAfter,s2Step18HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step18HeadFAfter,s2Step18HeadFBefore,s2Step18HeadGAfter,s2Step18HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step18HeadF_checked : planRowResizeLog s2Step18HeadFBefore s2Step18HeadFRow 257 s2Step18HeadFFresh=
    some (s2Step18HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩,growRow 768 s2Step18HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step18HeadFBefore s2Step18HeadFAfter s2Step18HeadFRow 257 s2Step18HeadFFresh
    s2Step18HeadF_distinct s2Step18HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step18HeadF_reserved
  have rowEq : WindowRow.mk (s2Step18HeadFRow.payload++s2Step18HeadFFresh) s2Step18HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step18HeadGvBefore : Arena := s2Step18HeadFAfter
def s2Step18HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step18HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 780],771⟩
def s2Step18HeadGvFresh : List Wire := [824]
theorem s2Step18HeadGv_distinct : (s2Step18HeadGvRow.sign::s2Step18HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step18HeadGv_owned : (s2Step18HeadGvRow.sign::s2Step18HeadGvRow.payload).toFinset⊆s2Step18HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step18HeadGvBefore (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18HeadGv_reserved : s2Step18HeadGvBefore.reserve s2Step18HeadGvFresh.toFinset=some s2Step18HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step18HeadGvFresh,arenaWires]
  · norm_num [s2Step18HeadGvBefore,s2Step18HeadFAfter,s2Step18HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step18HeadGvAfter,s2Step18HeadGvBefore,s2Step18HeadFAfter,s2Step18HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step18HeadGv_checked : planRowResizeLog s2Step18HeadGvBefore s2Step18HeadGvRow 20 s2Step18HeadGvFresh=
    some (s2Step18HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 780, 824],771⟩,growRow 771 s2Step18HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step18HeadGvBefore s2Step18HeadGvAfter s2Step18HeadGvRow 20 s2Step18HeadGvFresh
    s2Step18HeadGv_distinct s2Step18HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step18HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step18HeadGvRow.payload++s2Step18HeadGvFresh) s2Step18HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 780, 824],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step18HeadFvBefore : Arena := s2Step18HeadGvAfter
def s2Step18HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step18HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822],770⟩
def s2Step18HeadFvFresh : List Wire := [825]
theorem s2Step18HeadFv_distinct : (s2Step18HeadFvRow.sign::s2Step18HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step18HeadFv_owned : (s2Step18HeadFvRow.sign::s2Step18HeadFvRow.payload).toFinset⊆s2Step18HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step18HeadFvBefore (fun q => (0≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18HeadFv_reserved : s2Step18HeadFvBefore.reserve s2Step18HeadFvFresh.toFinset=some s2Step18HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step18HeadFvFresh,arenaWires]
  · norm_num [s2Step18HeadFvBefore,s2Step18HeadGvAfter,s2Step18HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step18HeadFvAfter,s2Step18HeadFvBefore,s2Step18HeadGvAfter,s2Step18HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step18HeadFv_checked : planRowResizeLog s2Step18HeadFvBefore s2Step18HeadFvRow 20 s2Step18HeadFvFresh=
    some (s2Step18HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825],770⟩,growRow 770 s2Step18HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step18HeadFvBefore s2Step18HeadFvAfter s2Step18HeadFvRow 20 s2Step18HeadFvFresh
    s2Step18HeadFv_distinct s2Step18HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step18HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step18HeadFvRow.payload++s2Step18HeadFvFresh) s2Step18HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step19HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step19HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step19HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩
def s2Step19HeadGFresh : List Wire := [784]
theorem s2Step19HeadG_distinct : (s2Step19HeadGRow.sign::s2Step19HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step19HeadG_owned : (s2Step19HeadGRow.sign::s2Step19HeadGRow.payload).toFinset⊆s2Step19HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step19HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19HeadG_reserved : s2Step19HeadGBefore.reserve s2Step19HeadGFresh.toFinset=some s2Step19HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step19HeadGFresh,arenaWires]
  · norm_num [s2Step19HeadGBefore,s2Step19HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step19HeadGAfter,s2Step19HeadGBefore,s2Step19HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step19HeadG_checked : planRowResizeLog s2Step19HeadGBefore s2Step19HeadGRow 257 s2Step19HeadGFresh=
    some (s2Step19HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩,growRow 769 s2Step19HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step19HeadGBefore s2Step19HeadGAfter s2Step19HeadGRow 257 s2Step19HeadGFresh
    s2Step19HeadG_distinct s2Step19HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step19HeadG_reserved
  have rowEq : WindowRow.mk (s2Step19HeadGRow.payload++s2Step19HeadGFresh) s2Step19HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step19HeadFBefore : Arena := s2Step19HeadGAfter
def s2Step19HeadFAfter : Arena := s2Step18HeadFvAfter
def s2Step19HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step19HeadFFresh : List Wire := [781]
theorem s2Step19HeadF_distinct : (s2Step19HeadFRow.sign::s2Step19HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step19HeadF_owned : (s2Step19HeadFRow.sign::s2Step19HeadFRow.payload).toFinset⊆s2Step19HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step19HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19HeadF_reserved : s2Step19HeadFBefore.reserve s2Step19HeadFFresh.toFinset=some s2Step19HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step19HeadFFresh,arenaWires]
  · norm_num [s2Step19HeadFBefore,s2Step19HeadGAfter,s2Step19HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step19HeadFAfter,s2Step18HeadFvAfter,s2Step19HeadFBefore,s2Step19HeadGAfter,s2Step19HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step19HeadF_checked : planRowResizeLog s2Step19HeadFBefore s2Step19HeadFRow 257 s2Step19HeadFFresh=
    some (s2Step19HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩,growRow 768 s2Step19HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step19HeadFBefore s2Step19HeadFAfter s2Step19HeadFRow 257 s2Step19HeadFFresh
    s2Step19HeadF_distinct s2Step19HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step19HeadF_reserved
  have rowEq : WindowRow.mk (s2Step19HeadFRow.payload++s2Step19HeadFFresh) s2Step19HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step19HeadGvBefore : Arena := s2Step18HeadFvAfter
def s2Step19HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step19HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 780],771⟩
def s2Step19HeadGvFresh : List Wire := [826]
theorem s2Step19HeadGv_distinct : (s2Step19HeadGvRow.sign::s2Step19HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step19HeadGv_owned : (s2Step19HeadGvRow.sign::s2Step19HeadGvRow.payload).toFinset⊆s2Step19HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step19HeadGvBefore (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19HeadGv_reserved : s2Step19HeadGvBefore.reserve s2Step19HeadGvFresh.toFinset=some s2Step19HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step19HeadGvFresh,arenaWires]
  · norm_num [s2Step19HeadGvBefore,s2Step18HeadFvAfter,s2Step19HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step19HeadGvAfter,s2Step19HeadGvBefore,s2Step18HeadFvAfter,s2Step19HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step19HeadGv_checked : planRowResizeLog s2Step19HeadGvBefore s2Step19HeadGvRow 21 s2Step19HeadGvFresh=
    some (s2Step19HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 780, 826],771⟩,growRow 771 s2Step19HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step19HeadGvBefore s2Step19HeadGvAfter s2Step19HeadGvRow 21 s2Step19HeadGvFresh
    s2Step19HeadGv_distinct s2Step19HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step19HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step19HeadGvRow.payload++s2Step19HeadGvFresh) s2Step19HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 780, 826],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step19HeadFvBefore : Arena := s2Step19HeadGvAfter
def s2Step19HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step19HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825],770⟩
def s2Step19HeadFvFresh : List Wire := [827]
theorem s2Step19HeadFv_distinct : (s2Step19HeadFvRow.sign::s2Step19HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step19HeadFv_owned : (s2Step19HeadFvRow.sign::s2Step19HeadFvRow.payload).toFinset⊆s2Step19HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step19HeadFvBefore (fun q => (0≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19HeadFv_reserved : s2Step19HeadFvBefore.reserve s2Step19HeadFvFresh.toFinset=some s2Step19HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step19HeadFvFresh,arenaWires]
  · norm_num [s2Step19HeadFvBefore,s2Step19HeadGvAfter,s2Step19HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step19HeadFvAfter,s2Step19HeadFvBefore,s2Step19HeadGvAfter,s2Step19HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step19HeadFv_checked : planRowResizeLog s2Step19HeadFvBefore s2Step19HeadFvRow 21 s2Step19HeadFvFresh=
    some (s2Step19HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827],770⟩,growRow 770 s2Step19HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step19HeadFvBefore s2Step19HeadFvAfter s2Step19HeadFvRow 21 s2Step19HeadFvFresh
    s2Step19HeadFv_distinct s2Step19HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step19HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step19HeadFvRow.payload++s2Step19HeadFvFresh) s2Step19HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step20HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step20HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step20HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩
def s2Step20HeadGFresh : List Wire := [782]
theorem s2Step20HeadG_distinct : (s2Step20HeadGRow.sign::s2Step20HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step20HeadG_owned : (s2Step20HeadGRow.sign::s2Step20HeadGRow.payload).toFinset⊆s2Step20HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step20HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20HeadG_reserved : s2Step20HeadGBefore.reserve s2Step20HeadGFresh.toFinset=some s2Step20HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step20HeadGFresh,arenaWires]
  · norm_num [s2Step20HeadGBefore,s2Step20HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step20HeadGAfter,s2Step20HeadGBefore,s2Step20HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step20HeadG_checked : planRowResizeLog s2Step20HeadGBefore s2Step20HeadGRow 257 s2Step20HeadGFresh=
    some (s2Step20HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩,growRow 769 s2Step20HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step20HeadGBefore s2Step20HeadGAfter s2Step20HeadGRow 257 s2Step20HeadGFresh
    s2Step20HeadG_distinct s2Step20HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step20HeadG_reserved
  have rowEq : WindowRow.mk (s2Step20HeadGRow.payload++s2Step20HeadGFresh) s2Step20HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step20HeadFBefore : Arena := s2Step20HeadGAfter
def s2Step20HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step20HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step20HeadFFresh : List Wire := [784]
theorem s2Step20HeadF_distinct : (s2Step20HeadFRow.sign::s2Step20HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step20HeadF_owned : (s2Step20HeadFRow.sign::s2Step20HeadFRow.payload).toFinset⊆s2Step20HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step20HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20HeadF_reserved : s2Step20HeadFBefore.reserve s2Step20HeadFFresh.toFinset=some s2Step20HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step20HeadFFresh,arenaWires]
  · norm_num [s2Step20HeadFBefore,s2Step20HeadGAfter,s2Step20HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step20HeadFAfter,s2Step20HeadFBefore,s2Step20HeadGAfter,s2Step20HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step20HeadF_checked : planRowResizeLog s2Step20HeadFBefore s2Step20HeadFRow 257 s2Step20HeadFFresh=
    some (s2Step20HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩,growRow 768 s2Step20HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step20HeadFBefore s2Step20HeadFAfter s2Step20HeadFRow 257 s2Step20HeadFFresh
    s2Step20HeadF_distinct s2Step20HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step20HeadF_reserved
  have rowEq : WindowRow.mk (s2Step20HeadFRow.payload++s2Step20HeadFFresh) s2Step20HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step20HeadGvBefore : Arena := s2Step20HeadFAfter
def s2Step20HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<830) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step20HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 780],771⟩
def s2Step20HeadGvFresh : List Wire := [829]
theorem s2Step20HeadGv_distinct : (s2Step20HeadGvRow.sign::s2Step20HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step20HeadGv_owned : (s2Step20HeadGvRow.sign::s2Step20HeadGvRow.payload).toFinset⊆s2Step20HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step20HeadGvBefore (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20HeadGv_reserved : s2Step20HeadGvBefore.reserve s2Step20HeadGvFresh.toFinset=some s2Step20HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step20HeadGvFresh,arenaWires]
  · norm_num [s2Step20HeadGvBefore,s2Step20HeadFAfter,s2Step20HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step20HeadGvAfter,s2Step20HeadGvBefore,s2Step20HeadFAfter,s2Step20HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step20HeadGv_checked : planRowResizeLog s2Step20HeadGvBefore s2Step20HeadGvRow 22 s2Step20HeadGvFresh=
    some (s2Step20HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 780, 829],771⟩,growRow 771 s2Step20HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step20HeadGvBefore s2Step20HeadGvAfter s2Step20HeadGvRow 22 s2Step20HeadGvFresh
    s2Step20HeadGv_distinct s2Step20HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step20HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step20HeadGvRow.payload++s2Step20HeadGvFresh) s2Step20HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 780, 829],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step20HeadFvBefore : Arena := s2Step20HeadGvAfter
def s2Step20HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step20HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827],770⟩
def s2Step20HeadFvFresh : List Wire := [830]
theorem s2Step20HeadFv_distinct : (s2Step20HeadFvRow.sign::s2Step20HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step20HeadFv_owned : (s2Step20HeadFvRow.sign::s2Step20HeadFvRow.payload).toFinset⊆s2Step20HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step20HeadFvBefore (fun q => (0≤q ∧ q<830) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20HeadFv_reserved : s2Step20HeadFvBefore.reserve s2Step20HeadFvFresh.toFinset=some s2Step20HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step20HeadFvFresh,arenaWires]
  · norm_num [s2Step20HeadFvBefore,s2Step20HeadGvAfter,s2Step20HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step20HeadFvAfter,s2Step20HeadFvBefore,s2Step20HeadGvAfter,s2Step20HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step20HeadFv_checked : planRowResizeLog s2Step20HeadFvBefore s2Step20HeadFvRow 22 s2Step20HeadFvFresh=
    some (s2Step20HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830],770⟩,growRow 770 s2Step20HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step20HeadFvBefore s2Step20HeadFvAfter s2Step20HeadFvRow 22 s2Step20HeadFvFresh
    s2Step20HeadFv_distinct s2Step20HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step20HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step20HeadFvRow.payload++s2Step20HeadFvFresh) s2Step20HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step21HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step21HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step21HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩
def s2Step21HeadGFresh : List Wire := [783]
theorem s2Step21HeadG_distinct : (s2Step21HeadGRow.sign::s2Step21HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step21HeadG_owned : (s2Step21HeadGRow.sign::s2Step21HeadGRow.payload).toFinset⊆s2Step21HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step21HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21HeadG_reserved : s2Step21HeadGBefore.reserve s2Step21HeadGFresh.toFinset=some s2Step21HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step21HeadGFresh,arenaWires]
  · norm_num [s2Step21HeadGBefore,s2Step21HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step21HeadGAfter,s2Step21HeadGBefore,s2Step21HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step21HeadG_checked : planRowResizeLog s2Step21HeadGBefore s2Step21HeadGRow 257 s2Step21HeadGFresh=
    some (s2Step21HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩,growRow 769 s2Step21HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step21HeadGBefore s2Step21HeadGAfter s2Step21HeadGRow 257 s2Step21HeadGFresh
    s2Step21HeadG_distinct s2Step21HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step21HeadG_reserved
  have rowEq : WindowRow.mk (s2Step21HeadGRow.payload++s2Step21HeadGFresh) s2Step21HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step21HeadFBefore : Arena := s2Step21HeadGAfter
def s2Step21HeadFAfter : Arena := s2Step20HeadFvAfter
def s2Step21HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step21HeadFFresh : List Wire := [782]
theorem s2Step21HeadF_distinct : (s2Step21HeadFRow.sign::s2Step21HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step21HeadF_owned : (s2Step21HeadFRow.sign::s2Step21HeadFRow.payload).toFinset⊆s2Step21HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step21HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21HeadF_reserved : s2Step21HeadFBefore.reserve s2Step21HeadFFresh.toFinset=some s2Step21HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step21HeadFFresh,arenaWires]
  · norm_num [s2Step21HeadFBefore,s2Step21HeadGAfter,s2Step21HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step21HeadFAfter,s2Step20HeadFvAfter,s2Step21HeadFBefore,s2Step21HeadGAfter,s2Step21HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step21HeadF_checked : planRowResizeLog s2Step21HeadFBefore s2Step21HeadFRow 257 s2Step21HeadFFresh=
    some (s2Step21HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩,growRow 768 s2Step21HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step21HeadFBefore s2Step21HeadFAfter s2Step21HeadFRow 257 s2Step21HeadFFresh
    s2Step21HeadF_distinct s2Step21HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step21HeadF_reserved
  have rowEq : WindowRow.mk (s2Step21HeadFRow.payload++s2Step21HeadFFresh) s2Step21HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step21HeadGvBefore : Arena := s2Step20HeadFvAfter
def s2Step21HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step21HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 780],771⟩
def s2Step21HeadGvFresh : List Wire := [831]
theorem s2Step21HeadGv_distinct : (s2Step21HeadGvRow.sign::s2Step21HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step21HeadGv_owned : (s2Step21HeadGvRow.sign::s2Step21HeadGvRow.payload).toFinset⊆s2Step21HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step21HeadGvBefore (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21HeadGv_reserved : s2Step21HeadGvBefore.reserve s2Step21HeadGvFresh.toFinset=some s2Step21HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step21HeadGvFresh,arenaWires]
  · norm_num [s2Step21HeadGvBefore,s2Step20HeadFvAfter,s2Step21HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step21HeadGvAfter,s2Step21HeadGvBefore,s2Step20HeadFvAfter,s2Step21HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step21HeadGv_checked : planRowResizeLog s2Step21HeadGvBefore s2Step21HeadGvRow 23 s2Step21HeadGvFresh=
    some (s2Step21HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 780, 831],771⟩,growRow 771 s2Step21HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step21HeadGvBefore s2Step21HeadGvAfter s2Step21HeadGvRow 23 s2Step21HeadGvFresh
    s2Step21HeadGv_distinct s2Step21HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step21HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step21HeadGvRow.payload++s2Step21HeadGvFresh) s2Step21HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 780, 831],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step21HeadFvBefore : Arena := s2Step21HeadGvAfter
def s2Step21HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step21HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830],770⟩
def s2Step21HeadFvFresh : List Wire := [832]
theorem s2Step21HeadFv_distinct : (s2Step21HeadFvRow.sign::s2Step21HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step21HeadFv_owned : (s2Step21HeadFvRow.sign::s2Step21HeadFvRow.payload).toFinset⊆s2Step21HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step21HeadFvBefore (fun q => (0≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21HeadFv_reserved : s2Step21HeadFvBefore.reserve s2Step21HeadFvFresh.toFinset=some s2Step21HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step21HeadFvFresh,arenaWires]
  · norm_num [s2Step21HeadFvBefore,s2Step21HeadGvAfter,s2Step21HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step21HeadFvAfter,s2Step21HeadFvBefore,s2Step21HeadGvAfter,s2Step21HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step21HeadFv_checked : planRowResizeLog s2Step21HeadFvBefore s2Step21HeadFvRow 23 s2Step21HeadFvFresh=
    some (s2Step21HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832],770⟩,growRow 770 s2Step21HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step21HeadFvBefore s2Step21HeadFvAfter s2Step21HeadFvRow 23 s2Step21HeadFvFresh
    s2Step21HeadFv_distinct s2Step21HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step21HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step21HeadFvRow.payload++s2Step21HeadFvFresh) s2Step21HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step22HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step22HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step22HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩
def s2Step22HeadGFresh : List Wire := [781]
theorem s2Step22HeadG_distinct : (s2Step22HeadGRow.sign::s2Step22HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step22HeadG_owned : (s2Step22HeadGRow.sign::s2Step22HeadGRow.payload).toFinset⊆s2Step22HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step22HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22HeadG_reserved : s2Step22HeadGBefore.reserve s2Step22HeadGFresh.toFinset=some s2Step22HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step22HeadGFresh,arenaWires]
  · norm_num [s2Step22HeadGBefore,s2Step22HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step22HeadGAfter,s2Step22HeadGBefore,s2Step22HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step22HeadG_checked : planRowResizeLog s2Step22HeadGBefore s2Step22HeadGRow 257 s2Step22HeadGFresh=
    some (s2Step22HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩,growRow 769 s2Step22HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step22HeadGBefore s2Step22HeadGAfter s2Step22HeadGRow 257 s2Step22HeadGFresh
    s2Step22HeadG_distinct s2Step22HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step22HeadG_reserved
  have rowEq : WindowRow.mk (s2Step22HeadGRow.payload++s2Step22HeadGFresh) s2Step22HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step22HeadFBefore : Arena := s2Step22HeadGAfter
def s2Step22HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step22HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step22HeadFFresh : List Wire := [783]
theorem s2Step22HeadF_distinct : (s2Step22HeadFRow.sign::s2Step22HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step22HeadF_owned : (s2Step22HeadFRow.sign::s2Step22HeadFRow.payload).toFinset⊆s2Step22HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step22HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22HeadF_reserved : s2Step22HeadFBefore.reserve s2Step22HeadFFresh.toFinset=some s2Step22HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step22HeadFFresh,arenaWires]
  · norm_num [s2Step22HeadFBefore,s2Step22HeadGAfter,s2Step22HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step22HeadFAfter,s2Step22HeadFBefore,s2Step22HeadGAfter,s2Step22HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step22HeadF_checked : planRowResizeLog s2Step22HeadFBefore s2Step22HeadFRow 257 s2Step22HeadFFresh=
    some (s2Step22HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩,growRow 768 s2Step22HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step22HeadFBefore s2Step22HeadFAfter s2Step22HeadFRow 257 s2Step22HeadFFresh
    s2Step22HeadF_distinct s2Step22HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step22HeadF_reserved
  have rowEq : WindowRow.mk (s2Step22HeadFRow.payload++s2Step22HeadFFresh) s2Step22HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step22HeadGvBefore : Arena := s2Step22HeadFAfter
def s2Step22HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<835) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step22HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 780],771⟩
def s2Step22HeadGvFresh : List Wire := [834]
theorem s2Step22HeadGv_distinct : (s2Step22HeadGvRow.sign::s2Step22HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step22HeadGv_owned : (s2Step22HeadGvRow.sign::s2Step22HeadGvRow.payload).toFinset⊆s2Step22HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step22HeadGvBefore (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22HeadGv_reserved : s2Step22HeadGvBefore.reserve s2Step22HeadGvFresh.toFinset=some s2Step22HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step22HeadGvFresh,arenaWires]
  · norm_num [s2Step22HeadGvBefore,s2Step22HeadFAfter,s2Step22HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step22HeadGvAfter,s2Step22HeadGvBefore,s2Step22HeadFAfter,s2Step22HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step22HeadGv_checked : planRowResizeLog s2Step22HeadGvBefore s2Step22HeadGvRow 24 s2Step22HeadGvFresh=
    some (s2Step22HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 780, 834],771⟩,growRow 771 s2Step22HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step22HeadGvBefore s2Step22HeadGvAfter s2Step22HeadGvRow 24 s2Step22HeadGvFresh
    s2Step22HeadGv_distinct s2Step22HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step22HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step22HeadGvRow.payload++s2Step22HeadGvFresh) s2Step22HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 780, 834],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step22HeadFvBefore : Arena := s2Step22HeadGvAfter
def s2Step22HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step22HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832],770⟩
def s2Step22HeadFvFresh : List Wire := [835]
theorem s2Step22HeadFv_distinct : (s2Step22HeadFvRow.sign::s2Step22HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step22HeadFv_owned : (s2Step22HeadFvRow.sign::s2Step22HeadFvRow.payload).toFinset⊆s2Step22HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step22HeadFvBefore (fun q => (0≤q ∧ q<835) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22HeadFv_reserved : s2Step22HeadFvBefore.reserve s2Step22HeadFvFresh.toFinset=some s2Step22HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step22HeadFvFresh,arenaWires]
  · norm_num [s2Step22HeadFvBefore,s2Step22HeadGvAfter,s2Step22HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step22HeadFvAfter,s2Step22HeadFvBefore,s2Step22HeadGvAfter,s2Step22HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step22HeadFv_checked : planRowResizeLog s2Step22HeadFvBefore s2Step22HeadFvRow 24 s2Step22HeadFvFresh=
    some (s2Step22HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835],770⟩,growRow 770 s2Step22HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step22HeadFvBefore s2Step22HeadFvAfter s2Step22HeadFvRow 24 s2Step22HeadFvFresh
    s2Step22HeadFv_distinct s2Step22HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step22HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step22HeadFvRow.payload++s2Step22HeadFvFresh) s2Step22HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step23HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step23HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step23HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩
def s2Step23HeadGFresh : List Wire := [784]
theorem s2Step23HeadG_distinct : (s2Step23HeadGRow.sign::s2Step23HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step23HeadG_owned : (s2Step23HeadGRow.sign::s2Step23HeadGRow.payload).toFinset⊆s2Step23HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step23HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23HeadG_reserved : s2Step23HeadGBefore.reserve s2Step23HeadGFresh.toFinset=some s2Step23HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step23HeadGFresh,arenaWires]
  · norm_num [s2Step23HeadGBefore,s2Step23HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step23HeadGAfter,s2Step23HeadGBefore,s2Step23HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step23HeadG_checked : planRowResizeLog s2Step23HeadGBefore s2Step23HeadGRow 257 s2Step23HeadGFresh=
    some (s2Step23HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩,growRow 769 s2Step23HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step23HeadGBefore s2Step23HeadGAfter s2Step23HeadGRow 257 s2Step23HeadGFresh
    s2Step23HeadG_distinct s2Step23HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step23HeadG_reserved
  have rowEq : WindowRow.mk (s2Step23HeadGRow.payload++s2Step23HeadGFresh) s2Step23HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step23HeadFBefore : Arena := s2Step23HeadGAfter
def s2Step23HeadFAfter : Arena := s2Step22HeadFvAfter
def s2Step23HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step23HeadFFresh : List Wire := [781]
theorem s2Step23HeadF_distinct : (s2Step23HeadFRow.sign::s2Step23HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step23HeadF_owned : (s2Step23HeadFRow.sign::s2Step23HeadFRow.payload).toFinset⊆s2Step23HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step23HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23HeadF_reserved : s2Step23HeadFBefore.reserve s2Step23HeadFFresh.toFinset=some s2Step23HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step23HeadFFresh,arenaWires]
  · norm_num [s2Step23HeadFBefore,s2Step23HeadGAfter,s2Step23HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step23HeadFAfter,s2Step22HeadFvAfter,s2Step23HeadFBefore,s2Step23HeadGAfter,s2Step23HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step23HeadF_checked : planRowResizeLog s2Step23HeadFBefore s2Step23HeadFRow 257 s2Step23HeadFFresh=
    some (s2Step23HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩,growRow 768 s2Step23HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step23HeadFBefore s2Step23HeadFAfter s2Step23HeadFRow 257 s2Step23HeadFFresh
    s2Step23HeadF_distinct s2Step23HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step23HeadF_reserved
  have rowEq : WindowRow.mk (s2Step23HeadFRow.payload++s2Step23HeadFFresh) s2Step23HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step23HeadGvBefore : Arena := s2Step22HeadFvAfter
def s2Step23HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<837) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step23HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 780],771⟩
def s2Step23HeadGvFresh : List Wire := [836]
theorem s2Step23HeadGv_distinct : (s2Step23HeadGvRow.sign::s2Step23HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step23HeadGv_owned : (s2Step23HeadGvRow.sign::s2Step23HeadGvRow.payload).toFinset⊆s2Step23HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step23HeadGvBefore (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23HeadGv_reserved : s2Step23HeadGvBefore.reserve s2Step23HeadGvFresh.toFinset=some s2Step23HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step23HeadGvFresh,arenaWires]
  · norm_num [s2Step23HeadGvBefore,s2Step22HeadFvAfter,s2Step23HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step23HeadGvAfter,s2Step23HeadGvBefore,s2Step22HeadFvAfter,s2Step23HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step23HeadGv_checked : planRowResizeLog s2Step23HeadGvBefore s2Step23HeadGvRow 25 s2Step23HeadGvFresh=
    some (s2Step23HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 780, 836],771⟩,growRow 771 s2Step23HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step23HeadGvBefore s2Step23HeadGvAfter s2Step23HeadGvRow 25 s2Step23HeadGvFresh
    s2Step23HeadGv_distinct s2Step23HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step23HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step23HeadGvRow.payload++s2Step23HeadGvFresh) s2Step23HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 780, 836],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step23HeadFvBefore : Arena := s2Step23HeadGvAfter
def s2Step23HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step23HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835],770⟩
def s2Step23HeadFvFresh : List Wire := [837]
theorem s2Step23HeadFv_distinct : (s2Step23HeadFvRow.sign::s2Step23HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step23HeadFv_owned : (s2Step23HeadFvRow.sign::s2Step23HeadFvRow.payload).toFinset⊆s2Step23HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step23HeadFvBefore (fun q => (0≤q ∧ q<837) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23HeadFv_reserved : s2Step23HeadFvBefore.reserve s2Step23HeadFvFresh.toFinset=some s2Step23HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step23HeadFvFresh,arenaWires]
  · norm_num [s2Step23HeadFvBefore,s2Step23HeadGvAfter,s2Step23HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step23HeadFvAfter,s2Step23HeadFvBefore,s2Step23HeadGvAfter,s2Step23HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step23HeadFv_checked : planRowResizeLog s2Step23HeadFvBefore s2Step23HeadFvRow 25 s2Step23HeadFvFresh=
    some (s2Step23HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837],770⟩,growRow 770 s2Step23HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step23HeadFvBefore s2Step23HeadFvAfter s2Step23HeadFvRow 25 s2Step23HeadFvFresh
    s2Step23HeadFv_distinct s2Step23HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step23HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step23HeadFvRow.payload++s2Step23HeadFvFresh) s2Step23HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step24HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step24HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step24HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩
def s2Step24HeadGFresh : List Wire := [782]
theorem s2Step24HeadG_distinct : (s2Step24HeadGRow.sign::s2Step24HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step24HeadG_owned : (s2Step24HeadGRow.sign::s2Step24HeadGRow.payload).toFinset⊆s2Step24HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step24HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24HeadG_reserved : s2Step24HeadGBefore.reserve s2Step24HeadGFresh.toFinset=some s2Step24HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step24HeadGFresh,arenaWires]
  · norm_num [s2Step24HeadGBefore,s2Step24HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step24HeadGAfter,s2Step24HeadGBefore,s2Step24HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step24HeadG_checked : planRowResizeLog s2Step24HeadGBefore s2Step24HeadGRow 257 s2Step24HeadGFresh=
    some (s2Step24HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩,growRow 769 s2Step24HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step24HeadGBefore s2Step24HeadGAfter s2Step24HeadGRow 257 s2Step24HeadGFresh
    s2Step24HeadG_distinct s2Step24HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step24HeadG_reserved
  have rowEq : WindowRow.mk (s2Step24HeadGRow.payload++s2Step24HeadGFresh) s2Step24HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step24HeadFBefore : Arena := s2Step24HeadGAfter
def s2Step24HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step24HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step24HeadFFresh : List Wire := [784]
theorem s2Step24HeadF_distinct : (s2Step24HeadFRow.sign::s2Step24HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step24HeadF_owned : (s2Step24HeadFRow.sign::s2Step24HeadFRow.payload).toFinset⊆s2Step24HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step24HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24HeadF_reserved : s2Step24HeadFBefore.reserve s2Step24HeadFFresh.toFinset=some s2Step24HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step24HeadFFresh,arenaWires]
  · norm_num [s2Step24HeadFBefore,s2Step24HeadGAfter,s2Step24HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step24HeadFAfter,s2Step24HeadFBefore,s2Step24HeadGAfter,s2Step24HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step24HeadF_checked : planRowResizeLog s2Step24HeadFBefore s2Step24HeadFRow 257 s2Step24HeadFFresh=
    some (s2Step24HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩,growRow 768 s2Step24HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step24HeadFBefore s2Step24HeadFAfter s2Step24HeadFRow 257 s2Step24HeadFFresh
    s2Step24HeadF_distinct s2Step24HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step24HeadF_reserved
  have rowEq : WindowRow.mk (s2Step24HeadFRow.payload++s2Step24HeadFFresh) s2Step24HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step24HeadGvBefore : Arena := s2Step24HeadFAfter
def s2Step24HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<840) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step24HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 780],771⟩
def s2Step24HeadGvFresh : List Wire := [839]
theorem s2Step24HeadGv_distinct : (s2Step24HeadGvRow.sign::s2Step24HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step24HeadGv_owned : (s2Step24HeadGvRow.sign::s2Step24HeadGvRow.payload).toFinset⊆s2Step24HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step24HeadGvBefore (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24HeadGv_reserved : s2Step24HeadGvBefore.reserve s2Step24HeadGvFresh.toFinset=some s2Step24HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step24HeadGvFresh,arenaWires]
  · norm_num [s2Step24HeadGvBefore,s2Step24HeadFAfter,s2Step24HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step24HeadGvAfter,s2Step24HeadGvBefore,s2Step24HeadFAfter,s2Step24HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step24HeadGv_checked : planRowResizeLog s2Step24HeadGvBefore s2Step24HeadGvRow 26 s2Step24HeadGvFresh=
    some (s2Step24HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 780, 839],771⟩,growRow 771 s2Step24HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step24HeadGvBefore s2Step24HeadGvAfter s2Step24HeadGvRow 26 s2Step24HeadGvFresh
    s2Step24HeadGv_distinct s2Step24HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step24HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step24HeadGvRow.payload++s2Step24HeadGvFresh) s2Step24HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 780, 839],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step24HeadFvBefore : Arena := s2Step24HeadGvAfter
def s2Step24HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step24HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837],770⟩
def s2Step24HeadFvFresh : List Wire := [840]
theorem s2Step24HeadFv_distinct : (s2Step24HeadFvRow.sign::s2Step24HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step24HeadFv_owned : (s2Step24HeadFvRow.sign::s2Step24HeadFvRow.payload).toFinset⊆s2Step24HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step24HeadFvBefore (fun q => (0≤q ∧ q<840) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24HeadFv_reserved : s2Step24HeadFvBefore.reserve s2Step24HeadFvFresh.toFinset=some s2Step24HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step24HeadFvFresh,arenaWires]
  · norm_num [s2Step24HeadFvBefore,s2Step24HeadGvAfter,s2Step24HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step24HeadFvAfter,s2Step24HeadFvBefore,s2Step24HeadGvAfter,s2Step24HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step24HeadFv_checked : planRowResizeLog s2Step24HeadFvBefore s2Step24HeadFvRow 26 s2Step24HeadFvFresh=
    some (s2Step24HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 840],770⟩,growRow 770 s2Step24HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step24HeadFvBefore s2Step24HeadFvAfter s2Step24HeadFvRow 26 s2Step24HeadFvFresh
    s2Step24HeadFv_distinct s2Step24HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step24HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step24HeadFvRow.payload++s2Step24HeadFvFresh) s2Step24HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 840],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step25HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step25HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step25HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 781],769⟩
def s2Step25HeadGFresh : List Wire := [780]
theorem s2Step25HeadG_distinct : (s2Step25HeadGRow.sign::s2Step25HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step25HeadG_owned : (s2Step25HeadGRow.sign::s2Step25HeadGRow.payload).toFinset⊆s2Step25HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step25HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25HeadG_reserved : s2Step25HeadGBefore.reserve s2Step25HeadGFresh.toFinset=some s2Step25HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step25HeadGFresh,arenaWires]
  · norm_num [s2Step25HeadGBefore,s2Step25HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step25HeadGAfter,s2Step25HeadGBefore,s2Step25HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step25HeadG_checked : planRowResizeLog s2Step25HeadGBefore s2Step25HeadGRow 256 s2Step25HeadGFresh=
    some (s2Step25HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 781, 780],769⟩,growRow 769 s2Step25HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step25HeadGBefore s2Step25HeadGAfter s2Step25HeadGRow 256 s2Step25HeadGFresh
    s2Step25HeadG_distinct s2Step25HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step25HeadG_reserved
  have rowEq : WindowRow.mk (s2Step25HeadGRow.payload++s2Step25HeadGFresh) s2Step25HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 781, 780],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step25HeadFBefore : Arena := s2Step25HeadGAfter
def s2Step25HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<840) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step25HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766],768⟩
def s2Step25HeadFFresh : List Wire := [839]
theorem s2Step25HeadF_distinct : (s2Step25HeadFRow.sign::s2Step25HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step25HeadF_owned : (s2Step25HeadFRow.sign::s2Step25HeadFRow.payload).toFinset⊆s2Step25HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step25HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25HeadF_reserved : s2Step25HeadFBefore.reserve s2Step25HeadFFresh.toFinset=some s2Step25HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step25HeadFFresh,arenaWires]
  · norm_num [s2Step25HeadFBefore,s2Step25HeadGAfter,s2Step25HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step25HeadFAfter,s2Step25HeadFBefore,s2Step25HeadGAfter,s2Step25HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step25HeadF_checked : planRowResizeLog s2Step25HeadFBefore s2Step25HeadFRow 256 s2Step25HeadFFresh=
    some (s2Step25HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 839],768⟩,growRow 768 s2Step25HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step25HeadFBefore s2Step25HeadFAfter s2Step25HeadFRow 256 s2Step25HeadFFresh
    s2Step25HeadF_distinct s2Step25HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step25HeadF_reserved
  have rowEq : WindowRow.mk (s2Step25HeadFRow.payload++s2Step25HeadFFresh) s2Step25HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 839],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step25HeadGvBefore : Arena := s2Step25HeadFAfter
def s2Step25HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step25HeadGvRow : WindowRow := ⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836],771⟩
def s2Step25HeadGvFresh : List Wire := [840]
theorem s2Step25HeadGv_distinct : (s2Step25HeadGvRow.sign::s2Step25HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step25HeadGv_owned : (s2Step25HeadGvRow.sign::s2Step25HeadGvRow.payload).toFinset⊆s2Step25HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step25HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<840) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25HeadGv_reserved : s2Step25HeadGvBefore.reserve s2Step25HeadGvFresh.toFinset=some s2Step25HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step25HeadGvFresh,arenaWires]
  · norm_num [s2Step25HeadGvBefore,s2Step25HeadFAfter,s2Step25HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step25HeadGvAfter,s2Step25HeadGvBefore,s2Step25HeadFAfter,s2Step25HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step25HeadGv_checked : planRowResizeLog s2Step25HeadGvBefore s2Step25HeadGvRow 26 s2Step25HeadGvFresh=
    some (s2Step25HeadGvAfter,⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840],771⟩,growRow 771 s2Step25HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step25HeadGvBefore s2Step25HeadGvAfter s2Step25HeadGvRow 26 s2Step25HeadGvFresh
    s2Step25HeadGv_distinct s2Step25HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step25HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step25HeadGvRow.payload++s2Step25HeadGvFresh) s2Step25HeadGvRow.sign=⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step25HeadFvBefore : Arena := s2Step25HeadGvAfter
def s2Step25HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step25HeadFvRow : WindowRow := ⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837],770⟩
def s2Step25HeadFvFresh : List Wire := [784]
theorem s2Step25HeadFv_distinct : (s2Step25HeadFvRow.sign::s2Step25HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step25HeadFv_owned : (s2Step25HeadFvRow.sign::s2Step25HeadFvRow.payload).toFinset⊆s2Step25HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step25HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25HeadFv_reserved : s2Step25HeadFvBefore.reserve s2Step25HeadFvFresh.toFinset=some s2Step25HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step25HeadFvFresh,arenaWires]
  · norm_num [s2Step25HeadFvBefore,s2Step25HeadGvAfter,s2Step25HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step25HeadFvAfter,s2Step25HeadFvBefore,s2Step25HeadGvAfter,s2Step25HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step25HeadFv_checked : planRowResizeLog s2Step25HeadFvBefore s2Step25HeadFvRow 26 s2Step25HeadFvFresh=
    some (s2Step25HeadFvAfter,⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784],770⟩,growRow 770 s2Step25HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step25HeadFvBefore s2Step25HeadFvAfter s2Step25HeadFvRow 26 s2Step25HeadFvFresh
    s2Step25HeadFv_distinct s2Step25HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step25HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step25HeadFvRow.payload++s2Step25HeadFvFresh) s2Step25HeadFvRow.sign=⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step26HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step26HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step26HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 785],769⟩
def s2Step26HeadGFresh : List Wire := [781]
theorem s2Step26HeadG_distinct : (s2Step26HeadGRow.sign::s2Step26HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step26HeadG_owned : (s2Step26HeadGRow.sign::s2Step26HeadGRow.payload).toFinset⊆s2Step26HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step26HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26HeadG_reserved : s2Step26HeadGBefore.reserve s2Step26HeadGFresh.toFinset=some s2Step26HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step26HeadGFresh,arenaWires]
  · norm_num [s2Step26HeadGBefore,s2Step26HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step26HeadGAfter,s2Step26HeadGBefore,s2Step26HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step26HeadG_checked : planRowResizeLog s2Step26HeadGBefore s2Step26HeadGRow 256 s2Step26HeadGFresh=
    some (s2Step26HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 785, 781],769⟩,growRow 769 s2Step26HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step26HeadGBefore s2Step26HeadGAfter s2Step26HeadGRow 256 s2Step26HeadGFresh
    s2Step26HeadG_distinct s2Step26HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step26HeadG_reserved
  have rowEq : WindowRow.mk (s2Step26HeadGRow.payload++s2Step26HeadGFresh) s2Step26HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 785, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step26HeadFBefore : Arena := s2Step26HeadGAfter
def s2Step26HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step26HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766],768⟩
def s2Step26HeadFFresh : List Wire := [780]
theorem s2Step26HeadF_distinct : (s2Step26HeadFRow.sign::s2Step26HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step26HeadF_owned : (s2Step26HeadFRow.sign::s2Step26HeadFRow.payload).toFinset⊆s2Step26HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step26HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26HeadF_reserved : s2Step26HeadFBefore.reserve s2Step26HeadFFresh.toFinset=some s2Step26HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step26HeadFFresh,arenaWires]
  · norm_num [s2Step26HeadFBefore,s2Step26HeadGAfter,s2Step26HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step26HeadFAfter,s2Step26HeadFBefore,s2Step26HeadGAfter,s2Step26HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step26HeadF_checked : planRowResizeLog s2Step26HeadFBefore s2Step26HeadFRow 256 s2Step26HeadFFresh=
    some (s2Step26HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 780],768⟩,growRow 768 s2Step26HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step26HeadFBefore s2Step26HeadFAfter s2Step26HeadFRow 256 s2Step26HeadFFresh
    s2Step26HeadF_distinct s2Step26HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step26HeadF_reserved
  have rowEq : WindowRow.mk (s2Step26HeadFRow.payload++s2Step26HeadFFresh) s2Step26HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 780],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step26HeadGvBefore : Arena := s2Step26HeadFAfter
def s2Step26HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step26HeadGvRow : WindowRow := ⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 779],771⟩
def s2Step26HeadGvFresh : List Wire := [783]
theorem s2Step26HeadGv_distinct : (s2Step26HeadGvRow.sign::s2Step26HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step26HeadGv_owned : (s2Step26HeadGvRow.sign::s2Step26HeadGvRow.payload).toFinset⊆s2Step26HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step26HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26HeadGv_reserved : s2Step26HeadGvBefore.reserve s2Step26HeadGvFresh.toFinset=some s2Step26HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step26HeadGvFresh,arenaWires]
  · norm_num [s2Step26HeadGvBefore,s2Step26HeadFAfter,s2Step26HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step26HeadGvAfter,s2Step26HeadGvBefore,s2Step26HeadFAfter,s2Step26HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step26HeadGv_checked : planRowResizeLog s2Step26HeadGvBefore s2Step26HeadGvRow 27 s2Step26HeadGvFresh=
    some (s2Step26HeadGvAfter,⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 779, 783],771⟩,growRow 771 s2Step26HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step26HeadGvBefore s2Step26HeadGvAfter s2Step26HeadGvRow 27 s2Step26HeadGvFresh
    s2Step26HeadGv_distinct s2Step26HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step26HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step26HeadGvRow.payload++s2Step26HeadGvFresh) s2Step26HeadGvRow.sign=⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 779, 783],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step26HeadFvBefore : Arena := s2Step26HeadGvAfter
def s2Step26HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step26HeadFvRow : WindowRow := ⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784],770⟩
def s2Step26HeadFvFresh : List Wire := [782]
theorem s2Step26HeadFv_distinct : (s2Step26HeadFvRow.sign::s2Step26HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step26HeadFv_owned : (s2Step26HeadFvRow.sign::s2Step26HeadFvRow.payload).toFinset⊆s2Step26HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step26HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26HeadFv_reserved : s2Step26HeadFvBefore.reserve s2Step26HeadFvFresh.toFinset=some s2Step26HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step26HeadFvFresh,arenaWires]
  · norm_num [s2Step26HeadFvBefore,s2Step26HeadGvAfter,s2Step26HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step26HeadFvAfter,s2Step26HeadFvBefore,s2Step26HeadGvAfter,s2Step26HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step26HeadFv_checked : planRowResizeLog s2Step26HeadFvBefore s2Step26HeadFvRow 27 s2Step26HeadFvFresh=
    some (s2Step26HeadFvAfter,⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782],770⟩,growRow 770 s2Step26HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step26HeadFvBefore s2Step26HeadFvAfter s2Step26HeadFvRow 27 s2Step26HeadFvFresh
    s2Step26HeadFv_distinct s2Step26HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step26HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step26HeadFvRow.payload++s2Step26HeadFvFresh) s2Step26HeadFvRow.sign=⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step27HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step27HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step27HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 839],769⟩
def s2Step27HeadGFresh : List Wire := [785]
theorem s2Step27HeadG_distinct : (s2Step27HeadGRow.sign::s2Step27HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step27HeadG_owned : (s2Step27HeadGRow.sign::s2Step27HeadGRow.payload).toFinset⊆s2Step27HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step27HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27HeadG_reserved : s2Step27HeadGBefore.reserve s2Step27HeadGFresh.toFinset=some s2Step27HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step27HeadGFresh,arenaWires]
  · norm_num [s2Step27HeadGBefore,s2Step27HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step27HeadGAfter,s2Step27HeadGBefore,s2Step27HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step27HeadG_checked : planRowResizeLog s2Step27HeadGBefore s2Step27HeadGRow 256 s2Step27HeadGFresh=
    some (s2Step27HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 839, 785],769⟩,growRow 769 s2Step27HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step27HeadGBefore s2Step27HeadGAfter s2Step27HeadGRow 256 s2Step27HeadGFresh
    s2Step27HeadG_distinct s2Step27HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step27HeadG_reserved
  have rowEq : WindowRow.mk (s2Step27HeadGRow.payload++s2Step27HeadGFresh) s2Step27HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 839, 785],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step27HeadFBefore : Arena := s2Step27HeadGAfter
def s2Step27HeadFAfter : Arena := s2Step26HeadFvAfter
def s2Step27HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766],768⟩
def s2Step27HeadFFresh : List Wire := [781]
theorem s2Step27HeadF_distinct : (s2Step27HeadFRow.sign::s2Step27HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step27HeadF_owned : (s2Step27HeadFRow.sign::s2Step27HeadFRow.payload).toFinset⊆s2Step27HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step27HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27HeadF_reserved : s2Step27HeadFBefore.reserve s2Step27HeadFFresh.toFinset=some s2Step27HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step27HeadFFresh,arenaWires]
  · norm_num [s2Step27HeadFBefore,s2Step27HeadGAfter,s2Step27HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step27HeadFAfter,s2Step26HeadFvAfter,s2Step27HeadFBefore,s2Step27HeadGAfter,s2Step27HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step27HeadF_checked : planRowResizeLog s2Step27HeadFBefore s2Step27HeadFRow 256 s2Step27HeadFFresh=
    some (s2Step27HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 781],768⟩,growRow 768 s2Step27HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step27HeadFBefore s2Step27HeadFAfter s2Step27HeadFRow 256 s2Step27HeadFFresh
    s2Step27HeadF_distinct s2Step27HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step27HeadF_reserved
  have rowEq : WindowRow.mk (s2Step27HeadFRow.payload++s2Step27HeadFFresh) s2Step27HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step27HeadGvBefore : Arena := s2Step26HeadFvAfter
def s2Step27HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step27HeadGvRow : WindowRow := ⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 779],771⟩
def s2Step27HeadGvFresh : List Wire := [841]
theorem s2Step27HeadGv_distinct : (s2Step27HeadGvRow.sign::s2Step27HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step27HeadGv_owned : (s2Step27HeadGvRow.sign::s2Step27HeadGvRow.payload).toFinset⊆s2Step27HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step27HeadGvBefore (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27HeadGv_reserved : s2Step27HeadGvBefore.reserve s2Step27HeadGvFresh.toFinset=some s2Step27HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step27HeadGvFresh,arenaWires]
  · norm_num [s2Step27HeadGvBefore,s2Step26HeadFvAfter,s2Step27HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step27HeadGvAfter,s2Step27HeadGvBefore,s2Step26HeadFvAfter,s2Step27HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step27HeadGv_checked : planRowResizeLog s2Step27HeadGvBefore s2Step27HeadGvRow 28 s2Step27HeadGvFresh=
    some (s2Step27HeadGvAfter,⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 779, 841],771⟩,growRow 771 s2Step27HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step27HeadGvBefore s2Step27HeadGvAfter s2Step27HeadGvRow 28 s2Step27HeadGvFresh
    s2Step27HeadGv_distinct s2Step27HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step27HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step27HeadGvRow.payload++s2Step27HeadGvFresh) s2Step27HeadGvRow.sign=⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 779, 841],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step27HeadFvBefore : Arena := s2Step27HeadGvAfter
def s2Step27HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step27HeadFvRow : WindowRow := ⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782],770⟩
def s2Step27HeadFvFresh : List Wire := [842]
theorem s2Step27HeadFv_distinct : (s2Step27HeadFvRow.sign::s2Step27HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step27HeadFv_owned : (s2Step27HeadFvRow.sign::s2Step27HeadFvRow.payload).toFinset⊆s2Step27HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step27HeadFvBefore (fun q => (0≤q ∧ q<842) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27HeadFv_reserved : s2Step27HeadFvBefore.reserve s2Step27HeadFvFresh.toFinset=some s2Step27HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step27HeadFvFresh,arenaWires]
  · norm_num [s2Step27HeadFvBefore,s2Step27HeadGvAfter,s2Step27HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step27HeadFvAfter,s2Step27HeadFvBefore,s2Step27HeadGvAfter,s2Step27HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step27HeadFv_checked : planRowResizeLog s2Step27HeadFvBefore s2Step27HeadFvRow 28 s2Step27HeadFvFresh=
    some (s2Step27HeadFvAfter,⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842],770⟩,growRow 770 s2Step27HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step27HeadFvBefore s2Step27HeadFvAfter s2Step27HeadFvRow 28 s2Step27HeadFvFresh
    s2Step27HeadFv_distinct s2Step27HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step27HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step27HeadFvRow.payload++s2Step27HeadFvFresh) s2Step27HeadFvRow.sign=⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step28HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step28HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step28HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 780],769⟩
def s2Step28HeadGFresh : List Wire := [841]
theorem s2Step28HeadG_distinct : (s2Step28HeadGRow.sign::s2Step28HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step28HeadG_owned : (s2Step28HeadGRow.sign::s2Step28HeadGRow.payload).toFinset⊆s2Step28HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step28HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28HeadG_reserved : s2Step28HeadGBefore.reserve s2Step28HeadGFresh.toFinset=some s2Step28HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step28HeadGFresh,arenaWires]
  · norm_num [s2Step28HeadGBefore,s2Step28HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step28HeadGAfter,s2Step28HeadGBefore,s2Step28HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step28HeadG_checked : planRowResizeLog s2Step28HeadGBefore s2Step28HeadGRow 255 s2Step28HeadGFresh=
    some (s2Step28HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 780, 841],769⟩,growRow 769 s2Step28HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step28HeadGBefore s2Step28HeadGAfter s2Step28HeadGRow 255 s2Step28HeadGFresh
    s2Step28HeadG_distinct s2Step28HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step28HeadG_reserved
  have rowEq : WindowRow.mk (s2Step28HeadGRow.payload++s2Step28HeadGFresh) s2Step28HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 780, 841],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step28HeadFBefore : Arena := s2Step28HeadGAfter
def s2Step28HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step28HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765],768⟩
def s2Step28HeadFFresh : List Wire := [781]
theorem s2Step28HeadF_distinct : (s2Step28HeadFRow.sign::s2Step28HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step28HeadF_owned : (s2Step28HeadFRow.sign::s2Step28HeadFRow.payload).toFinset⊆s2Step28HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step28HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28HeadF_reserved : s2Step28HeadFBefore.reserve s2Step28HeadFFresh.toFinset=some s2Step28HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step28HeadFFresh,arenaWires]
  · norm_num [s2Step28HeadFBefore,s2Step28HeadGAfter,s2Step28HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step28HeadFAfter,s2Step28HeadFBefore,s2Step28HeadGAfter,s2Step28HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step28HeadF_checked : planRowResizeLog s2Step28HeadFBefore s2Step28HeadFRow 255 s2Step28HeadFFresh=
    some (s2Step28HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 781],768⟩,growRow 768 s2Step28HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step28HeadFBefore s2Step28HeadFAfter s2Step28HeadFRow 255 s2Step28HeadFFresh
    s2Step28HeadF_distinct s2Step28HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step28HeadF_reserved
  have rowEq : WindowRow.mk (s2Step28HeadFRow.payload++s2Step28HeadFFresh) s2Step28HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step28HeadGvBefore : Arena := s2Step28HeadFAfter
def s2Step28HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step28HeadGvRow : WindowRow := ⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778],771⟩
def s2Step28HeadGvFresh : List Wire := [839]
theorem s2Step28HeadGv_distinct : (s2Step28HeadGvRow.sign::s2Step28HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step28HeadGv_owned : (s2Step28HeadGvRow.sign::s2Step28HeadGvRow.payload).toFinset⊆s2Step28HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step28HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28HeadGv_reserved : s2Step28HeadGvBefore.reserve s2Step28HeadGvFresh.toFinset=some s2Step28HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step28HeadGvFresh,arenaWires]
  · norm_num [s2Step28HeadGvBefore,s2Step28HeadFAfter,s2Step28HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step28HeadGvAfter,s2Step28HeadGvBefore,s2Step28HeadFAfter,s2Step28HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step28HeadGv_checked : planRowResizeLog s2Step28HeadGvBefore s2Step28HeadGvRow 29 s2Step28HeadGvFresh=
    some (s2Step28HeadGvAfter,⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839],771⟩,growRow 771 s2Step28HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step28HeadGvBefore s2Step28HeadGvAfter s2Step28HeadGvRow 29 s2Step28HeadGvFresh
    s2Step28HeadGv_distinct s2Step28HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step28HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step28HeadGvRow.payload++s2Step28HeadGvFresh) s2Step28HeadGvRow.sign=⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step28HeadFvBefore : Arena := s2Step28HeadGvAfter
def s2Step28HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step28HeadFvRow : WindowRow := ⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842],770⟩
def s2Step28HeadFvFresh : List Wire := [785]
theorem s2Step28HeadFv_distinct : (s2Step28HeadFvRow.sign::s2Step28HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step28HeadFv_owned : (s2Step28HeadFvRow.sign::s2Step28HeadFvRow.payload).toFinset⊆s2Step28HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step28HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28HeadFv_reserved : s2Step28HeadFvBefore.reserve s2Step28HeadFvFresh.toFinset=some s2Step28HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step28HeadFvFresh,arenaWires]
  · norm_num [s2Step28HeadFvBefore,s2Step28HeadGvAfter,s2Step28HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step28HeadFvAfter,s2Step28HeadFvBefore,s2Step28HeadGvAfter,s2Step28HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step28HeadFv_checked : planRowResizeLog s2Step28HeadFvBefore s2Step28HeadFvRow 29 s2Step28HeadFvFresh=
    some (s2Step28HeadFvAfter,⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 785],770⟩,growRow 770 s2Step28HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step28HeadFvBefore s2Step28HeadFvAfter s2Step28HeadFvRow 29 s2Step28HeadFvFresh
    s2Step28HeadFv_distinct s2Step28HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step28HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step28HeadFvRow.payload++s2Step28HeadFvFresh) s2Step28HeadFvRow.sign=⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step29HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step29HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step29HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 779],769⟩
def s2Step29HeadGFresh : List Wire := [785]
theorem s2Step29HeadG_distinct : (s2Step29HeadGRow.sign::s2Step29HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step29HeadG_owned : (s2Step29HeadGRow.sign::s2Step29HeadGRow.payload).toFinset⊆s2Step29HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step29HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29HeadG_reserved : s2Step29HeadGBefore.reserve s2Step29HeadGFresh.toFinset=some s2Step29HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step29HeadGFresh,arenaWires]
  · norm_num [s2Step29HeadGBefore,s2Step29HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step29HeadGAfter,s2Step29HeadGBefore,s2Step29HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step29HeadG_checked : planRowResizeLog s2Step29HeadGBefore s2Step29HeadGRow 255 s2Step29HeadGFresh=
    some (s2Step29HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 779, 785],769⟩,growRow 769 s2Step29HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step29HeadGBefore s2Step29HeadGAfter s2Step29HeadGRow 255 s2Step29HeadGFresh
    s2Step29HeadG_distinct s2Step29HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step29HeadG_reserved
  have rowEq : WindowRow.mk (s2Step29HeadGRow.payload++s2Step29HeadGFresh) s2Step29HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 779, 785],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step29HeadFBefore : Arena := s2Step29HeadGAfter
def s2Step29HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step29HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765],768⟩
def s2Step29HeadFFresh : List Wire := [781]
theorem s2Step29HeadF_distinct : (s2Step29HeadFRow.sign::s2Step29HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step29HeadF_owned : (s2Step29HeadFRow.sign::s2Step29HeadFRow.payload).toFinset⊆s2Step29HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step29HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29HeadF_reserved : s2Step29HeadFBefore.reserve s2Step29HeadFFresh.toFinset=some s2Step29HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step29HeadFFresh,arenaWires]
  · norm_num [s2Step29HeadFBefore,s2Step29HeadGAfter,s2Step29HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step29HeadFAfter,s2Step29HeadFBefore,s2Step29HeadGAfter,s2Step29HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step29HeadF_checked : planRowResizeLog s2Step29HeadFBefore s2Step29HeadFRow 255 s2Step29HeadFFresh=
    some (s2Step29HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 781],768⟩,growRow 768 s2Step29HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step29HeadFBefore s2Step29HeadFAfter s2Step29HeadFRow 255 s2Step29HeadFFresh
    s2Step29HeadF_distinct s2Step29HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step29HeadF_reserved
  have rowEq : WindowRow.mk (s2Step29HeadFRow.payload++s2Step29HeadFFresh) s2Step29HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step29HeadGvBefore : Arena := s2Step29HeadFAfter
def s2Step29HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step29HeadGvRow : WindowRow := ⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 787],771⟩
def s2Step29HeadGvFresh : List Wire := [780]
theorem s2Step29HeadGv_distinct : (s2Step29HeadGvRow.sign::s2Step29HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step29HeadGv_owned : (s2Step29HeadGvRow.sign::s2Step29HeadGvRow.payload).toFinset⊆s2Step29HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step29HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29HeadGv_reserved : s2Step29HeadGvBefore.reserve s2Step29HeadGvFresh.toFinset=some s2Step29HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step29HeadGvFresh,arenaWires]
  · norm_num [s2Step29HeadGvBefore,s2Step29HeadFAfter,s2Step29HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step29HeadGvAfter,s2Step29HeadGvBefore,s2Step29HeadFAfter,s2Step29HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step29HeadGv_checked : planRowResizeLog s2Step29HeadGvBefore s2Step29HeadGvRow 29 s2Step29HeadGvFresh=
    some (s2Step29HeadGvAfter,⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 787, 780],771⟩,growRow 771 s2Step29HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step29HeadGvBefore s2Step29HeadGvAfter s2Step29HeadGvRow 29 s2Step29HeadGvFresh
    s2Step29HeadGv_distinct s2Step29HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step29HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step29HeadGvRow.payload++s2Step29HeadGvFresh) s2Step29HeadGvRow.sign=⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 787, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step29HeadFvBefore : Arena := s2Step29HeadGvAfter
def s2Step29HeadFvAfter : Arena := s2Step28HeadFvAfter
def s2Step29HeadFvRow : WindowRow := ⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842],770⟩
def s2Step29HeadFvFresh : List Wire := [841]
theorem s2Step29HeadFv_distinct : (s2Step29HeadFvRow.sign::s2Step29HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step29HeadFv_owned : (s2Step29HeadFvRow.sign::s2Step29HeadFvRow.payload).toFinset⊆s2Step29HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step29HeadFvBefore (fun q => (0≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29HeadFv_reserved : s2Step29HeadFvBefore.reserve s2Step29HeadFvFresh.toFinset=some s2Step29HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step29HeadFvFresh,arenaWires]
  · norm_num [s2Step29HeadFvBefore,s2Step29HeadGvAfter,s2Step29HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step29HeadFvAfter,s2Step28HeadFvAfter,s2Step29HeadFvBefore,s2Step29HeadGvAfter,s2Step29HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step29HeadFv_checked : planRowResizeLog s2Step29HeadFvBefore s2Step29HeadFvRow 29 s2Step29HeadFvFresh=
    some (s2Step29HeadFvAfter,⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩,growRow 770 s2Step29HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step29HeadFvBefore s2Step29HeadFvAfter s2Step29HeadFvRow 29 s2Step29HeadFvFresh
    s2Step29HeadFv_distinct s2Step29HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step29HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step29HeadFvRow.payload++s2Step29HeadFvFresh) s2Step29HeadFvRow.sign=⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step30HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step30HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step30HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 839],769⟩
def s2Step30HeadGFresh : List Wire := [780]
theorem s2Step30HeadG_distinct : (s2Step30HeadGRow.sign::s2Step30HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step30HeadG_owned : (s2Step30HeadGRow.sign::s2Step30HeadGRow.payload).toFinset⊆s2Step30HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step30HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30HeadG_reserved : s2Step30HeadGBefore.reserve s2Step30HeadGFresh.toFinset=some s2Step30HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step30HeadGFresh,arenaWires]
  · norm_num [s2Step30HeadGBefore,s2Step30HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step30HeadGAfter,s2Step30HeadGBefore,s2Step30HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step30HeadG_checked : planRowResizeLog s2Step30HeadGBefore s2Step30HeadGRow 254 s2Step30HeadGFresh=
    some (s2Step30HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 839, 780],769⟩,growRow 769 s2Step30HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step30HeadGBefore s2Step30HeadGAfter s2Step30HeadGRow 254 s2Step30HeadGFresh
    s2Step30HeadG_distinct s2Step30HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step30HeadG_reserved
  have rowEq : WindowRow.mk (s2Step30HeadGRow.payload++s2Step30HeadGFresh) s2Step30HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 839, 780],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step30HeadFBefore : Arena := s2Step30HeadGAfter
def s2Step30HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step30HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764],768⟩
def s2Step30HeadFFresh : List Wire := [781]
theorem s2Step30HeadF_distinct : (s2Step30HeadFRow.sign::s2Step30HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step30HeadF_owned : (s2Step30HeadFRow.sign::s2Step30HeadFRow.payload).toFinset⊆s2Step30HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step30HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30HeadF_reserved : s2Step30HeadFBefore.reserve s2Step30HeadFFresh.toFinset=some s2Step30HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step30HeadFFresh,arenaWires]
  · norm_num [s2Step30HeadFBefore,s2Step30HeadGAfter,s2Step30HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step30HeadFAfter,s2Step30HeadFBefore,s2Step30HeadGAfter,s2Step30HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step30HeadF_checked : planRowResizeLog s2Step30HeadFBefore s2Step30HeadFRow 254 s2Step30HeadFFresh=
    some (s2Step30HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 781],768⟩,growRow 768 s2Step30HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step30HeadFBefore s2Step30HeadFAfter s2Step30HeadFRow 254 s2Step30HeadFFresh
    s2Step30HeadF_distinct s2Step30HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step30HeadF_reserved
  have rowEq : WindowRow.mk (s2Step30HeadFRow.payload++s2Step30HeadFFresh) s2Step30HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step30HeadGvBefore : Arena := s2Step30HeadFAfter
def s2Step30HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step30HeadGvRow : WindowRow := ⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 786],771⟩
def s2Step30HeadGvFresh : List Wire := [779]
theorem s2Step30HeadGv_distinct : (s2Step30HeadGvRow.sign::s2Step30HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step30HeadGv_owned : (s2Step30HeadGvRow.sign::s2Step30HeadGvRow.payload).toFinset⊆s2Step30HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step30HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30HeadGv_reserved : s2Step30HeadGvBefore.reserve s2Step30HeadGvFresh.toFinset=some s2Step30HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step30HeadGvFresh,arenaWires]
  · norm_num [s2Step30HeadGvBefore,s2Step30HeadFAfter,s2Step30HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step30HeadGvAfter,s2Step30HeadGvBefore,s2Step30HeadFAfter,s2Step30HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step30HeadGv_checked : planRowResizeLog s2Step30HeadGvBefore s2Step30HeadGvRow 30 s2Step30HeadGvFresh=
    some (s2Step30HeadGvAfter,⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 786, 779],771⟩,growRow 771 s2Step30HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step30HeadGvBefore s2Step30HeadGvAfter s2Step30HeadGvRow 30 s2Step30HeadGvFresh
    s2Step30HeadGv_distinct s2Step30HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step30HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step30HeadGvRow.payload++s2Step30HeadGvFresh) s2Step30HeadGvRow.sign=⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 786, 779],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step30HeadFvBefore : Arena := s2Step30HeadGvAfter
def s2Step30HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step30HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩
def s2Step30HeadFvFresh : List Wire := [785]
theorem s2Step30HeadFv_distinct : (s2Step30HeadFvRow.sign::s2Step30HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step30HeadFv_owned : (s2Step30HeadFvRow.sign::s2Step30HeadFvRow.payload).toFinset⊆s2Step30HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step30HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30HeadFv_reserved : s2Step30HeadFvBefore.reserve s2Step30HeadFvFresh.toFinset=some s2Step30HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step30HeadFvFresh,arenaWires]
  · norm_num [s2Step30HeadFvBefore,s2Step30HeadGvAfter,s2Step30HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step30HeadFvAfter,s2Step30HeadFvBefore,s2Step30HeadGvAfter,s2Step30HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step30HeadFv_checked : planRowResizeLog s2Step30HeadFvBefore s2Step30HeadFvRow 30 s2Step30HeadFvFresh=
    some (s2Step30HeadFvAfter,⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 785],770⟩,growRow 770 s2Step30HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step30HeadFvBefore s2Step30HeadFvAfter s2Step30HeadFvRow 30 s2Step30HeadFvFresh
    s2Step30HeadFv_distinct s2Step30HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step30HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step30HeadFvRow.payload++s2Step30HeadFvFresh) s2Step30HeadFvRow.sign=⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step31HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step31HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step31HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 787],769⟩
def s2Step31HeadGFresh : List Wire := [785]
theorem s2Step31HeadG_distinct : (s2Step31HeadGRow.sign::s2Step31HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step31HeadG_owned : (s2Step31HeadGRow.sign::s2Step31HeadGRow.payload).toFinset⊆s2Step31HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step31HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31HeadG_reserved : s2Step31HeadGBefore.reserve s2Step31HeadGFresh.toFinset=some s2Step31HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step31HeadGFresh,arenaWires]
  · norm_num [s2Step31HeadGBefore,s2Step31HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step31HeadGAfter,s2Step31HeadGBefore,s2Step31HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step31HeadG_checked : planRowResizeLog s2Step31HeadGBefore s2Step31HeadGRow 254 s2Step31HeadGFresh=
    some (s2Step31HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 787, 785],769⟩,growRow 769 s2Step31HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step31HeadGBefore s2Step31HeadGAfter s2Step31HeadGRow 254 s2Step31HeadGFresh
    s2Step31HeadG_distinct s2Step31HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step31HeadG_reserved
  have rowEq : WindowRow.mk (s2Step31HeadGRow.payload++s2Step31HeadGFresh) s2Step31HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 787, 785],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step31HeadFBefore : Arena := s2Step31HeadGAfter
def s2Step31HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step31HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764],768⟩
def s2Step31HeadFFresh : List Wire := [781]
theorem s2Step31HeadF_distinct : (s2Step31HeadFRow.sign::s2Step31HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step31HeadF_owned : (s2Step31HeadFRow.sign::s2Step31HeadFRow.payload).toFinset⊆s2Step31HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step31HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31HeadF_reserved : s2Step31HeadFBefore.reserve s2Step31HeadFFresh.toFinset=some s2Step31HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step31HeadFFresh,arenaWires]
  · norm_num [s2Step31HeadFBefore,s2Step31HeadGAfter,s2Step31HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step31HeadFAfter,s2Step31HeadFBefore,s2Step31HeadGAfter,s2Step31HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step31HeadF_checked : planRowResizeLog s2Step31HeadFBefore s2Step31HeadFRow 254 s2Step31HeadFFresh=
    some (s2Step31HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 781],768⟩,growRow 768 s2Step31HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step31HeadFBefore s2Step31HeadFAfter s2Step31HeadFRow 254 s2Step31HeadFFresh
    s2Step31HeadF_distinct s2Step31HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step31HeadF_reserved
  have rowEq : WindowRow.mk (s2Step31HeadFRow.payload++s2Step31HeadFFresh) s2Step31HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step31HeadGvBefore : Arena := s2Step31HeadFAfter
def s2Step31HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step31HeadGvRow : WindowRow := ⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 789],771⟩
def s2Step31HeadGvFresh : List Wire := [839]
theorem s2Step31HeadGv_distinct : (s2Step31HeadGvRow.sign::s2Step31HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step31HeadGv_owned : (s2Step31HeadGvRow.sign::s2Step31HeadGvRow.payload).toFinset⊆s2Step31HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step31HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31HeadGv_reserved : s2Step31HeadGvBefore.reserve s2Step31HeadGvFresh.toFinset=some s2Step31HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step31HeadGvFresh,arenaWires]
  · norm_num [s2Step31HeadGvBefore,s2Step31HeadFAfter,s2Step31HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step31HeadGvAfter,s2Step31HeadGvBefore,s2Step31HeadFAfter,s2Step31HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step31HeadGv_checked : planRowResizeLog s2Step31HeadGvBefore s2Step31HeadGvRow 30 s2Step31HeadGvFresh=
    some (s2Step31HeadGvAfter,⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 789, 839],771⟩,growRow 771 s2Step31HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step31HeadGvBefore s2Step31HeadGvAfter s2Step31HeadGvRow 30 s2Step31HeadGvFresh
    s2Step31HeadGv_distinct s2Step31HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step31HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step31HeadGvRow.payload++s2Step31HeadGvFresh) s2Step31HeadGvRow.sign=⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 789, 839],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step31HeadFvBefore : Arena := s2Step31HeadGvAfter
def s2Step31HeadFvAfter : Arena := s2Step30HeadFvAfter
def s2Step31HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩
def s2Step31HeadFvFresh : List Wire := [780]
theorem s2Step31HeadFv_distinct : (s2Step31HeadFvRow.sign::s2Step31HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step31HeadFv_owned : (s2Step31HeadFvRow.sign::s2Step31HeadFvRow.payload).toFinset⊆s2Step31HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step31HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31HeadFv_reserved : s2Step31HeadFvBefore.reserve s2Step31HeadFvFresh.toFinset=some s2Step31HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step31HeadFvFresh,arenaWires]
  · norm_num [s2Step31HeadFvBefore,s2Step31HeadGvAfter,s2Step31HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step31HeadFvAfter,s2Step30HeadFvAfter,s2Step31HeadFvBefore,s2Step31HeadGvAfter,s2Step31HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step31HeadFv_checked : planRowResizeLog s2Step31HeadFvBefore s2Step31HeadFvRow 30 s2Step31HeadFvFresh=
    some (s2Step31HeadFvAfter,⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 780],770⟩,growRow 770 s2Step31HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step31HeadFvBefore s2Step31HeadFvAfter s2Step31HeadFvRow 30 s2Step31HeadFvFresh
    s2Step31HeadFv_distinct s2Step31HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step31HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step31HeadFvRow.payload++s2Step31HeadFvFresh) s2Step31HeadFvRow.sign=⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 780],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

end ECDSAAdd.Arithmetic.Paper935
