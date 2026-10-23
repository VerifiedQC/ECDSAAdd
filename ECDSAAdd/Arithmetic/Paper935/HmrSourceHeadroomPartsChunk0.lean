import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step0HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782)),Finset.filter_subset _ _⟩
def s2Step0HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783)),Finset.filter_subset _ _⟩
def s2Step0HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255],769⟩
def s2Step0HeadGFresh : List Wire := [782]
theorem s2Step0HeadG_distinct : (s2Step0HeadGRow.sign::s2Step0HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step0HeadG_owned : (s2Step0HeadGRow.sign::s2Step0HeadGRow.payload).toFinset⊆s2Step0HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step0HeadGBefore (fun q => (0≤q ∧ q<782)) rfl
  decide +kernel
theorem s2Step0HeadG_reserved : s2Step0HeadGBefore.reserve s2Step0HeadGFresh.toFinset=some s2Step0HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step0HeadGFresh,arenaWires]
  · norm_num [s2Step0HeadGBefore,s2Step0HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step0HeadGAfter,s2Step0HeadGBefore,s2Step0HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step0HeadG_checked : planRowResizeLog s2Step0HeadGBefore s2Step0HeadGRow 257 s2Step0HeadGFresh=
    some (s2Step0HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 782],769⟩,growRow 769 s2Step0HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step0HeadGBefore s2Step0HeadGAfter s2Step0HeadGRow 257 s2Step0HeadGFresh
    s2Step0HeadG_distinct s2Step0HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step0HeadG_reserved
  have rowEq : WindowRow.mk (s2Step0HeadGRow.payload++s2Step0HeadGFresh) s2Step0HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step0HeadFBefore : Arena := s2Step0HeadGAfter
def s2Step0HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784)),Finset.filter_subset _ _⟩
def s2Step0HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step0HeadFFresh : List Wire := [783]
theorem s2Step0HeadF_distinct : (s2Step0HeadFRow.sign::s2Step0HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step0HeadF_owned : (s2Step0HeadFRow.sign::s2Step0HeadFRow.payload).toFinset⊆s2Step0HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step0HeadFBefore (fun q => (0≤q ∧ q<783)) rfl
  decide +kernel
theorem s2Step0HeadF_reserved : s2Step0HeadFBefore.reserve s2Step0HeadFFresh.toFinset=some s2Step0HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step0HeadFFresh,arenaWires]
  · norm_num [s2Step0HeadFBefore,s2Step0HeadGAfter,s2Step0HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step0HeadFAfter,s2Step0HeadFBefore,s2Step0HeadGAfter,s2Step0HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step0HeadF_checked : planRowResizeLog s2Step0HeadFBefore s2Step0HeadFRow 257 s2Step0HeadFFresh=
    some (s2Step0HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩,growRow 768 s2Step0HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step0HeadFBefore s2Step0HeadFAfter s2Step0HeadFRow 257 s2Step0HeadFFresh
    s2Step0HeadF_distinct s2Step0HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step0HeadF_reserved
  have rowEq : WindowRow.mk (s2Step0HeadFRow.payload++s2Step0HeadFFresh) s2Step0HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step0HeadGvBefore : Arena := s2Step0HeadFAfter
def s2Step0HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785)),Finset.filter_subset _ _⟩
def s2Step0HeadGvRow : WindowRow := ⟨[779],771⟩
def s2Step0HeadGvFresh : List Wire := [784]
theorem s2Step0HeadGv_distinct : (s2Step0HeadGvRow.sign::s2Step0HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step0HeadGv_owned : (s2Step0HeadGvRow.sign::s2Step0HeadGvRow.payload).toFinset⊆s2Step0HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step0HeadGvBefore (fun q => (0≤q ∧ q<784)) rfl
  decide +kernel
theorem s2Step0HeadGv_reserved : s2Step0HeadGvBefore.reserve s2Step0HeadGvFresh.toFinset=some s2Step0HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step0HeadGvFresh,arenaWires]
  · norm_num [s2Step0HeadGvBefore,s2Step0HeadFAfter,s2Step0HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step0HeadGvAfter,s2Step0HeadGvBefore,s2Step0HeadFAfter,s2Step0HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step0HeadGv_checked : planRowResizeLog s2Step0HeadGvBefore s2Step0HeadGvRow 2 s2Step0HeadGvFresh=
    some (s2Step0HeadGvAfter,⟨[779, 784],771⟩,growRow 771 s2Step0HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step0HeadGvBefore s2Step0HeadGvAfter s2Step0HeadGvRow 2 s2Step0HeadGvFresh
    s2Step0HeadGv_distinct s2Step0HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step0HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step0HeadGvRow.payload++s2Step0HeadGvFresh) s2Step0HeadGvRow.sign=⟨[779, 784],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step0HeadFvBefore : Arena := s2Step0HeadGvAfter
def s2Step0HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786)),Finset.filter_subset _ _⟩
def s2Step0HeadFvRow : WindowRow := ⟨[778],770⟩
def s2Step0HeadFvFresh : List Wire := [785]
theorem s2Step0HeadFv_distinct : (s2Step0HeadFvRow.sign::s2Step0HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step0HeadFv_owned : (s2Step0HeadFvRow.sign::s2Step0HeadFvRow.payload).toFinset⊆s2Step0HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step0HeadFvBefore (fun q => (0≤q ∧ q<785)) rfl
  decide +kernel
theorem s2Step0HeadFv_reserved : s2Step0HeadFvBefore.reserve s2Step0HeadFvFresh.toFinset=some s2Step0HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step0HeadFvFresh,arenaWires]
  · norm_num [s2Step0HeadFvBefore,s2Step0HeadGvAfter,s2Step0HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step0HeadFvAfter,s2Step0HeadFvBefore,s2Step0HeadGvAfter,s2Step0HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step0HeadFv_checked : planRowResizeLog s2Step0HeadFvBefore s2Step0HeadFvRow 2 s2Step0HeadFvFresh=
    some (s2Step0HeadFvAfter,⟨[778, 785],770⟩,growRow 770 s2Step0HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step0HeadFvBefore s2Step0HeadFvAfter s2Step0HeadFvRow 2 s2Step0HeadFvFresh
    s2Step0HeadFv_distinct s2Step0HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step0HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step0HeadFvRow.payload++s2Step0HeadFvFresh) s2Step0HeadFvRow.sign=⟨[778, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step1HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<786) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step1HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step1HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩
def s2Step1HeadGFresh : List Wire := [783]
theorem s2Step1HeadG_distinct : (s2Step1HeadGRow.sign::s2Step1HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step1HeadG_owned : (s2Step1HeadGRow.sign::s2Step1HeadGRow.payload).toFinset⊆s2Step1HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step1HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1HeadG_reserved : s2Step1HeadGBefore.reserve s2Step1HeadGFresh.toFinset=some s2Step1HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step1HeadGFresh,arenaWires]
  · norm_num [s2Step1HeadGBefore,s2Step1HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step1HeadGAfter,s2Step1HeadGBefore,s2Step1HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step1HeadG_checked : planRowResizeLog s2Step1HeadGBefore s2Step1HeadGRow 257 s2Step1HeadGFresh=
    some (s2Step1HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩,growRow 769 s2Step1HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step1HeadGBefore s2Step1HeadGAfter s2Step1HeadGRow 257 s2Step1HeadGFresh
    s2Step1HeadG_distinct s2Step1HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step1HeadG_reserved
  have rowEq : WindowRow.mk (s2Step1HeadGRow.payload++s2Step1HeadGFresh) s2Step1HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step1HeadFBefore : Arena := s2Step1HeadGAfter
def s2Step1HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step1HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step1HeadFFresh : List Wire := [782]
theorem s2Step1HeadF_distinct : (s2Step1HeadFRow.sign::s2Step1HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step1HeadF_owned : (s2Step1HeadFRow.sign::s2Step1HeadFRow.payload).toFinset⊆s2Step1HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step1HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1HeadF_reserved : s2Step1HeadFBefore.reserve s2Step1HeadFFresh.toFinset=some s2Step1HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step1HeadFFresh,arenaWires]
  · norm_num [s2Step1HeadFBefore,s2Step1HeadGAfter,s2Step1HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step1HeadFAfter,s2Step1HeadFBefore,s2Step1HeadGAfter,s2Step1HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step1HeadF_checked : planRowResizeLog s2Step1HeadFBefore s2Step1HeadFRow 257 s2Step1HeadFFresh=
    some (s2Step1HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩,growRow 768 s2Step1HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step1HeadFBefore s2Step1HeadFAfter s2Step1HeadFRow 257 s2Step1HeadFFresh
    s2Step1HeadF_distinct s2Step1HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step1HeadF_reserved
  have rowEq : WindowRow.mk (s2Step1HeadFRow.payload++s2Step1HeadFFresh) s2Step1HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step1HeadGvBefore : Arena := s2Step1HeadFAfter
def s2Step1HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step1HeadGvRow : WindowRow := ⟨[779, 780],771⟩
def s2Step1HeadGvFresh : List Wire := [786]
theorem s2Step1HeadGv_distinct : (s2Step1HeadGvRow.sign::s2Step1HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step1HeadGv_owned : (s2Step1HeadGvRow.sign::s2Step1HeadGvRow.payload).toFinset⊆s2Step1HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step1HeadGvBefore (fun q => (0≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1HeadGv_reserved : s2Step1HeadGvBefore.reserve s2Step1HeadGvFresh.toFinset=some s2Step1HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step1HeadGvFresh,arenaWires]
  · norm_num [s2Step1HeadGvBefore,s2Step1HeadFAfter,s2Step1HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step1HeadGvAfter,s2Step1HeadGvBefore,s2Step1HeadFAfter,s2Step1HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step1HeadGv_checked : planRowResizeLog s2Step1HeadGvBefore s2Step1HeadGvRow 3 s2Step1HeadGvFresh=
    some (s2Step1HeadGvAfter,⟨[779, 780, 786],771⟩,growRow 771 s2Step1HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step1HeadGvBefore s2Step1HeadGvAfter s2Step1HeadGvRow 3 s2Step1HeadGvFresh
    s2Step1HeadGv_distinct s2Step1HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step1HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step1HeadGvRow.payload++s2Step1HeadGvFresh) s2Step1HeadGvRow.sign=⟨[779, 780, 786],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step1HeadFvBefore : Arena := s2Step1HeadGvAfter
def s2Step1HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step1HeadFvRow : WindowRow := ⟨[255, 785],770⟩
def s2Step1HeadFvFresh : List Wire := [787]
theorem s2Step1HeadFv_distinct : (s2Step1HeadFvRow.sign::s2Step1HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step1HeadFv_owned : (s2Step1HeadFvRow.sign::s2Step1HeadFvRow.payload).toFinset⊆s2Step1HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step1HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1HeadFv_reserved : s2Step1HeadFvBefore.reserve s2Step1HeadFvFresh.toFinset=some s2Step1HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step1HeadFvFresh,arenaWires]
  · norm_num [s2Step1HeadFvBefore,s2Step1HeadGvAfter,s2Step1HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step1HeadFvAfter,s2Step1HeadFvBefore,s2Step1HeadGvAfter,s2Step1HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step1HeadFv_checked : planRowResizeLog s2Step1HeadFvBefore s2Step1HeadFvRow 3 s2Step1HeadFvFresh=
    some (s2Step1HeadFvAfter,⟨[255, 785, 787],770⟩,growRow 770 s2Step1HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step1HeadFvBefore s2Step1HeadFvAfter s2Step1HeadFvRow 3 s2Step1HeadFvFresh
    s2Step1HeadFv_distinct s2Step1HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step1HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step1HeadFvRow.payload++s2Step1HeadFvFresh) s2Step1HeadFvRow.sign=⟨[255, 785, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step2HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step2HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step2HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩
def s2Step2HeadGFresh : List Wire := [781]
theorem s2Step2HeadG_distinct : (s2Step2HeadGRow.sign::s2Step2HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step2HeadG_owned : (s2Step2HeadGRow.sign::s2Step2HeadGRow.payload).toFinset⊆s2Step2HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step2HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2HeadG_reserved : s2Step2HeadGBefore.reserve s2Step2HeadGFresh.toFinset=some s2Step2HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step2HeadGFresh,arenaWires]
  · norm_num [s2Step2HeadGBefore,s2Step2HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step2HeadGAfter,s2Step2HeadGBefore,s2Step2HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step2HeadG_checked : planRowResizeLog s2Step2HeadGBefore s2Step2HeadGRow 257 s2Step2HeadGFresh=
    some (s2Step2HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩,growRow 769 s2Step2HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step2HeadGBefore s2Step2HeadGAfter s2Step2HeadGRow 257 s2Step2HeadGFresh
    s2Step2HeadG_distinct s2Step2HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step2HeadG_reserved
  have rowEq : WindowRow.mk (s2Step2HeadGRow.payload++s2Step2HeadGFresh) s2Step2HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step2HeadFBefore : Arena := s2Step2HeadGAfter
def s2Step2HeadFAfter : Arena := s2Step1HeadFvAfter
def s2Step2HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step2HeadFFresh : List Wire := [783]
theorem s2Step2HeadF_distinct : (s2Step2HeadFRow.sign::s2Step2HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step2HeadF_owned : (s2Step2HeadFRow.sign::s2Step2HeadFRow.payload).toFinset⊆s2Step2HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step2HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2HeadF_reserved : s2Step2HeadFBefore.reserve s2Step2HeadFFresh.toFinset=some s2Step2HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step2HeadFFresh,arenaWires]
  · norm_num [s2Step2HeadFBefore,s2Step2HeadGAfter,s2Step2HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step2HeadFAfter,s2Step1HeadFvAfter,s2Step2HeadFBefore,s2Step2HeadGAfter,s2Step2HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step2HeadF_checked : planRowResizeLog s2Step2HeadFBefore s2Step2HeadFRow 257 s2Step2HeadFFresh=
    some (s2Step2HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩,growRow 768 s2Step2HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step2HeadFBefore s2Step2HeadFAfter s2Step2HeadFRow 257 s2Step2HeadFFresh
    s2Step2HeadF_distinct s2Step2HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step2HeadF_reserved
  have rowEq : WindowRow.mk (s2Step2HeadFRow.payload++s2Step2HeadFFresh) s2Step2HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step2HeadGvBefore : Arena := s2Step1HeadFvAfter
def s2Step2HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step2HeadGvRow : WindowRow := ⟨[779, 778, 780],771⟩
def s2Step2HeadGvFresh : List Wire := [788]
theorem s2Step2HeadGv_distinct : (s2Step2HeadGvRow.sign::s2Step2HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step2HeadGv_owned : (s2Step2HeadGvRow.sign::s2Step2HeadGvRow.payload).toFinset⊆s2Step2HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step2HeadGvBefore (fun q => (0≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2HeadGv_reserved : s2Step2HeadGvBefore.reserve s2Step2HeadGvFresh.toFinset=some s2Step2HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step2HeadGvFresh,arenaWires]
  · norm_num [s2Step2HeadGvBefore,s2Step1HeadFvAfter,s2Step2HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step2HeadGvAfter,s2Step2HeadGvBefore,s2Step1HeadFvAfter,s2Step2HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step2HeadGv_checked : planRowResizeLog s2Step2HeadGvBefore s2Step2HeadGvRow 4 s2Step2HeadGvFresh=
    some (s2Step2HeadGvAfter,⟨[779, 778, 780, 788],771⟩,growRow 771 s2Step2HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step2HeadGvBefore s2Step2HeadGvAfter s2Step2HeadGvRow 4 s2Step2HeadGvFresh
    s2Step2HeadGv_distinct s2Step2HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step2HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step2HeadGvRow.payload++s2Step2HeadGvFresh) s2Step2HeadGvRow.sign=⟨[779, 778, 780, 788],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step2HeadFvBefore : Arena := s2Step2HeadGvAfter
def s2Step2HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step2HeadFvRow : WindowRow := ⟨[255, 785, 787],770⟩
def s2Step2HeadFvFresh : List Wire := [789]
theorem s2Step2HeadFv_distinct : (s2Step2HeadFvRow.sign::s2Step2HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step2HeadFv_owned : (s2Step2HeadFvRow.sign::s2Step2HeadFvRow.payload).toFinset⊆s2Step2HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step2HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2HeadFv_reserved : s2Step2HeadFvBefore.reserve s2Step2HeadFvFresh.toFinset=some s2Step2HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step2HeadFvFresh,arenaWires]
  · norm_num [s2Step2HeadFvBefore,s2Step2HeadGvAfter,s2Step2HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step2HeadFvAfter,s2Step2HeadFvBefore,s2Step2HeadGvAfter,s2Step2HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step2HeadFv_checked : planRowResizeLog s2Step2HeadFvBefore s2Step2HeadFvRow 4 s2Step2HeadFvFresh=
    some (s2Step2HeadFvAfter,⟨[255, 785, 787, 789],770⟩,growRow 770 s2Step2HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step2HeadFvBefore s2Step2HeadFvAfter s2Step2HeadFvRow 4 s2Step2HeadFvFresh
    s2Step2HeadFv_distinct s2Step2HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step2HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step2HeadFvRow.payload++s2Step2HeadFvFresh) s2Step2HeadFvRow.sign=⟨[255, 785, 787, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step3HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step3HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step3HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩
def s2Step3HeadGFresh : List Wire := [784]
theorem s2Step3HeadG_distinct : (s2Step3HeadGRow.sign::s2Step3HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step3HeadG_owned : (s2Step3HeadGRow.sign::s2Step3HeadGRow.payload).toFinset⊆s2Step3HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step3HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3HeadG_reserved : s2Step3HeadGBefore.reserve s2Step3HeadGFresh.toFinset=some s2Step3HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step3HeadGFresh,arenaWires]
  · norm_num [s2Step3HeadGBefore,s2Step3HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step3HeadGAfter,s2Step3HeadGBefore,s2Step3HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step3HeadG_checked : planRowResizeLog s2Step3HeadGBefore s2Step3HeadGRow 257 s2Step3HeadGFresh=
    some (s2Step3HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩,growRow 769 s2Step3HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step3HeadGBefore s2Step3HeadGAfter s2Step3HeadGRow 257 s2Step3HeadGFresh
    s2Step3HeadG_distinct s2Step3HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step3HeadG_reserved
  have rowEq : WindowRow.mk (s2Step3HeadGRow.payload++s2Step3HeadGFresh) s2Step3HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step3HeadFBefore : Arena := s2Step3HeadGAfter
def s2Step3HeadFAfter : Arena := s2Step2HeadFvAfter
def s2Step3HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step3HeadFFresh : List Wire := [781]
theorem s2Step3HeadF_distinct : (s2Step3HeadFRow.sign::s2Step3HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step3HeadF_owned : (s2Step3HeadFRow.sign::s2Step3HeadFRow.payload).toFinset⊆s2Step3HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step3HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3HeadF_reserved : s2Step3HeadFBefore.reserve s2Step3HeadFFresh.toFinset=some s2Step3HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step3HeadFFresh,arenaWires]
  · norm_num [s2Step3HeadFBefore,s2Step3HeadGAfter,s2Step3HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step3HeadFAfter,s2Step2HeadFvAfter,s2Step3HeadFBefore,s2Step3HeadGAfter,s2Step3HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step3HeadF_checked : planRowResizeLog s2Step3HeadFBefore s2Step3HeadFRow 257 s2Step3HeadFFresh=
    some (s2Step3HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩,growRow 768 s2Step3HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step3HeadFBefore s2Step3HeadFAfter s2Step3HeadFRow 257 s2Step3HeadFFresh
    s2Step3HeadF_distinct s2Step3HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step3HeadF_reserved
  have rowEq : WindowRow.mk (s2Step3HeadFRow.payload++s2Step3HeadFFresh) s2Step3HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step3HeadGvBefore : Arena := s2Step2HeadFvAfter
def s2Step3HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step3HeadGvRow : WindowRow := ⟨[779, 778, 786, 780],771⟩
def s2Step3HeadGvFresh : List Wire := [790]
theorem s2Step3HeadGv_distinct : (s2Step3HeadGvRow.sign::s2Step3HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step3HeadGv_owned : (s2Step3HeadGvRow.sign::s2Step3HeadGvRow.payload).toFinset⊆s2Step3HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step3HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3HeadGv_reserved : s2Step3HeadGvBefore.reserve s2Step3HeadGvFresh.toFinset=some s2Step3HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step3HeadGvFresh,arenaWires]
  · norm_num [s2Step3HeadGvBefore,s2Step2HeadFvAfter,s2Step3HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step3HeadGvAfter,s2Step3HeadGvBefore,s2Step2HeadFvAfter,s2Step3HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step3HeadGv_checked : planRowResizeLog s2Step3HeadGvBefore s2Step3HeadGvRow 5 s2Step3HeadGvFresh=
    some (s2Step3HeadGvAfter,⟨[779, 778, 786, 780, 790],771⟩,growRow 771 s2Step3HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step3HeadGvBefore s2Step3HeadGvAfter s2Step3HeadGvRow 5 s2Step3HeadGvFresh
    s2Step3HeadGv_distinct s2Step3HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step3HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step3HeadGvRow.payload++s2Step3HeadGvFresh) s2Step3HeadGvRow.sign=⟨[779, 778, 786, 780, 790],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step3HeadFvBefore : Arena := s2Step3HeadGvAfter
def s2Step3HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step3HeadFvRow : WindowRow := ⟨[255, 785, 787, 789],770⟩
def s2Step3HeadFvFresh : List Wire := [791]
theorem s2Step3HeadFv_distinct : (s2Step3HeadFvRow.sign::s2Step3HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step3HeadFv_owned : (s2Step3HeadFvRow.sign::s2Step3HeadFvRow.payload).toFinset⊆s2Step3HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step3HeadFvBefore (fun q => (0≤q ∧ q<791) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3HeadFv_reserved : s2Step3HeadFvBefore.reserve s2Step3HeadFvFresh.toFinset=some s2Step3HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step3HeadFvFresh,arenaWires]
  · norm_num [s2Step3HeadFvBefore,s2Step3HeadGvAfter,s2Step3HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step3HeadFvAfter,s2Step3HeadFvBefore,s2Step3HeadGvAfter,s2Step3HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step3HeadFv_checked : planRowResizeLog s2Step3HeadFvBefore s2Step3HeadFvRow 5 s2Step3HeadFvFresh=
    some (s2Step3HeadFvAfter,⟨[255, 785, 787, 789, 791],770⟩,growRow 770 s2Step3HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step3HeadFvBefore s2Step3HeadFvAfter s2Step3HeadFvRow 5 s2Step3HeadFvFresh
    s2Step3HeadFv_distinct s2Step3HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step3HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step3HeadFvRow.payload++s2Step3HeadFvFresh) s2Step3HeadFvRow.sign=⟨[255, 785, 787, 789, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step4HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step4HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step4HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩
def s2Step4HeadGFresh : List Wire := [782]
theorem s2Step4HeadG_distinct : (s2Step4HeadGRow.sign::s2Step4HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step4HeadG_owned : (s2Step4HeadGRow.sign::s2Step4HeadGRow.payload).toFinset⊆s2Step4HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step4HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4HeadG_reserved : s2Step4HeadGBefore.reserve s2Step4HeadGFresh.toFinset=some s2Step4HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step4HeadGFresh,arenaWires]
  · norm_num [s2Step4HeadGBefore,s2Step4HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step4HeadGAfter,s2Step4HeadGBefore,s2Step4HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step4HeadG_checked : planRowResizeLog s2Step4HeadGBefore s2Step4HeadGRow 257 s2Step4HeadGFresh=
    some (s2Step4HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩,growRow 769 s2Step4HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step4HeadGBefore s2Step4HeadGAfter s2Step4HeadGRow 257 s2Step4HeadGFresh
    s2Step4HeadG_distinct s2Step4HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step4HeadG_reserved
  have rowEq : WindowRow.mk (s2Step4HeadGRow.payload++s2Step4HeadGFresh) s2Step4HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step4HeadFBefore : Arena := s2Step4HeadGAfter
def s2Step4HeadFAfter : Arena := s2Step3HeadFvAfter
def s2Step4HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step4HeadFFresh : List Wire := [784]
theorem s2Step4HeadF_distinct : (s2Step4HeadFRow.sign::s2Step4HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step4HeadF_owned : (s2Step4HeadFRow.sign::s2Step4HeadFRow.payload).toFinset⊆s2Step4HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step4HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4HeadF_reserved : s2Step4HeadFBefore.reserve s2Step4HeadFFresh.toFinset=some s2Step4HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step4HeadFFresh,arenaWires]
  · norm_num [s2Step4HeadFBefore,s2Step4HeadGAfter,s2Step4HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step4HeadFAfter,s2Step3HeadFvAfter,s2Step4HeadFBefore,s2Step4HeadGAfter,s2Step4HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step4HeadF_checked : planRowResizeLog s2Step4HeadFBefore s2Step4HeadFRow 257 s2Step4HeadFFresh=
    some (s2Step4HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩,growRow 768 s2Step4HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step4HeadFBefore s2Step4HeadFAfter s2Step4HeadFRow 257 s2Step4HeadFFresh
    s2Step4HeadF_distinct s2Step4HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step4HeadF_reserved
  have rowEq : WindowRow.mk (s2Step4HeadFRow.payload++s2Step4HeadFFresh) s2Step4HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step4HeadGvBefore : Arena := s2Step3HeadFvAfter
def s2Step4HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step4HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 780],771⟩
def s2Step4HeadGvFresh : List Wire := [792]
theorem s2Step4HeadGv_distinct : (s2Step4HeadGvRow.sign::s2Step4HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step4HeadGv_owned : (s2Step4HeadGvRow.sign::s2Step4HeadGvRow.payload).toFinset⊆s2Step4HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step4HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4HeadGv_reserved : s2Step4HeadGvBefore.reserve s2Step4HeadGvFresh.toFinset=some s2Step4HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step4HeadGvFresh,arenaWires]
  · norm_num [s2Step4HeadGvBefore,s2Step3HeadFvAfter,s2Step4HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step4HeadGvAfter,s2Step4HeadGvBefore,s2Step3HeadFvAfter,s2Step4HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step4HeadGv_checked : planRowResizeLog s2Step4HeadGvBefore s2Step4HeadGvRow 6 s2Step4HeadGvFresh=
    some (s2Step4HeadGvAfter,⟨[779, 778, 786, 788, 780, 792],771⟩,growRow 771 s2Step4HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step4HeadGvBefore s2Step4HeadGvAfter s2Step4HeadGvRow 6 s2Step4HeadGvFresh
    s2Step4HeadGv_distinct s2Step4HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step4HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step4HeadGvRow.payload++s2Step4HeadGvFresh) s2Step4HeadGvRow.sign=⟨[779, 778, 786, 788, 780, 792],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step4HeadFvBefore : Arena := s2Step4HeadGvAfter
def s2Step4HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step4HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791],770⟩
def s2Step4HeadFvFresh : List Wire := [793]
theorem s2Step4HeadFv_distinct : (s2Step4HeadFvRow.sign::s2Step4HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step4HeadFv_owned : (s2Step4HeadFvRow.sign::s2Step4HeadFvRow.payload).toFinset⊆s2Step4HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step4HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4HeadFv_reserved : s2Step4HeadFvBefore.reserve s2Step4HeadFvFresh.toFinset=some s2Step4HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step4HeadFvFresh,arenaWires]
  · norm_num [s2Step4HeadFvBefore,s2Step4HeadGvAfter,s2Step4HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step4HeadFvAfter,s2Step4HeadFvBefore,s2Step4HeadGvAfter,s2Step4HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step4HeadFv_checked : planRowResizeLog s2Step4HeadFvBefore s2Step4HeadFvRow 6 s2Step4HeadFvFresh=
    some (s2Step4HeadFvAfter,⟨[255, 785, 787, 789, 791, 793],770⟩,growRow 770 s2Step4HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step4HeadFvBefore s2Step4HeadFvAfter s2Step4HeadFvRow 6 s2Step4HeadFvFresh
    s2Step4HeadFv_distinct s2Step4HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step4HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step4HeadFvRow.payload++s2Step4HeadFvFresh) s2Step4HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step5HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<794) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step5HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step5HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩
def s2Step5HeadGFresh : List Wire := [783]
theorem s2Step5HeadG_distinct : (s2Step5HeadGRow.sign::s2Step5HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step5HeadG_owned : (s2Step5HeadGRow.sign::s2Step5HeadGRow.payload).toFinset⊆s2Step5HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step5HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step5HeadG_reserved : s2Step5HeadGBefore.reserve s2Step5HeadGFresh.toFinset=some s2Step5HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step5HeadGFresh,arenaWires]
  · norm_num [s2Step5HeadGBefore,s2Step5HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step5HeadGAfter,s2Step5HeadGBefore,s2Step5HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step5HeadG_checked : planRowResizeLog s2Step5HeadGBefore s2Step5HeadGRow 257 s2Step5HeadGFresh=
    some (s2Step5HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩,growRow 769 s2Step5HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step5HeadGBefore s2Step5HeadGAfter s2Step5HeadGRow 257 s2Step5HeadGFresh
    s2Step5HeadG_distinct s2Step5HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step5HeadG_reserved
  have rowEq : WindowRow.mk (s2Step5HeadGRow.payload++s2Step5HeadGFresh) s2Step5HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step5HeadFBefore : Arena := s2Step5HeadGAfter
def s2Step5HeadFAfter : Arena := s2Step4HeadFvAfter
def s2Step5HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step5HeadFFresh : List Wire := [782]
theorem s2Step5HeadF_distinct : (s2Step5HeadFRow.sign::s2Step5HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step5HeadF_owned : (s2Step5HeadFRow.sign::s2Step5HeadFRow.payload).toFinset⊆s2Step5HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step5HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step5HeadF_reserved : s2Step5HeadFBefore.reserve s2Step5HeadFFresh.toFinset=some s2Step5HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step5HeadFFresh,arenaWires]
  · norm_num [s2Step5HeadFBefore,s2Step5HeadGAfter,s2Step5HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step5HeadFAfter,s2Step4HeadFvAfter,s2Step5HeadFBefore,s2Step5HeadGAfter,s2Step5HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step5HeadF_checked : planRowResizeLog s2Step5HeadFBefore s2Step5HeadFRow 257 s2Step5HeadFFresh=
    some (s2Step5HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩,growRow 768 s2Step5HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step5HeadFBefore s2Step5HeadFAfter s2Step5HeadFRow 257 s2Step5HeadFFresh
    s2Step5HeadF_distinct s2Step5HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step5HeadF_reserved
  have rowEq : WindowRow.mk (s2Step5HeadFRow.payload++s2Step5HeadFFresh) s2Step5HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step5HeadGvBefore : Arena := s2Step4HeadFvAfter
def s2Step5HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step5HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 780],771⟩
def s2Step5HeadGvFresh : List Wire := [794]
theorem s2Step5HeadGv_distinct : (s2Step5HeadGvRow.sign::s2Step5HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step5HeadGv_owned : (s2Step5HeadGvRow.sign::s2Step5HeadGvRow.payload).toFinset⊆s2Step5HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step5HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step5HeadGv_reserved : s2Step5HeadGvBefore.reserve s2Step5HeadGvFresh.toFinset=some s2Step5HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step5HeadGvFresh,arenaWires]
  · norm_num [s2Step5HeadGvBefore,s2Step4HeadFvAfter,s2Step5HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step5HeadGvAfter,s2Step5HeadGvBefore,s2Step4HeadFvAfter,s2Step5HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step5HeadGv_checked : planRowResizeLog s2Step5HeadGvBefore s2Step5HeadGvRow 7 s2Step5HeadGvFresh=
    some (s2Step5HeadGvAfter,⟨[779, 778, 786, 788, 790, 780, 794],771⟩,growRow 771 s2Step5HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step5HeadGvBefore s2Step5HeadGvAfter s2Step5HeadGvRow 7 s2Step5HeadGvFresh
    s2Step5HeadGv_distinct s2Step5HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step5HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step5HeadGvRow.payload++s2Step5HeadGvFresh) s2Step5HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 780, 794],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step5HeadFvBefore : Arena := s2Step5HeadGvAfter
def s2Step5HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797)),Finset.filter_subset _ _⟩
def s2Step5HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793],770⟩
def s2Step5HeadFvFresh : List Wire := [796]
theorem s2Step5HeadFv_distinct : (s2Step5HeadFvRow.sign::s2Step5HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step5HeadFv_owned : (s2Step5HeadFvRow.sign::s2Step5HeadFvRow.payload).toFinset⊆s2Step5HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step5HeadFvBefore (fun q => (0≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step5HeadFv_reserved : s2Step5HeadFvBefore.reserve s2Step5HeadFvFresh.toFinset=some s2Step5HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step5HeadFvFresh,arenaWires]
  · norm_num [s2Step5HeadFvBefore,s2Step5HeadGvAfter,s2Step5HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step5HeadFvAfter,s2Step5HeadFvBefore,s2Step5HeadGvAfter,s2Step5HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step5HeadFv_checked : planRowResizeLog s2Step5HeadFvBefore s2Step5HeadFvRow 7 s2Step5HeadFvFresh=
    some (s2Step5HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796],770⟩,growRow 770 s2Step5HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step5HeadFvBefore s2Step5HeadFvAfter s2Step5HeadFvRow 7 s2Step5HeadFvFresh
    s2Step5HeadFv_distinct s2Step5HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step5HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step5HeadFvRow.payload++s2Step5HeadFvFresh) s2Step5HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step6HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<797)),Finset.filter_subset _ _⟩
def s2Step6HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<797)),Finset.filter_subset _ _⟩
def s2Step6HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩
def s2Step6HeadGFresh : List Wire := [781]
theorem s2Step6HeadG_distinct : (s2Step6HeadGRow.sign::s2Step6HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step6HeadG_owned : (s2Step6HeadGRow.sign::s2Step6HeadGRow.payload).toFinset⊆s2Step6HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step6HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step6HeadG_reserved : s2Step6HeadGBefore.reserve s2Step6HeadGFresh.toFinset=some s2Step6HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step6HeadGFresh,arenaWires]
  · norm_num [s2Step6HeadGBefore,s2Step6HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step6HeadGAfter,s2Step6HeadGBefore,s2Step6HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step6HeadG_checked : planRowResizeLog s2Step6HeadGBefore s2Step6HeadGRow 257 s2Step6HeadGFresh=
    some (s2Step6HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩,growRow 769 s2Step6HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step6HeadGBefore s2Step6HeadGAfter s2Step6HeadGRow 257 s2Step6HeadGFresh
    s2Step6HeadG_distinct s2Step6HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step6HeadG_reserved
  have rowEq : WindowRow.mk (s2Step6HeadGRow.payload++s2Step6HeadGFresh) s2Step6HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step6HeadFBefore : Arena := s2Step6HeadGAfter
def s2Step6HeadFAfter : Arena := s2Step5HeadFvAfter
def s2Step6HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step6HeadFFresh : List Wire := [783]
theorem s2Step6HeadF_distinct : (s2Step6HeadFRow.sign::s2Step6HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step6HeadF_owned : (s2Step6HeadFRow.sign::s2Step6HeadFRow.payload).toFinset⊆s2Step6HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step6HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step6HeadF_reserved : s2Step6HeadFBefore.reserve s2Step6HeadFFresh.toFinset=some s2Step6HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step6HeadFFresh,arenaWires]
  · norm_num [s2Step6HeadFBefore,s2Step6HeadGAfter,s2Step6HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step6HeadFAfter,s2Step5HeadFvAfter,s2Step6HeadFBefore,s2Step6HeadGAfter,s2Step6HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step6HeadF_checked : planRowResizeLog s2Step6HeadFBefore s2Step6HeadFRow 257 s2Step6HeadFFresh=
    some (s2Step6HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩,growRow 768 s2Step6HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step6HeadFBefore s2Step6HeadFAfter s2Step6HeadFRow 257 s2Step6HeadFFresh
    s2Step6HeadF_distinct s2Step6HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step6HeadF_reserved
  have rowEq : WindowRow.mk (s2Step6HeadFRow.payload++s2Step6HeadFFresh) s2Step6HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step6HeadGvBefore : Arena := s2Step5HeadFvAfter
def s2Step6HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<798)),Finset.filter_subset _ _⟩
def s2Step6HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 780],771⟩
def s2Step6HeadGvFresh : List Wire := [797]
theorem s2Step6HeadGv_distinct : (s2Step6HeadGvRow.sign::s2Step6HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step6HeadGv_owned : (s2Step6HeadGvRow.sign::s2Step6HeadGvRow.payload).toFinset⊆s2Step6HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step6HeadGvBefore (fun q => (0≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step6HeadGv_reserved : s2Step6HeadGvBefore.reserve s2Step6HeadGvFresh.toFinset=some s2Step6HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step6HeadGvFresh,arenaWires]
  · norm_num [s2Step6HeadGvBefore,s2Step5HeadFvAfter,s2Step6HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step6HeadGvAfter,s2Step6HeadGvBefore,s2Step5HeadFvAfter,s2Step6HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step6HeadGv_checked : planRowResizeLog s2Step6HeadGvBefore s2Step6HeadGvRow 8 s2Step6HeadGvFresh=
    some (s2Step6HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 780, 797],771⟩,growRow 771 s2Step6HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step6HeadGvBefore s2Step6HeadGvAfter s2Step6HeadGvRow 8 s2Step6HeadGvFresh
    s2Step6HeadGv_distinct s2Step6HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step6HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step6HeadGvRow.payload++s2Step6HeadGvFresh) s2Step6HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 780, 797],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step6HeadFvBefore : Arena := s2Step6HeadGvAfter
def s2Step6HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799)),Finset.filter_subset _ _⟩
def s2Step6HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796],770⟩
def s2Step6HeadFvFresh : List Wire := [798]
theorem s2Step6HeadFv_distinct : (s2Step6HeadFvRow.sign::s2Step6HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step6HeadFv_owned : (s2Step6HeadFvRow.sign::s2Step6HeadFvRow.payload).toFinset⊆s2Step6HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step6HeadFvBefore (fun q => (0≤q ∧ q<798)) rfl
  decide +kernel
theorem s2Step6HeadFv_reserved : s2Step6HeadFvBefore.reserve s2Step6HeadFvFresh.toFinset=some s2Step6HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step6HeadFvFresh,arenaWires]
  · norm_num [s2Step6HeadFvBefore,s2Step6HeadGvAfter,s2Step6HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step6HeadFvAfter,s2Step6HeadFvBefore,s2Step6HeadGvAfter,s2Step6HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step6HeadFv_checked : planRowResizeLog s2Step6HeadFvBefore s2Step6HeadFvRow 8 s2Step6HeadFvFresh=
    some (s2Step6HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798],770⟩,growRow 770 s2Step6HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step6HeadFvBefore s2Step6HeadFvAfter s2Step6HeadFvRow 8 s2Step6HeadFvFresh
    s2Step6HeadFv_distinct s2Step6HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step6HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step6HeadFvRow.payload++s2Step6HeadFvFresh) s2Step6HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step7HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<799)),Finset.filter_subset _ _⟩
def s2Step7HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799)),Finset.filter_subset _ _⟩
def s2Step7HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩
def s2Step7HeadGFresh : List Wire := [784]
theorem s2Step7HeadG_distinct : (s2Step7HeadGRow.sign::s2Step7HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step7HeadG_owned : (s2Step7HeadGRow.sign::s2Step7HeadGRow.payload).toFinset⊆s2Step7HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step7HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step7HeadG_reserved : s2Step7HeadGBefore.reserve s2Step7HeadGFresh.toFinset=some s2Step7HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step7HeadGFresh,arenaWires]
  · norm_num [s2Step7HeadGBefore,s2Step7HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step7HeadGAfter,s2Step7HeadGBefore,s2Step7HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step7HeadG_checked : planRowResizeLog s2Step7HeadGBefore s2Step7HeadGRow 257 s2Step7HeadGFresh=
    some (s2Step7HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩,growRow 769 s2Step7HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step7HeadGBefore s2Step7HeadGAfter s2Step7HeadGRow 257 s2Step7HeadGFresh
    s2Step7HeadG_distinct s2Step7HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step7HeadG_reserved
  have rowEq : WindowRow.mk (s2Step7HeadGRow.payload++s2Step7HeadGFresh) s2Step7HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step7HeadFBefore : Arena := s2Step7HeadGAfter
def s2Step7HeadFAfter : Arena := s2Step6HeadFvAfter
def s2Step7HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step7HeadFFresh : List Wire := [781]
theorem s2Step7HeadF_distinct : (s2Step7HeadFRow.sign::s2Step7HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step7HeadF_owned : (s2Step7HeadFRow.sign::s2Step7HeadFRow.payload).toFinset⊆s2Step7HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step7HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step7HeadF_reserved : s2Step7HeadFBefore.reserve s2Step7HeadFFresh.toFinset=some s2Step7HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step7HeadFFresh,arenaWires]
  · norm_num [s2Step7HeadFBefore,s2Step7HeadGAfter,s2Step7HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step7HeadFAfter,s2Step6HeadFvAfter,s2Step7HeadFBefore,s2Step7HeadGAfter,s2Step7HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step7HeadF_checked : planRowResizeLog s2Step7HeadFBefore s2Step7HeadFRow 257 s2Step7HeadFFresh=
    some (s2Step7HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩,growRow 768 s2Step7HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step7HeadFBefore s2Step7HeadFAfter s2Step7HeadFRow 257 s2Step7HeadFFresh
    s2Step7HeadF_distinct s2Step7HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step7HeadF_reserved
  have rowEq : WindowRow.mk (s2Step7HeadFRow.payload++s2Step7HeadFFresh) s2Step7HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step7HeadGvBefore : Arena := s2Step6HeadFvAfter
def s2Step7HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800)),Finset.filter_subset _ _⟩
def s2Step7HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 780],771⟩
def s2Step7HeadGvFresh : List Wire := [799]
theorem s2Step7HeadGv_distinct : (s2Step7HeadGvRow.sign::s2Step7HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step7HeadGv_owned : (s2Step7HeadGvRow.sign::s2Step7HeadGvRow.payload).toFinset⊆s2Step7HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step7HeadGvBefore (fun q => (0≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step7HeadGv_reserved : s2Step7HeadGvBefore.reserve s2Step7HeadGvFresh.toFinset=some s2Step7HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step7HeadGvFresh,arenaWires]
  · norm_num [s2Step7HeadGvBefore,s2Step6HeadFvAfter,s2Step7HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step7HeadGvAfter,s2Step7HeadGvBefore,s2Step6HeadFvAfter,s2Step7HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step7HeadGv_checked : planRowResizeLog s2Step7HeadGvBefore s2Step7HeadGvRow 9 s2Step7HeadGvFresh=
    some (s2Step7HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 780, 799],771⟩,growRow 771 s2Step7HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step7HeadGvBefore s2Step7HeadGvAfter s2Step7HeadGvRow 9 s2Step7HeadGvFresh
    s2Step7HeadGv_distinct s2Step7HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step7HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step7HeadGvRow.payload++s2Step7HeadGvFresh) s2Step7HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 780, 799],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step7HeadFvBefore : Arena := s2Step7HeadGvAfter
def s2Step7HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<801)),Finset.filter_subset _ _⟩
def s2Step7HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798],770⟩
def s2Step7HeadFvFresh : List Wire := [800]
theorem s2Step7HeadFv_distinct : (s2Step7HeadFvRow.sign::s2Step7HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step7HeadFv_owned : (s2Step7HeadFvRow.sign::s2Step7HeadFvRow.payload).toFinset⊆s2Step7HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step7HeadFvBefore (fun q => (0≤q ∧ q<800)) rfl
  decide +kernel
theorem s2Step7HeadFv_reserved : s2Step7HeadFvBefore.reserve s2Step7HeadFvFresh.toFinset=some s2Step7HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step7HeadFvFresh,arenaWires]
  · norm_num [s2Step7HeadFvBefore,s2Step7HeadGvAfter,s2Step7HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step7HeadFvAfter,s2Step7HeadFvBefore,s2Step7HeadGvAfter,s2Step7HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step7HeadFv_checked : planRowResizeLog s2Step7HeadFvBefore s2Step7HeadFvRow 9 s2Step7HeadFvFresh=
    some (s2Step7HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800],770⟩,growRow 770 s2Step7HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step7HeadFvBefore s2Step7HeadFvAfter s2Step7HeadFvRow 9 s2Step7HeadFvFresh
    s2Step7HeadFv_distinct s2Step7HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step7HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step7HeadFvRow.payload++s2Step7HeadFvFresh) s2Step7HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step8HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<801)),Finset.filter_subset _ _⟩
def s2Step8HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<801)),Finset.filter_subset _ _⟩
def s2Step8HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩
def s2Step8HeadGFresh : List Wire := [782]
theorem s2Step8HeadG_distinct : (s2Step8HeadGRow.sign::s2Step8HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step8HeadG_owned : (s2Step8HeadGRow.sign::s2Step8HeadGRow.payload).toFinset⊆s2Step8HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step8HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step8HeadG_reserved : s2Step8HeadGBefore.reserve s2Step8HeadGFresh.toFinset=some s2Step8HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step8HeadGFresh,arenaWires]
  · norm_num [s2Step8HeadGBefore,s2Step8HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step8HeadGAfter,s2Step8HeadGBefore,s2Step8HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step8HeadG_checked : planRowResizeLog s2Step8HeadGBefore s2Step8HeadGRow 257 s2Step8HeadGFresh=
    some (s2Step8HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩,growRow 769 s2Step8HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step8HeadGBefore s2Step8HeadGAfter s2Step8HeadGRow 257 s2Step8HeadGFresh
    s2Step8HeadG_distinct s2Step8HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step8HeadG_reserved
  have rowEq : WindowRow.mk (s2Step8HeadGRow.payload++s2Step8HeadGFresh) s2Step8HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step8HeadFBefore : Arena := s2Step8HeadGAfter
def s2Step8HeadFAfter : Arena := s2Step7HeadFvAfter
def s2Step8HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step8HeadFFresh : List Wire := [784]
theorem s2Step8HeadF_distinct : (s2Step8HeadFRow.sign::s2Step8HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step8HeadF_owned : (s2Step8HeadFRow.sign::s2Step8HeadFRow.payload).toFinset⊆s2Step8HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step8HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step8HeadF_reserved : s2Step8HeadFBefore.reserve s2Step8HeadFFresh.toFinset=some s2Step8HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step8HeadFFresh,arenaWires]
  · norm_num [s2Step8HeadFBefore,s2Step8HeadGAfter,s2Step8HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step8HeadFAfter,s2Step7HeadFvAfter,s2Step8HeadFBefore,s2Step8HeadGAfter,s2Step8HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step8HeadF_checked : planRowResizeLog s2Step8HeadFBefore s2Step8HeadFRow 257 s2Step8HeadFFresh=
    some (s2Step8HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩,growRow 768 s2Step8HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step8HeadFBefore s2Step8HeadFAfter s2Step8HeadFRow 257 s2Step8HeadFFresh
    s2Step8HeadF_distinct s2Step8HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step8HeadF_reserved
  have rowEq : WindowRow.mk (s2Step8HeadFRow.payload++s2Step8HeadFFresh) s2Step8HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step8HeadGvBefore : Arena := s2Step7HeadFvAfter
def s2Step8HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802)),Finset.filter_subset _ _⟩
def s2Step8HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 780],771⟩
def s2Step8HeadGvFresh : List Wire := [801]
theorem s2Step8HeadGv_distinct : (s2Step8HeadGvRow.sign::s2Step8HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step8HeadGv_owned : (s2Step8HeadGvRow.sign::s2Step8HeadGvRow.payload).toFinset⊆s2Step8HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step8HeadGvBefore (fun q => (0≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step8HeadGv_reserved : s2Step8HeadGvBefore.reserve s2Step8HeadGvFresh.toFinset=some s2Step8HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step8HeadGvFresh,arenaWires]
  · norm_num [s2Step8HeadGvBefore,s2Step7HeadFvAfter,s2Step8HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step8HeadGvAfter,s2Step8HeadGvBefore,s2Step7HeadFvAfter,s2Step8HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step8HeadGv_checked : planRowResizeLog s2Step8HeadGvBefore s2Step8HeadGvRow 10 s2Step8HeadGvFresh=
    some (s2Step8HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 780, 801],771⟩,growRow 771 s2Step8HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step8HeadGvBefore s2Step8HeadGvAfter s2Step8HeadGvRow 10 s2Step8HeadGvFresh
    s2Step8HeadGv_distinct s2Step8HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step8HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step8HeadGvRow.payload++s2Step8HeadGvFresh) s2Step8HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 780, 801],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step8HeadFvBefore : Arena := s2Step8HeadGvAfter
def s2Step8HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<803)),Finset.filter_subset _ _⟩
def s2Step8HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800],770⟩
def s2Step8HeadFvFresh : List Wire := [802]
theorem s2Step8HeadFv_distinct : (s2Step8HeadFvRow.sign::s2Step8HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step8HeadFv_owned : (s2Step8HeadFvRow.sign::s2Step8HeadFvRow.payload).toFinset⊆s2Step8HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step8HeadFvBefore (fun q => (0≤q ∧ q<802)) rfl
  decide +kernel
theorem s2Step8HeadFv_reserved : s2Step8HeadFvBefore.reserve s2Step8HeadFvFresh.toFinset=some s2Step8HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step8HeadFvFresh,arenaWires]
  · norm_num [s2Step8HeadFvBefore,s2Step8HeadGvAfter,s2Step8HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step8HeadFvAfter,s2Step8HeadFvBefore,s2Step8HeadGvAfter,s2Step8HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step8HeadFv_checked : planRowResizeLog s2Step8HeadFvBefore s2Step8HeadFvRow 10 s2Step8HeadFvFresh=
    some (s2Step8HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802],770⟩,growRow 770 s2Step8HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step8HeadFvBefore s2Step8HeadFvAfter s2Step8HeadFvRow 10 s2Step8HeadFvFresh
    s2Step8HeadFv_distinct s2Step8HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step8HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step8HeadFvRow.payload++s2Step8HeadFvFresh) s2Step8HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step9HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<803)),Finset.filter_subset _ _⟩
def s2Step9HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<803)),Finset.filter_subset _ _⟩
def s2Step9HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩
def s2Step9HeadGFresh : List Wire := [783]
theorem s2Step9HeadG_distinct : (s2Step9HeadGRow.sign::s2Step9HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step9HeadG_owned : (s2Step9HeadGRow.sign::s2Step9HeadGRow.payload).toFinset⊆s2Step9HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step9HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step9HeadG_reserved : s2Step9HeadGBefore.reserve s2Step9HeadGFresh.toFinset=some s2Step9HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step9HeadGFresh,arenaWires]
  · norm_num [s2Step9HeadGBefore,s2Step9HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step9HeadGAfter,s2Step9HeadGBefore,s2Step9HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step9HeadG_checked : planRowResizeLog s2Step9HeadGBefore s2Step9HeadGRow 257 s2Step9HeadGFresh=
    some (s2Step9HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩,growRow 769 s2Step9HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step9HeadGBefore s2Step9HeadGAfter s2Step9HeadGRow 257 s2Step9HeadGFresh
    s2Step9HeadG_distinct s2Step9HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step9HeadG_reserved
  have rowEq : WindowRow.mk (s2Step9HeadGRow.payload++s2Step9HeadGFresh) s2Step9HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step9HeadFBefore : Arena := s2Step9HeadGAfter
def s2Step9HeadFAfter : Arena := s2Step8HeadFvAfter
def s2Step9HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step9HeadFFresh : List Wire := [782]
theorem s2Step9HeadF_distinct : (s2Step9HeadFRow.sign::s2Step9HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step9HeadF_owned : (s2Step9HeadFRow.sign::s2Step9HeadFRow.payload).toFinset⊆s2Step9HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step9HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step9HeadF_reserved : s2Step9HeadFBefore.reserve s2Step9HeadFFresh.toFinset=some s2Step9HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step9HeadFFresh,arenaWires]
  · norm_num [s2Step9HeadFBefore,s2Step9HeadGAfter,s2Step9HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step9HeadFAfter,s2Step8HeadFvAfter,s2Step9HeadFBefore,s2Step9HeadGAfter,s2Step9HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step9HeadF_checked : planRowResizeLog s2Step9HeadFBefore s2Step9HeadFRow 257 s2Step9HeadFFresh=
    some (s2Step9HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩,growRow 768 s2Step9HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step9HeadFBefore s2Step9HeadFAfter s2Step9HeadFRow 257 s2Step9HeadFFresh
    s2Step9HeadF_distinct s2Step9HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step9HeadF_reserved
  have rowEq : WindowRow.mk (s2Step9HeadFRow.payload++s2Step9HeadFFresh) s2Step9HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step9HeadGvBefore : Arena := s2Step8HeadFvAfter
def s2Step9HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<804)),Finset.filter_subset _ _⟩
def s2Step9HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 780],771⟩
def s2Step9HeadGvFresh : List Wire := [803]
theorem s2Step9HeadGv_distinct : (s2Step9HeadGvRow.sign::s2Step9HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step9HeadGv_owned : (s2Step9HeadGvRow.sign::s2Step9HeadGvRow.payload).toFinset⊆s2Step9HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step9HeadGvBefore (fun q => (0≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step9HeadGv_reserved : s2Step9HeadGvBefore.reserve s2Step9HeadGvFresh.toFinset=some s2Step9HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step9HeadGvFresh,arenaWires]
  · norm_num [s2Step9HeadGvBefore,s2Step8HeadFvAfter,s2Step9HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step9HeadGvAfter,s2Step9HeadGvBefore,s2Step8HeadFvAfter,s2Step9HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step9HeadGv_checked : planRowResizeLog s2Step9HeadGvBefore s2Step9HeadGvRow 11 s2Step9HeadGvFresh=
    some (s2Step9HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 780, 803],771⟩,growRow 771 s2Step9HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step9HeadGvBefore s2Step9HeadGvAfter s2Step9HeadGvRow 11 s2Step9HeadGvFresh
    s2Step9HeadGv_distinct s2Step9HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step9HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step9HeadGvRow.payload++s2Step9HeadGvFresh) s2Step9HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 780, 803],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step9HeadFvBefore : Arena := s2Step9HeadGvAfter
def s2Step9HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<805)),Finset.filter_subset _ _⟩
def s2Step9HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802],770⟩
def s2Step9HeadFvFresh : List Wire := [804]
theorem s2Step9HeadFv_distinct : (s2Step9HeadFvRow.sign::s2Step9HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step9HeadFv_owned : (s2Step9HeadFvRow.sign::s2Step9HeadFvRow.payload).toFinset⊆s2Step9HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step9HeadFvBefore (fun q => (0≤q ∧ q<804)) rfl
  decide +kernel
theorem s2Step9HeadFv_reserved : s2Step9HeadFvBefore.reserve s2Step9HeadFvFresh.toFinset=some s2Step9HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step9HeadFvFresh,arenaWires]
  · norm_num [s2Step9HeadFvBefore,s2Step9HeadGvAfter,s2Step9HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step9HeadFvAfter,s2Step9HeadFvBefore,s2Step9HeadGvAfter,s2Step9HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step9HeadFv_checked : planRowResizeLog s2Step9HeadFvBefore s2Step9HeadFvRow 11 s2Step9HeadFvFresh=
    some (s2Step9HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804],770⟩,growRow 770 s2Step9HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step9HeadFvBefore s2Step9HeadFvAfter s2Step9HeadFvRow 11 s2Step9HeadFvFresh
    s2Step9HeadFv_distinct s2Step9HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step9HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step9HeadFvRow.payload++s2Step9HeadFvFresh) s2Step9HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step10HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<805) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step10HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<805) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step10HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩
def s2Step10HeadGFresh : List Wire := [781]
theorem s2Step10HeadG_distinct : (s2Step10HeadGRow.sign::s2Step10HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step10HeadG_owned : (s2Step10HeadGRow.sign::s2Step10HeadGRow.payload).toFinset⊆s2Step10HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step10HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10HeadG_reserved : s2Step10HeadGBefore.reserve s2Step10HeadGFresh.toFinset=some s2Step10HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step10HeadGFresh,arenaWires]
  · norm_num [s2Step10HeadGBefore,s2Step10HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step10HeadGAfter,s2Step10HeadGBefore,s2Step10HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step10HeadG_checked : planRowResizeLog s2Step10HeadGBefore s2Step10HeadGRow 257 s2Step10HeadGFresh=
    some (s2Step10HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩,growRow 769 s2Step10HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step10HeadGBefore s2Step10HeadGAfter s2Step10HeadGRow 257 s2Step10HeadGFresh
    s2Step10HeadG_distinct s2Step10HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step10HeadG_reserved
  have rowEq : WindowRow.mk (s2Step10HeadGRow.payload++s2Step10HeadGFresh) s2Step10HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step10HeadFBefore : Arena := s2Step10HeadGAfter
def s2Step10HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<805) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step10HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step10HeadFFresh : List Wire := [783]
theorem s2Step10HeadF_distinct : (s2Step10HeadFRow.sign::s2Step10HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step10HeadF_owned : (s2Step10HeadFRow.sign::s2Step10HeadFRow.payload).toFinset⊆s2Step10HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step10HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10HeadF_reserved : s2Step10HeadFBefore.reserve s2Step10HeadFFresh.toFinset=some s2Step10HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step10HeadFFresh,arenaWires]
  · norm_num [s2Step10HeadFBefore,s2Step10HeadGAfter,s2Step10HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step10HeadFAfter,s2Step10HeadFBefore,s2Step10HeadGAfter,s2Step10HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step10HeadF_checked : planRowResizeLog s2Step10HeadFBefore s2Step10HeadFRow 257 s2Step10HeadFFresh=
    some (s2Step10HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩,growRow 768 s2Step10HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step10HeadFBefore s2Step10HeadFAfter s2Step10HeadFRow 257 s2Step10HeadFFresh
    s2Step10HeadF_distinct s2Step10HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step10HeadF_reserved
  have rowEq : WindowRow.mk (s2Step10HeadFRow.payload++s2Step10HeadFFresh) s2Step10HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step10HeadGvBefore : Arena := s2Step10HeadFAfter
def s2Step10HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<806) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step10HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 780],771⟩
def s2Step10HeadGvFresh : List Wire := [805]
theorem s2Step10HeadGv_distinct : (s2Step10HeadGvRow.sign::s2Step10HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step10HeadGv_owned : (s2Step10HeadGvRow.sign::s2Step10HeadGvRow.payload).toFinset⊆s2Step10HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step10HeadGvBefore (fun q => (0≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10HeadGv_reserved : s2Step10HeadGvBefore.reserve s2Step10HeadGvFresh.toFinset=some s2Step10HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step10HeadGvFresh,arenaWires]
  · norm_num [s2Step10HeadGvBefore,s2Step10HeadFAfter,s2Step10HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step10HeadGvAfter,s2Step10HeadGvBefore,s2Step10HeadFAfter,s2Step10HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step10HeadGv_checked : planRowResizeLog s2Step10HeadGvBefore s2Step10HeadGvRow 12 s2Step10HeadGvFresh=
    some (s2Step10HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 780, 805],771⟩,growRow 771 s2Step10HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step10HeadGvBefore s2Step10HeadGvAfter s2Step10HeadGvRow 12 s2Step10HeadGvFresh
    s2Step10HeadGv_distinct s2Step10HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step10HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step10HeadGvRow.payload++s2Step10HeadGvFresh) s2Step10HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 780, 805],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step10HeadFvBefore : Arena := s2Step10HeadGvAfter
def s2Step10HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step10HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804],770⟩
def s2Step10HeadFvFresh : List Wire := [806]
theorem s2Step10HeadFv_distinct : (s2Step10HeadFvRow.sign::s2Step10HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step10HeadFv_owned : (s2Step10HeadFvRow.sign::s2Step10HeadFvRow.payload).toFinset⊆s2Step10HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step10HeadFvBefore (fun q => (0≤q ∧ q<806) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10HeadFv_reserved : s2Step10HeadFvBefore.reserve s2Step10HeadFvFresh.toFinset=some s2Step10HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step10HeadFvFresh,arenaWires]
  · norm_num [s2Step10HeadFvBefore,s2Step10HeadGvAfter,s2Step10HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step10HeadFvAfter,s2Step10HeadFvBefore,s2Step10HeadGvAfter,s2Step10HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step10HeadFv_checked : planRowResizeLog s2Step10HeadFvBefore s2Step10HeadFvRow 12 s2Step10HeadFvFresh=
    some (s2Step10HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806],770⟩,growRow 770 s2Step10HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step10HeadFvBefore s2Step10HeadFvAfter s2Step10HeadFvRow 12 s2Step10HeadFvFresh
    s2Step10HeadFv_distinct s2Step10HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step10HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step10HeadFvRow.payload++s2Step10HeadFvFresh) s2Step10HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step11HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<807) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step11HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step11HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩
def s2Step11HeadGFresh : List Wire := [784]
theorem s2Step11HeadG_distinct : (s2Step11HeadGRow.sign::s2Step11HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step11HeadG_owned : (s2Step11HeadGRow.sign::s2Step11HeadGRow.payload).toFinset⊆s2Step11HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step11HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11HeadG_reserved : s2Step11HeadGBefore.reserve s2Step11HeadGFresh.toFinset=some s2Step11HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step11HeadGFresh,arenaWires]
  · norm_num [s2Step11HeadGBefore,s2Step11HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step11HeadGAfter,s2Step11HeadGBefore,s2Step11HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step11HeadG_checked : planRowResizeLog s2Step11HeadGBefore s2Step11HeadGRow 257 s2Step11HeadGFresh=
    some (s2Step11HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩,growRow 769 s2Step11HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step11HeadGBefore s2Step11HeadGAfter s2Step11HeadGRow 257 s2Step11HeadGFresh
    s2Step11HeadG_distinct s2Step11HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step11HeadG_reserved
  have rowEq : WindowRow.mk (s2Step11HeadGRow.payload++s2Step11HeadGFresh) s2Step11HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step11HeadFBefore : Arena := s2Step11HeadGAfter
def s2Step11HeadFAfter : Arena := s2Step10HeadFvAfter
def s2Step11HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step11HeadFFresh : List Wire := [781]
theorem s2Step11HeadF_distinct : (s2Step11HeadFRow.sign::s2Step11HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step11HeadF_owned : (s2Step11HeadFRow.sign::s2Step11HeadFRow.payload).toFinset⊆s2Step11HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step11HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11HeadF_reserved : s2Step11HeadFBefore.reserve s2Step11HeadFFresh.toFinset=some s2Step11HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step11HeadFFresh,arenaWires]
  · norm_num [s2Step11HeadFBefore,s2Step11HeadGAfter,s2Step11HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step11HeadFAfter,s2Step10HeadFvAfter,s2Step11HeadFBefore,s2Step11HeadGAfter,s2Step11HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step11HeadF_checked : planRowResizeLog s2Step11HeadFBefore s2Step11HeadFRow 257 s2Step11HeadFFresh=
    some (s2Step11HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩,growRow 768 s2Step11HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step11HeadFBefore s2Step11HeadFAfter s2Step11HeadFRow 257 s2Step11HeadFFresh
    s2Step11HeadF_distinct s2Step11HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step11HeadF_reserved
  have rowEq : WindowRow.mk (s2Step11HeadFRow.payload++s2Step11HeadFFresh) s2Step11HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step11HeadGvBefore : Arena := s2Step10HeadFvAfter
def s2Step11HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<808) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step11HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 780],771⟩
def s2Step11HeadGvFresh : List Wire := [807]
theorem s2Step11HeadGv_distinct : (s2Step11HeadGvRow.sign::s2Step11HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step11HeadGv_owned : (s2Step11HeadGvRow.sign::s2Step11HeadGvRow.payload).toFinset⊆s2Step11HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step11HeadGvBefore (fun q => (0≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11HeadGv_reserved : s2Step11HeadGvBefore.reserve s2Step11HeadGvFresh.toFinset=some s2Step11HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step11HeadGvFresh,arenaWires]
  · norm_num [s2Step11HeadGvBefore,s2Step10HeadFvAfter,s2Step11HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step11HeadGvAfter,s2Step11HeadGvBefore,s2Step10HeadFvAfter,s2Step11HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step11HeadGv_checked : planRowResizeLog s2Step11HeadGvBefore s2Step11HeadGvRow 13 s2Step11HeadGvFresh=
    some (s2Step11HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 780, 807],771⟩,growRow 771 s2Step11HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step11HeadGvBefore s2Step11HeadGvAfter s2Step11HeadGvRow 13 s2Step11HeadGvFresh
    s2Step11HeadGv_distinct s2Step11HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step11HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step11HeadGvRow.payload++s2Step11HeadGvFresh) s2Step11HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 780, 807],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step11HeadFvBefore : Arena := s2Step11HeadGvAfter
def s2Step11HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step11HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806],770⟩
def s2Step11HeadFvFresh : List Wire := [808]
theorem s2Step11HeadFv_distinct : (s2Step11HeadFvRow.sign::s2Step11HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step11HeadFv_owned : (s2Step11HeadFvRow.sign::s2Step11HeadFvRow.payload).toFinset⊆s2Step11HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step11HeadFvBefore (fun q => (0≤q ∧ q<808) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11HeadFv_reserved : s2Step11HeadFvBefore.reserve s2Step11HeadFvFresh.toFinset=some s2Step11HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step11HeadFvFresh,arenaWires]
  · norm_num [s2Step11HeadFvBefore,s2Step11HeadGvAfter,s2Step11HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step11HeadFvAfter,s2Step11HeadFvBefore,s2Step11HeadGvAfter,s2Step11HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step11HeadFv_checked : planRowResizeLog s2Step11HeadFvBefore s2Step11HeadFvRow 13 s2Step11HeadFvFresh=
    some (s2Step11HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808],770⟩,growRow 770 s2Step11HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step11HeadFvBefore s2Step11HeadFvAfter s2Step11HeadFvRow 13 s2Step11HeadFvFresh
    s2Step11HeadFv_distinct s2Step11HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step11HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step11HeadFvRow.payload++s2Step11HeadFvFresh) s2Step11HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step12HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step12HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step12HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩
def s2Step12HeadGFresh : List Wire := [782]
theorem s2Step12HeadG_distinct : (s2Step12HeadGRow.sign::s2Step12HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step12HeadG_owned : (s2Step12HeadGRow.sign::s2Step12HeadGRow.payload).toFinset⊆s2Step12HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step12HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12HeadG_reserved : s2Step12HeadGBefore.reserve s2Step12HeadGFresh.toFinset=some s2Step12HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step12HeadGFresh,arenaWires]
  · norm_num [s2Step12HeadGBefore,s2Step12HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step12HeadGAfter,s2Step12HeadGBefore,s2Step12HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step12HeadG_checked : planRowResizeLog s2Step12HeadGBefore s2Step12HeadGRow 257 s2Step12HeadGFresh=
    some (s2Step12HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩,growRow 769 s2Step12HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step12HeadGBefore s2Step12HeadGAfter s2Step12HeadGRow 257 s2Step12HeadGFresh
    s2Step12HeadG_distinct s2Step12HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step12HeadG_reserved
  have rowEq : WindowRow.mk (s2Step12HeadGRow.payload++s2Step12HeadGFresh) s2Step12HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step12HeadFBefore : Arena := s2Step12HeadGAfter
def s2Step12HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step12HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step12HeadFFresh : List Wire := [784]
theorem s2Step12HeadF_distinct : (s2Step12HeadFRow.sign::s2Step12HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step12HeadF_owned : (s2Step12HeadFRow.sign::s2Step12HeadFRow.payload).toFinset⊆s2Step12HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step12HeadFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12HeadF_reserved : s2Step12HeadFBefore.reserve s2Step12HeadFFresh.toFinset=some s2Step12HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step12HeadFFresh,arenaWires]
  · norm_num [s2Step12HeadFBefore,s2Step12HeadGAfter,s2Step12HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step12HeadFAfter,s2Step12HeadFBefore,s2Step12HeadGAfter,s2Step12HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step12HeadF_checked : planRowResizeLog s2Step12HeadFBefore s2Step12HeadFRow 257 s2Step12HeadFFresh=
    some (s2Step12HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩,growRow 768 s2Step12HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step12HeadFBefore s2Step12HeadFAfter s2Step12HeadFRow 257 s2Step12HeadFFresh
    s2Step12HeadF_distinct s2Step12HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step12HeadF_reserved
  have rowEq : WindowRow.mk (s2Step12HeadFRow.payload++s2Step12HeadFFresh) s2Step12HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step12HeadGvBefore : Arena := s2Step12HeadFAfter
def s2Step12HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<810) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step12HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 780],771⟩
def s2Step12HeadGvFresh : List Wire := [809]
theorem s2Step12HeadGv_distinct : (s2Step12HeadGvRow.sign::s2Step12HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step12HeadGv_owned : (s2Step12HeadGvRow.sign::s2Step12HeadGvRow.payload).toFinset⊆s2Step12HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step12HeadGvBefore (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12HeadGv_reserved : s2Step12HeadGvBefore.reserve s2Step12HeadGvFresh.toFinset=some s2Step12HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step12HeadGvFresh,arenaWires]
  · norm_num [s2Step12HeadGvBefore,s2Step12HeadFAfter,s2Step12HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step12HeadGvAfter,s2Step12HeadGvBefore,s2Step12HeadFAfter,s2Step12HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step12HeadGv_checked : planRowResizeLog s2Step12HeadGvBefore s2Step12HeadGvRow 14 s2Step12HeadGvFresh=
    some (s2Step12HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 780, 809],771⟩,growRow 771 s2Step12HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step12HeadGvBefore s2Step12HeadGvAfter s2Step12HeadGvRow 14 s2Step12HeadGvFresh
    s2Step12HeadGv_distinct s2Step12HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step12HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step12HeadGvRow.payload++s2Step12HeadGvFresh) s2Step12HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 780, 809],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step12HeadFvBefore : Arena := s2Step12HeadGvAfter
def s2Step12HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step12HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808],770⟩
def s2Step12HeadFvFresh : List Wire := [810]
theorem s2Step12HeadFv_distinct : (s2Step12HeadFvRow.sign::s2Step12HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step12HeadFv_owned : (s2Step12HeadFvRow.sign::s2Step12HeadFvRow.payload).toFinset⊆s2Step12HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step12HeadFvBefore (fun q => (0≤q ∧ q<810) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12HeadFv_reserved : s2Step12HeadFvBefore.reserve s2Step12HeadFvFresh.toFinset=some s2Step12HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step12HeadFvFresh,arenaWires]
  · norm_num [s2Step12HeadFvBefore,s2Step12HeadGvAfter,s2Step12HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step12HeadFvAfter,s2Step12HeadFvBefore,s2Step12HeadGvAfter,s2Step12HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step12HeadFv_checked : planRowResizeLog s2Step12HeadFvBefore s2Step12HeadFvRow 14 s2Step12HeadFvFresh=
    some (s2Step12HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810],770⟩,growRow 770 s2Step12HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step12HeadFvBefore s2Step12HeadFvAfter s2Step12HeadFvRow 14 s2Step12HeadFvFresh
    s2Step12HeadFv_distinct s2Step12HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step12HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step12HeadFvRow.payload++s2Step12HeadFvFresh) s2Step12HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step13HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step13HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step13HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩
def s2Step13HeadGFresh : List Wire := [783]
theorem s2Step13HeadG_distinct : (s2Step13HeadGRow.sign::s2Step13HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step13HeadG_owned : (s2Step13HeadGRow.sign::s2Step13HeadGRow.payload).toFinset⊆s2Step13HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step13HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13HeadG_reserved : s2Step13HeadGBefore.reserve s2Step13HeadGFresh.toFinset=some s2Step13HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step13HeadGFresh,arenaWires]
  · norm_num [s2Step13HeadGBefore,s2Step13HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step13HeadGAfter,s2Step13HeadGBefore,s2Step13HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step13HeadG_checked : planRowResizeLog s2Step13HeadGBefore s2Step13HeadGRow 257 s2Step13HeadGFresh=
    some (s2Step13HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩,growRow 769 s2Step13HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step13HeadGBefore s2Step13HeadGAfter s2Step13HeadGRow 257 s2Step13HeadGFresh
    s2Step13HeadG_distinct s2Step13HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step13HeadG_reserved
  have rowEq : WindowRow.mk (s2Step13HeadGRow.payload++s2Step13HeadGFresh) s2Step13HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step13HeadFBefore : Arena := s2Step13HeadGAfter
def s2Step13HeadFAfter : Arena := s2Step12HeadFvAfter
def s2Step13HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step13HeadFFresh : List Wire := [782]
theorem s2Step13HeadF_distinct : (s2Step13HeadFRow.sign::s2Step13HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step13HeadF_owned : (s2Step13HeadFRow.sign::s2Step13HeadFRow.payload).toFinset⊆s2Step13HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step13HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13HeadF_reserved : s2Step13HeadFBefore.reserve s2Step13HeadFFresh.toFinset=some s2Step13HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step13HeadFFresh,arenaWires]
  · norm_num [s2Step13HeadFBefore,s2Step13HeadGAfter,s2Step13HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step13HeadFAfter,s2Step12HeadFvAfter,s2Step13HeadFBefore,s2Step13HeadGAfter,s2Step13HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step13HeadF_checked : planRowResizeLog s2Step13HeadFBefore s2Step13HeadFRow 257 s2Step13HeadFFresh=
    some (s2Step13HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩,growRow 768 s2Step13HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step13HeadFBefore s2Step13HeadFAfter s2Step13HeadFRow 257 s2Step13HeadFFresh
    s2Step13HeadF_distinct s2Step13HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step13HeadF_reserved
  have rowEq : WindowRow.mk (s2Step13HeadFRow.payload++s2Step13HeadFFresh) s2Step13HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step13HeadGvBefore : Arena := s2Step12HeadFvAfter
def s2Step13HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step13HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 780],771⟩
def s2Step13HeadGvFresh : List Wire := [811]
theorem s2Step13HeadGv_distinct : (s2Step13HeadGvRow.sign::s2Step13HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step13HeadGv_owned : (s2Step13HeadGvRow.sign::s2Step13HeadGvRow.payload).toFinset⊆s2Step13HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step13HeadGvBefore (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13HeadGv_reserved : s2Step13HeadGvBefore.reserve s2Step13HeadGvFresh.toFinset=some s2Step13HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step13HeadGvFresh,arenaWires]
  · norm_num [s2Step13HeadGvBefore,s2Step12HeadFvAfter,s2Step13HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step13HeadGvAfter,s2Step13HeadGvBefore,s2Step12HeadFvAfter,s2Step13HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step13HeadGv_checked : planRowResizeLog s2Step13HeadGvBefore s2Step13HeadGvRow 15 s2Step13HeadGvFresh=
    some (s2Step13HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 780, 811],771⟩,growRow 771 s2Step13HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step13HeadGvBefore s2Step13HeadGvAfter s2Step13HeadGvRow 15 s2Step13HeadGvFresh
    s2Step13HeadGv_distinct s2Step13HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step13HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step13HeadGvRow.payload++s2Step13HeadGvFresh) s2Step13HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 780, 811],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step13HeadFvBefore : Arena := s2Step13HeadGvAfter
def s2Step13HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step13HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810],770⟩
def s2Step13HeadFvFresh : List Wire := [812]
theorem s2Step13HeadFv_distinct : (s2Step13HeadFvRow.sign::s2Step13HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step13HeadFv_owned : (s2Step13HeadFvRow.sign::s2Step13HeadFvRow.payload).toFinset⊆s2Step13HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step13HeadFvBefore (fun q => (0≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13HeadFv_reserved : s2Step13HeadFvBefore.reserve s2Step13HeadFvFresh.toFinset=some s2Step13HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step13HeadFvFresh,arenaWires]
  · norm_num [s2Step13HeadFvBefore,s2Step13HeadGvAfter,s2Step13HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step13HeadFvAfter,s2Step13HeadFvBefore,s2Step13HeadGvAfter,s2Step13HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step13HeadFv_checked : planRowResizeLog s2Step13HeadFvBefore s2Step13HeadFvRow 15 s2Step13HeadFvFresh=
    some (s2Step13HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812],770⟩,growRow 770 s2Step13HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step13HeadFvBefore s2Step13HeadFvAfter s2Step13HeadFvRow 15 s2Step13HeadFvFresh
    s2Step13HeadFv_distinct s2Step13HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step13HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step13HeadFvRow.payload++s2Step13HeadFvFresh) s2Step13HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step14HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step14HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step14HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩
def s2Step14HeadGFresh : List Wire := [781]
theorem s2Step14HeadG_distinct : (s2Step14HeadGRow.sign::s2Step14HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step14HeadG_owned : (s2Step14HeadGRow.sign::s2Step14HeadGRow.payload).toFinset⊆s2Step14HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step14HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14HeadG_reserved : s2Step14HeadGBefore.reserve s2Step14HeadGFresh.toFinset=some s2Step14HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step14HeadGFresh,arenaWires]
  · norm_num [s2Step14HeadGBefore,s2Step14HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step14HeadGAfter,s2Step14HeadGBefore,s2Step14HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step14HeadG_checked : planRowResizeLog s2Step14HeadGBefore s2Step14HeadGRow 257 s2Step14HeadGFresh=
    some (s2Step14HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩,growRow 769 s2Step14HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step14HeadGBefore s2Step14HeadGAfter s2Step14HeadGRow 257 s2Step14HeadGFresh
    s2Step14HeadG_distinct s2Step14HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step14HeadG_reserved
  have rowEq : WindowRow.mk (s2Step14HeadGRow.payload++s2Step14HeadGFresh) s2Step14HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step14HeadFBefore : Arena := s2Step14HeadGAfter
def s2Step14HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step14HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step14HeadFFresh : List Wire := [783]
theorem s2Step14HeadF_distinct : (s2Step14HeadFRow.sign::s2Step14HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step14HeadF_owned : (s2Step14HeadFRow.sign::s2Step14HeadFRow.payload).toFinset⊆s2Step14HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step14HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14HeadF_reserved : s2Step14HeadFBefore.reserve s2Step14HeadFFresh.toFinset=some s2Step14HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step14HeadFFresh,arenaWires]
  · norm_num [s2Step14HeadFBefore,s2Step14HeadGAfter,s2Step14HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step14HeadFAfter,s2Step14HeadFBefore,s2Step14HeadGAfter,s2Step14HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step14HeadF_checked : planRowResizeLog s2Step14HeadFBefore s2Step14HeadFRow 257 s2Step14HeadFFresh=
    some (s2Step14HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩,growRow 768 s2Step14HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step14HeadFBefore s2Step14HeadFAfter s2Step14HeadFRow 257 s2Step14HeadFFresh
    s2Step14HeadF_distinct s2Step14HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step14HeadF_reserved
  have rowEq : WindowRow.mk (s2Step14HeadFRow.payload++s2Step14HeadFFresh) s2Step14HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step14HeadGvBefore : Arena := s2Step14HeadFAfter
def s2Step14HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step14HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 780],771⟩
def s2Step14HeadGvFresh : List Wire := [814]
theorem s2Step14HeadGv_distinct : (s2Step14HeadGvRow.sign::s2Step14HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step14HeadGv_owned : (s2Step14HeadGvRow.sign::s2Step14HeadGvRow.payload).toFinset⊆s2Step14HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step14HeadGvBefore (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14HeadGv_reserved : s2Step14HeadGvBefore.reserve s2Step14HeadGvFresh.toFinset=some s2Step14HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step14HeadGvFresh,arenaWires]
  · norm_num [s2Step14HeadGvBefore,s2Step14HeadFAfter,s2Step14HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step14HeadGvAfter,s2Step14HeadGvBefore,s2Step14HeadFAfter,s2Step14HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step14HeadGv_checked : planRowResizeLog s2Step14HeadGvBefore s2Step14HeadGvRow 16 s2Step14HeadGvFresh=
    some (s2Step14HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 780, 814],771⟩,growRow 771 s2Step14HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step14HeadGvBefore s2Step14HeadGvAfter s2Step14HeadGvRow 16 s2Step14HeadGvFresh
    s2Step14HeadGv_distinct s2Step14HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step14HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step14HeadGvRow.payload++s2Step14HeadGvFresh) s2Step14HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 780, 814],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step14HeadFvBefore : Arena := s2Step14HeadGvAfter
def s2Step14HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step14HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812],770⟩
def s2Step14HeadFvFresh : List Wire := [815]
theorem s2Step14HeadFv_distinct : (s2Step14HeadFvRow.sign::s2Step14HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step14HeadFv_owned : (s2Step14HeadFvRow.sign::s2Step14HeadFvRow.payload).toFinset⊆s2Step14HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step14HeadFvBefore (fun q => (0≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14HeadFv_reserved : s2Step14HeadFvBefore.reserve s2Step14HeadFvFresh.toFinset=some s2Step14HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step14HeadFvFresh,arenaWires]
  · norm_num [s2Step14HeadFvBefore,s2Step14HeadGvAfter,s2Step14HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step14HeadFvAfter,s2Step14HeadFvBefore,s2Step14HeadGvAfter,s2Step14HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step14HeadFv_checked : planRowResizeLog s2Step14HeadFvBefore s2Step14HeadFvRow 16 s2Step14HeadFvFresh=
    some (s2Step14HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815],770⟩,growRow 770 s2Step14HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step14HeadFvBefore s2Step14HeadFvAfter s2Step14HeadFvRow 16 s2Step14HeadFvFresh
    s2Step14HeadFv_distinct s2Step14HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step14HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step14HeadFvRow.payload++s2Step14HeadFvFresh) s2Step14HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step15HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step15HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step15HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩
def s2Step15HeadGFresh : List Wire := [784]
theorem s2Step15HeadG_distinct : (s2Step15HeadGRow.sign::s2Step15HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step15HeadG_owned : (s2Step15HeadGRow.sign::s2Step15HeadGRow.payload).toFinset⊆s2Step15HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step15HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15HeadG_reserved : s2Step15HeadGBefore.reserve s2Step15HeadGFresh.toFinset=some s2Step15HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step15HeadGFresh,arenaWires]
  · norm_num [s2Step15HeadGBefore,s2Step15HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step15HeadGAfter,s2Step15HeadGBefore,s2Step15HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step15HeadG_checked : planRowResizeLog s2Step15HeadGBefore s2Step15HeadGRow 257 s2Step15HeadGFresh=
    some (s2Step15HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩,growRow 769 s2Step15HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step15HeadGBefore s2Step15HeadGAfter s2Step15HeadGRow 257 s2Step15HeadGFresh
    s2Step15HeadG_distinct s2Step15HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step15HeadG_reserved
  have rowEq : WindowRow.mk (s2Step15HeadGRow.payload++s2Step15HeadGFresh) s2Step15HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step15HeadFBefore : Arena := s2Step15HeadGAfter
def s2Step15HeadFAfter : Arena := s2Step14HeadFvAfter
def s2Step15HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step15HeadFFresh : List Wire := [781]
theorem s2Step15HeadF_distinct : (s2Step15HeadFRow.sign::s2Step15HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step15HeadF_owned : (s2Step15HeadFRow.sign::s2Step15HeadFRow.payload).toFinset⊆s2Step15HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step15HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15HeadF_reserved : s2Step15HeadFBefore.reserve s2Step15HeadFFresh.toFinset=some s2Step15HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step15HeadFFresh,arenaWires]
  · norm_num [s2Step15HeadFBefore,s2Step15HeadGAfter,s2Step15HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step15HeadFAfter,s2Step14HeadFvAfter,s2Step15HeadFBefore,s2Step15HeadGAfter,s2Step15HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step15HeadF_checked : planRowResizeLog s2Step15HeadFBefore s2Step15HeadFRow 257 s2Step15HeadFFresh=
    some (s2Step15HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩,growRow 768 s2Step15HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step15HeadFBefore s2Step15HeadFAfter s2Step15HeadFRow 257 s2Step15HeadFFresh
    s2Step15HeadF_distinct s2Step15HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step15HeadF_reserved
  have rowEq : WindowRow.mk (s2Step15HeadFRow.payload++s2Step15HeadFFresh) s2Step15HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step15HeadGvBefore : Arena := s2Step14HeadFvAfter
def s2Step15HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step15HeadGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 780],771⟩
def s2Step15HeadGvFresh : List Wire := [816]
theorem s2Step15HeadGv_distinct : (s2Step15HeadGvRow.sign::s2Step15HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step15HeadGv_owned : (s2Step15HeadGvRow.sign::s2Step15HeadGvRow.payload).toFinset⊆s2Step15HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step15HeadGvBefore (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15HeadGv_reserved : s2Step15HeadGvBefore.reserve s2Step15HeadGvFresh.toFinset=some s2Step15HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step15HeadGvFresh,arenaWires]
  · norm_num [s2Step15HeadGvBefore,s2Step14HeadFvAfter,s2Step15HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step15HeadGvAfter,s2Step15HeadGvBefore,s2Step14HeadFvAfter,s2Step15HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step15HeadGv_checked : planRowResizeLog s2Step15HeadGvBefore s2Step15HeadGvRow 17 s2Step15HeadGvFresh=
    some (s2Step15HeadGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 780, 816],771⟩,growRow 771 s2Step15HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step15HeadGvBefore s2Step15HeadGvAfter s2Step15HeadGvRow 17 s2Step15HeadGvFresh
    s2Step15HeadGv_distinct s2Step15HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step15HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step15HeadGvRow.payload++s2Step15HeadGvFresh) s2Step15HeadGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 780, 816],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step15HeadFvBefore : Arena := s2Step15HeadGvAfter
def s2Step15HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step15HeadFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815],770⟩
def s2Step15HeadFvFresh : List Wire := [817]
theorem s2Step15HeadFv_distinct : (s2Step15HeadFvRow.sign::s2Step15HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step15HeadFv_owned : (s2Step15HeadFvRow.sign::s2Step15HeadFvRow.payload).toFinset⊆s2Step15HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step15HeadFvBefore (fun q => (0≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15HeadFv_reserved : s2Step15HeadFvBefore.reserve s2Step15HeadFvFresh.toFinset=some s2Step15HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step15HeadFvFresh,arenaWires]
  · norm_num [s2Step15HeadFvBefore,s2Step15HeadGvAfter,s2Step15HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step15HeadFvAfter,s2Step15HeadFvBefore,s2Step15HeadGvAfter,s2Step15HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step15HeadFv_checked : planRowResizeLog s2Step15HeadFvBefore s2Step15HeadFvRow 17 s2Step15HeadFvFresh=
    some (s2Step15HeadFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817],770⟩,growRow 770 s2Step15HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step15HeadFvBefore s2Step15HeadFvAfter s2Step15HeadFvRow 17 s2Step15HeadFvFresh
    s2Step15HeadFv_distinct s2Step15HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step15HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step15HeadFvRow.payload++s2Step15HeadFvFresh) s2Step15HeadFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

end ECDSAAdd.Arithmetic.Paper935
