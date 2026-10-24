import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk1

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step32HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step32HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step32HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779, 786],769⟩
def s2Step32HeadGFresh : List Wire := [780]
theorem s2Step32HeadG_distinct : (s2Step32HeadGRow.sign::s2Step32HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step32HeadG_owned : (s2Step32HeadGRow.sign::s2Step32HeadGRow.payload).toFinset⊆s2Step32HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step32HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32HeadG_reserved : s2Step32HeadGBefore.reserve s2Step32HeadGFresh.toFinset=some s2Step32HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step32HeadGFresh,arenaWires]
  · norm_num [s2Step32HeadGBefore,s2Step32HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step32HeadGAfter,s2Step32HeadGBefore,s2Step32HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step32HeadG_checked : planRowResizeLog s2Step32HeadGBefore s2Step32HeadGRow 254 s2Step32HeadGFresh=
    some (s2Step32HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779, 786, 780],769⟩,growRow 769 s2Step32HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step32HeadGBefore s2Step32HeadGAfter s2Step32HeadGRow 254 s2Step32HeadGFresh
    s2Step32HeadG_distinct s2Step32HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step32HeadG_reserved
  have rowEq : WindowRow.mk (s2Step32HeadGRow.payload++s2Step32HeadGFresh) s2Step32HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779, 786, 780],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step32HeadFBefore : Arena := s2Step32HeadGAfter
def s2Step32HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step32HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764],768⟩
def s2Step32HeadFFresh : List Wire := [781]
theorem s2Step32HeadF_distinct : (s2Step32HeadFRow.sign::s2Step32HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step32HeadF_owned : (s2Step32HeadFRow.sign::s2Step32HeadFRow.payload).toFinset⊆s2Step32HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step32HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32HeadF_reserved : s2Step32HeadFBefore.reserve s2Step32HeadFFresh.toFinset=some s2Step32HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step32HeadFFresh,arenaWires]
  · norm_num [s2Step32HeadFBefore,s2Step32HeadGAfter,s2Step32HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step32HeadFAfter,s2Step32HeadFBefore,s2Step32HeadGAfter,s2Step32HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step32HeadF_checked : planRowResizeLog s2Step32HeadFBefore s2Step32HeadFRow 254 s2Step32HeadFFresh=
    some (s2Step32HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 781],768⟩,growRow 768 s2Step32HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step32HeadFBefore s2Step32HeadFAfter s2Step32HeadFRow 254 s2Step32HeadFFresh
    s2Step32HeadF_distinct s2Step32HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step32HeadF_reserved
  have rowEq : WindowRow.mk (s2Step32HeadFRow.payload++s2Step32HeadFFresh) s2Step32HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step32HeadGvBefore : Arena := s2Step32HeadFAfter
def s2Step32HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step32HeadGvRow : WindowRow := ⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 791],771⟩
def s2Step32HeadGvFresh : List Wire := [787]
theorem s2Step32HeadGv_distinct : (s2Step32HeadGvRow.sign::s2Step32HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step32HeadGv_owned : (s2Step32HeadGvRow.sign::s2Step32HeadGvRow.payload).toFinset⊆s2Step32HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step32HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32HeadGv_reserved : s2Step32HeadGvBefore.reserve s2Step32HeadGvFresh.toFinset=some s2Step32HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step32HeadGvFresh,arenaWires]
  · norm_num [s2Step32HeadGvBefore,s2Step32HeadFAfter,s2Step32HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step32HeadGvAfter,s2Step32HeadGvBefore,s2Step32HeadFAfter,s2Step32HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step32HeadGv_checked : planRowResizeLog s2Step32HeadGvBefore s2Step32HeadGvRow 30 s2Step32HeadGvFresh=
    some (s2Step32HeadGvAfter,⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 791, 787],771⟩,growRow 771 s2Step32HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step32HeadGvBefore s2Step32HeadGvAfter s2Step32HeadGvRow 30 s2Step32HeadGvFresh
    s2Step32HeadGv_distinct s2Step32HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step32HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step32HeadGvRow.payload++s2Step32HeadGvFresh) s2Step32HeadGvRow.sign=⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 791, 787],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step32HeadFvBefore : Arena := s2Step32HeadGvAfter
def s2Step32HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step32HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩
def s2Step32HeadFvFresh : List Wire := [785]
theorem s2Step32HeadFv_distinct : (s2Step32HeadFvRow.sign::s2Step32HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step32HeadFv_owned : (s2Step32HeadFvRow.sign::s2Step32HeadFvRow.payload).toFinset⊆s2Step32HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step32HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32HeadFv_reserved : s2Step32HeadFvBefore.reserve s2Step32HeadFvFresh.toFinset=some s2Step32HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step32HeadFvFresh,arenaWires]
  · norm_num [s2Step32HeadFvBefore,s2Step32HeadGvAfter,s2Step32HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step32HeadFvAfter,s2Step32HeadFvBefore,s2Step32HeadGvAfter,s2Step32HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step32HeadFv_checked : planRowResizeLog s2Step32HeadFvBefore s2Step32HeadFvRow 30 s2Step32HeadFvFresh=
    some (s2Step32HeadFvAfter,⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 785],770⟩,growRow 770 s2Step32HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step32HeadFvBefore s2Step32HeadFvAfter s2Step32HeadFvRow 30 s2Step32HeadFvFresh
    s2Step32HeadFv_distinct s2Step32HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step32HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step32HeadFvRow.payload++s2Step32HeadFvFresh) s2Step32HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step33HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step33HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step33HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779],769⟩
def s2Step33HeadGFresh : List Wire := [791]
theorem s2Step33HeadG_distinct : (s2Step33HeadGRow.sign::s2Step33HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step33HeadG_owned : (s2Step33HeadGRow.sign::s2Step33HeadGRow.payload).toFinset⊆s2Step33HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step33HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33HeadG_reserved : s2Step33HeadGBefore.reserve s2Step33HeadGFresh.toFinset=some s2Step33HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step33HeadGFresh,arenaWires]
  · norm_num [s2Step33HeadGBefore,s2Step33HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step33HeadGAfter,s2Step33HeadGBefore,s2Step33HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step33HeadG_checked : planRowResizeLog s2Step33HeadGBefore s2Step33HeadGRow 253 s2Step33HeadGFresh=
    some (s2Step33HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779, 791],769⟩,growRow 769 s2Step33HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step33HeadGBefore s2Step33HeadGAfter s2Step33HeadGRow 253 s2Step33HeadGFresh
    s2Step33HeadG_distinct s2Step33HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step33HeadG_reserved
  have rowEq : WindowRow.mk (s2Step33HeadGRow.payload++s2Step33HeadGFresh) s2Step33HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779, 791],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step33HeadFBefore : Arena := s2Step33HeadGAfter
def s2Step33HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step33HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763],768⟩
def s2Step33HeadFFresh : List Wire := [787]
theorem s2Step33HeadF_distinct : (s2Step33HeadFRow.sign::s2Step33HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step33HeadF_owned : (s2Step33HeadFRow.sign::s2Step33HeadFRow.payload).toFinset⊆s2Step33HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step33HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33HeadF_reserved : s2Step33HeadFBefore.reserve s2Step33HeadFFresh.toFinset=some s2Step33HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step33HeadFFresh,arenaWires]
  · norm_num [s2Step33HeadFBefore,s2Step33HeadGAfter,s2Step33HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step33HeadFAfter,s2Step33HeadFBefore,s2Step33HeadGAfter,s2Step33HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step33HeadF_checked : planRowResizeLog s2Step33HeadFBefore s2Step33HeadFRow 253 s2Step33HeadFFresh=
    some (s2Step33HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 787],768⟩,growRow 768 s2Step33HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step33HeadFBefore s2Step33HeadFAfter s2Step33HeadFRow 253 s2Step33HeadFFresh
    s2Step33HeadF_distinct s2Step33HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step33HeadF_reserved
  have rowEq : WindowRow.mk (s2Step33HeadFRow.payload++s2Step33HeadFFresh) s2Step33HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 787],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step33HeadGvBefore : Arena := s2Step33HeadFAfter
def s2Step33HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step33HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839],771⟩
def s2Step33HeadGvFresh : List Wire := [785]
theorem s2Step33HeadGv_distinct : (s2Step33HeadGvRow.sign::s2Step33HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step33HeadGv_owned : (s2Step33HeadGvRow.sign::s2Step33HeadGvRow.payload).toFinset⊆s2Step33HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step33HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33HeadGv_reserved : s2Step33HeadGvBefore.reserve s2Step33HeadGvFresh.toFinset=some s2Step33HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step33HeadGvFresh,arenaWires]
  · norm_num [s2Step33HeadGvBefore,s2Step33HeadFAfter,s2Step33HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step33HeadGvAfter,s2Step33HeadGvBefore,s2Step33HeadFAfter,s2Step33HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step33HeadGv_checked : planRowResizeLog s2Step33HeadGvBefore s2Step33HeadGvRow 30 s2Step33HeadGvFresh=
    some (s2Step33HeadGvAfter,⟨[767, 766, 765, 764, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 785],771⟩,growRow 771 s2Step33HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step33HeadGvBefore s2Step33HeadGvAfter s2Step33HeadGvRow 30 s2Step33HeadGvFresh
    s2Step33HeadGv_distinct s2Step33HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step33HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step33HeadGvRow.payload++s2Step33HeadGvFresh) s2Step33HeadGvRow.sign=⟨[767, 766, 765, 764, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 785],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step33HeadFvBefore : Arena := s2Step33HeadGvAfter
def s2Step33HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step33HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩
def s2Step33HeadFvFresh : List Wire := [781]
theorem s2Step33HeadFv_distinct : (s2Step33HeadFvRow.sign::s2Step33HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step33HeadFv_owned : (s2Step33HeadFvRow.sign::s2Step33HeadFvRow.payload).toFinset⊆s2Step33HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step33HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33HeadFv_reserved : s2Step33HeadFvBefore.reserve s2Step33HeadFvFresh.toFinset=some s2Step33HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step33HeadFvFresh,arenaWires]
  · norm_num [s2Step33HeadFvBefore,s2Step33HeadGvAfter,s2Step33HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step33HeadFvAfter,s2Step33HeadFvBefore,s2Step33HeadGvAfter,s2Step33HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step33HeadFv_checked : planRowResizeLog s2Step33HeadFvBefore s2Step33HeadFvRow 30 s2Step33HeadFvFresh=
    some (s2Step33HeadFvAfter,⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781],770⟩,growRow 770 s2Step33HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step33HeadFvBefore s2Step33HeadFvAfter s2Step33HeadFvRow 30 s2Step33HeadFvFresh
    s2Step33HeadFv_distinct s2Step33HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step33HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step33HeadFvRow.payload++s2Step33HeadFvFresh) s2Step33HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step34HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step34HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step34HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250],769⟩
def s2Step34HeadGFresh : List Wire := [785]
theorem s2Step34HeadG_distinct : (s2Step34HeadGRow.sign::s2Step34HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step34HeadG_owned : (s2Step34HeadGRow.sign::s2Step34HeadGRow.payload).toFinset⊆s2Step34HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step34HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34HeadG_reserved : s2Step34HeadGBefore.reserve s2Step34HeadGFresh.toFinset=some s2Step34HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step34HeadGFresh,arenaWires]
  · norm_num [s2Step34HeadGBefore,s2Step34HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step34HeadGAfter,s2Step34HeadGBefore,s2Step34HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step34HeadG_checked : planRowResizeLog s2Step34HeadGBefore s2Step34HeadGRow 252 s2Step34HeadGFresh=
    some (s2Step34HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 785],769⟩,growRow 769 s2Step34HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step34HeadGBefore s2Step34HeadGAfter s2Step34HeadGRow 252 s2Step34HeadGFresh
    s2Step34HeadG_distinct s2Step34HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step34HeadG_reserved
  have rowEq : WindowRow.mk (s2Step34HeadGRow.payload++s2Step34HeadGFresh) s2Step34HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 785],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step34HeadFBefore : Arena := s2Step34HeadGAfter
def s2Step34HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step34HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762],768⟩
def s2Step34HeadFFresh : List Wire := [787]
theorem s2Step34HeadF_distinct : (s2Step34HeadFRow.sign::s2Step34HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step34HeadF_owned : (s2Step34HeadFRow.sign::s2Step34HeadFRow.payload).toFinset⊆s2Step34HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step34HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34HeadF_reserved : s2Step34HeadFBefore.reserve s2Step34HeadFFresh.toFinset=some s2Step34HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step34HeadFFresh,arenaWires]
  · norm_num [s2Step34HeadFBefore,s2Step34HeadGAfter,s2Step34HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step34HeadFAfter,s2Step34HeadFBefore,s2Step34HeadGAfter,s2Step34HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step34HeadF_checked : planRowResizeLog s2Step34HeadFBefore s2Step34HeadFRow 252 s2Step34HeadFFresh=
    some (s2Step34HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 787],768⟩,growRow 768 s2Step34HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step34HeadFBefore s2Step34HeadFAfter s2Step34HeadFRow 252 s2Step34HeadFFresh
    s2Step34HeadF_distinct s2Step34HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step34HeadF_reserved
  have rowEq : WindowRow.mk (s2Step34HeadFRow.payload++s2Step34HeadFFresh) s2Step34HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 787],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step34HeadGvBefore : Arena := s2Step34HeadFAfter
def s2Step34HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step34HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788],771⟩
def s2Step34HeadGvFresh : List Wire := [779]
theorem s2Step34HeadGv_distinct : (s2Step34HeadGvRow.sign::s2Step34HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step34HeadGv_owned : (s2Step34HeadGvRow.sign::s2Step34HeadGvRow.payload).toFinset⊆s2Step34HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step34HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34HeadGv_reserved : s2Step34HeadGvBefore.reserve s2Step34HeadGvFresh.toFinset=some s2Step34HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step34HeadGvFresh,arenaWires]
  · norm_num [s2Step34HeadGvBefore,s2Step34HeadFAfter,s2Step34HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step34HeadGvAfter,s2Step34HeadGvBefore,s2Step34HeadFAfter,s2Step34HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step34HeadGv_checked : planRowResizeLog s2Step34HeadGvBefore s2Step34HeadGvRow 31 s2Step34HeadGvFresh=
    some (s2Step34HeadGvAfter,⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 779],771⟩,growRow 771 s2Step34HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step34HeadGvBefore s2Step34HeadGvAfter s2Step34HeadGvRow 31 s2Step34HeadGvFresh
    s2Step34HeadGv_distinct s2Step34HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step34HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step34HeadGvRow.payload++s2Step34HeadGvFresh) s2Step34HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 779],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step34HeadFvBefore : Arena := s2Step34HeadGvAfter
def s2Step34HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step34HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781],770⟩
def s2Step34HeadFvFresh : List Wire := [791]
theorem s2Step34HeadFv_distinct : (s2Step34HeadFvRow.sign::s2Step34HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step34HeadFv_owned : (s2Step34HeadFvRow.sign::s2Step34HeadFvRow.payload).toFinset⊆s2Step34HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step34HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34HeadFv_reserved : s2Step34HeadFvBefore.reserve s2Step34HeadFvFresh.toFinset=some s2Step34HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step34HeadFvFresh,arenaWires]
  · norm_num [s2Step34HeadFvBefore,s2Step34HeadGvAfter,s2Step34HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step34HeadFvAfter,s2Step34HeadFvBefore,s2Step34HeadGvAfter,s2Step34HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step34HeadFv_checked : planRowResizeLog s2Step34HeadFvBefore s2Step34HeadFvRow 31 s2Step34HeadFvFresh=
    some (s2Step34HeadFvAfter,⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 791],770⟩,growRow 770 s2Step34HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step34HeadFvBefore s2Step34HeadFvAfter s2Step34HeadFvRow 31 s2Step34HeadFvFresh
    s2Step34HeadFv_distinct s2Step34HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step34HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step34HeadFvRow.payload++s2Step34HeadFvFresh) s2Step34HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step35HeadGBefore : Arena := s2Step34HeadGBefore
def s2Step35HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step35HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790],769⟩
def s2Step35HeadGFresh : List Wire := [779]
theorem s2Step35HeadG_distinct : (s2Step35HeadGRow.sign::s2Step35HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step35HeadG_owned : (s2Step35HeadGRow.sign::s2Step35HeadGRow.payload).toFinset⊆s2Step35HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step35HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35HeadG_reserved : s2Step35HeadGBefore.reserve s2Step35HeadGFresh.toFinset=some s2Step35HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step35HeadGFresh,arenaWires]
  · norm_num [s2Step35HeadGBefore,s2Step34HeadGBefore,s2Step35HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step35HeadGAfter,s2Step35HeadGBefore,s2Step34HeadGBefore,s2Step35HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step35HeadG_checked : planRowResizeLog s2Step35HeadGBefore s2Step35HeadGRow 252 s2Step35HeadGFresh=
    some (s2Step35HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790, 779],769⟩,growRow 769 s2Step35HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step35HeadGBefore s2Step35HeadGAfter s2Step35HeadGRow 252 s2Step35HeadGFresh
    s2Step35HeadG_distinct s2Step35HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step35HeadG_reserved
  have rowEq : WindowRow.mk (s2Step35HeadGRow.payload++s2Step35HeadGFresh) s2Step35HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790, 779],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step35HeadFBefore : Arena := s2Step35HeadGAfter
def s2Step35HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step35HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762],768⟩
def s2Step35HeadFFresh : List Wire := [791]
theorem s2Step35HeadF_distinct : (s2Step35HeadFRow.sign::s2Step35HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step35HeadF_owned : (s2Step35HeadFRow.sign::s2Step35HeadFRow.payload).toFinset⊆s2Step35HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step35HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35HeadF_reserved : s2Step35HeadFBefore.reserve s2Step35HeadFFresh.toFinset=some s2Step35HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step35HeadFFresh,arenaWires]
  · norm_num [s2Step35HeadFBefore,s2Step35HeadGAfter,s2Step35HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step35HeadFAfter,s2Step35HeadFBefore,s2Step35HeadGAfter,s2Step35HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step35HeadF_checked : planRowResizeLog s2Step35HeadFBefore s2Step35HeadFRow 252 s2Step35HeadFFresh=
    some (s2Step35HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 791],768⟩,growRow 768 s2Step35HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step35HeadFBefore s2Step35HeadFAfter s2Step35HeadFRow 252 s2Step35HeadFFresh
    s2Step35HeadF_distinct s2Step35HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step35HeadF_reserved
  have rowEq : WindowRow.mk (s2Step35HeadFRow.payload++s2Step35HeadFFresh) s2Step35HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 791],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step35HeadGvBefore : Arena := s2Step35HeadFAfter
def s2Step35HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step35HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788],771⟩
def s2Step35HeadGvFresh : List Wire := [787]
theorem s2Step35HeadGv_distinct : (s2Step35HeadGvRow.sign::s2Step35HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step35HeadGv_owned : (s2Step35HeadGvRow.sign::s2Step35HeadGvRow.payload).toFinset⊆s2Step35HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step35HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35HeadGv_reserved : s2Step35HeadGvBefore.reserve s2Step35HeadGvFresh.toFinset=some s2Step35HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step35HeadGvFresh,arenaWires]
  · norm_num [s2Step35HeadGvBefore,s2Step35HeadFAfter,s2Step35HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step35HeadGvAfter,s2Step35HeadGvBefore,s2Step35HeadFAfter,s2Step35HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step35HeadGv_checked : planRowResizeLog s2Step35HeadGvBefore s2Step35HeadGvRow 31 s2Step35HeadGvFresh=
    some (s2Step35HeadGvAfter,⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 787],771⟩,growRow 771 s2Step35HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step35HeadGvBefore s2Step35HeadGvAfter s2Step35HeadGvRow 31 s2Step35HeadGvFresh
    s2Step35HeadGv_distinct s2Step35HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step35HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step35HeadGvRow.payload++s2Step35HeadGvFresh) s2Step35HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 787],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step35HeadFvBefore : Arena := s2Step35HeadGvAfter
def s2Step35HeadFvAfter : Arena := s2Step34HeadFvAfter
def s2Step35HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781],770⟩
def s2Step35HeadFvFresh : List Wire := [785]
theorem s2Step35HeadFv_distinct : (s2Step35HeadFvRow.sign::s2Step35HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step35HeadFv_owned : (s2Step35HeadFvRow.sign::s2Step35HeadFvRow.payload).toFinset⊆s2Step35HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step35HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35HeadFv_reserved : s2Step35HeadFvBefore.reserve s2Step35HeadFvFresh.toFinset=some s2Step35HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step35HeadFvFresh,arenaWires]
  · norm_num [s2Step35HeadFvBefore,s2Step35HeadGvAfter,s2Step35HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step35HeadFvAfter,s2Step34HeadFvAfter,s2Step35HeadFvBefore,s2Step35HeadGvAfter,s2Step35HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step35HeadFv_checked : planRowResizeLog s2Step35HeadFvBefore s2Step35HeadFvRow 31 s2Step35HeadFvFresh=
    some (s2Step35HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785],770⟩,growRow 770 s2Step35HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step35HeadFvBefore s2Step35HeadFvAfter s2Step35HeadFvRow 31 s2Step35HeadFvFresh
    s2Step35HeadFv_distinct s2Step35HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step35HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step35HeadFvRow.payload++s2Step35HeadFvFresh) s2Step35HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step36HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step36HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step36HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790],769⟩
def s2Step36HeadGFresh : List Wire := [791]
theorem s2Step36HeadG_distinct : (s2Step36HeadGRow.sign::s2Step36HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step36HeadG_owned : (s2Step36HeadGRow.sign::s2Step36HeadGRow.payload).toFinset⊆s2Step36HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step36HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36HeadG_reserved : s2Step36HeadGBefore.reserve s2Step36HeadGFresh.toFinset=some s2Step36HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step36HeadGFresh,arenaWires]
  · norm_num [s2Step36HeadGBefore,s2Step36HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step36HeadGAfter,s2Step36HeadGBefore,s2Step36HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step36HeadG_checked : planRowResizeLog s2Step36HeadGBefore s2Step36HeadGRow 252 s2Step36HeadGFresh=
    some (s2Step36HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790, 791],769⟩,growRow 769 s2Step36HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step36HeadGBefore s2Step36HeadGAfter s2Step36HeadGRow 252 s2Step36HeadGFresh
    s2Step36HeadG_distinct s2Step36HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step36HeadG_reserved
  have rowEq : WindowRow.mk (s2Step36HeadGRow.payload++s2Step36HeadGFresh) s2Step36HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790, 791],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step36HeadFBefore : Arena := s2Step36HeadGAfter
def s2Step36HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step36HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 793],768⟩
def s2Step36HeadFFresh : List Wire := [779]
theorem s2Step36HeadF_distinct : (s2Step36HeadFRow.sign::s2Step36HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step36HeadF_owned : (s2Step36HeadFRow.sign::s2Step36HeadFRow.payload).toFinset⊆s2Step36HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step36HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36HeadF_reserved : s2Step36HeadFBefore.reserve s2Step36HeadFFresh.toFinset=some s2Step36HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step36HeadFFresh,arenaWires]
  · norm_num [s2Step36HeadFBefore,s2Step36HeadGAfter,s2Step36HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step36HeadFAfter,s2Step36HeadFBefore,s2Step36HeadGAfter,s2Step36HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step36HeadF_checked : planRowResizeLog s2Step36HeadFBefore s2Step36HeadFRow 252 s2Step36HeadFFresh=
    some (s2Step36HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 793, 779],768⟩,growRow 768 s2Step36HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step36HeadFBefore s2Step36HeadFAfter s2Step36HeadFRow 252 s2Step36HeadFFresh
    s2Step36HeadF_distinct s2Step36HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step36HeadF_reserved
  have rowEq : WindowRow.mk (s2Step36HeadFRow.payload++s2Step36HeadFFresh) s2Step36HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 793, 779],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step36HeadGvBefore : Arena := s2Step36HeadFAfter
def s2Step36HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step36HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789],771⟩
def s2Step36HeadGvFresh : List Wire := [786]
theorem s2Step36HeadGv_distinct : (s2Step36HeadGvRow.sign::s2Step36HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step36HeadGv_owned : (s2Step36HeadGvRow.sign::s2Step36HeadGvRow.payload).toFinset⊆s2Step36HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step36HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36HeadGv_reserved : s2Step36HeadGvBefore.reserve s2Step36HeadGvFresh.toFinset=some s2Step36HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step36HeadGvFresh,arenaWires]
  · norm_num [s2Step36HeadGvBefore,s2Step36HeadFAfter,s2Step36HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step36HeadGvAfter,s2Step36HeadGvBefore,s2Step36HeadFAfter,s2Step36HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step36HeadGv_checked : planRowResizeLog s2Step36HeadGvBefore s2Step36HeadGvRow 32 s2Step36HeadGvFresh=
    some (s2Step36HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 786],771⟩,growRow 771 s2Step36HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step36HeadGvBefore s2Step36HeadGvAfter s2Step36HeadGvRow 32 s2Step36HeadGvFresh
    s2Step36HeadGv_distinct s2Step36HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step36HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step36HeadGvRow.payload++s2Step36HeadGvFresh) s2Step36HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 786],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step36HeadFvBefore : Arena := s2Step36HeadGvAfter
def s2Step36HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step36HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785],770⟩
def s2Step36HeadFvFresh : List Wire := [780]
theorem s2Step36HeadFv_distinct : (s2Step36HeadFvRow.sign::s2Step36HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step36HeadFv_owned : (s2Step36HeadFvRow.sign::s2Step36HeadFvRow.payload).toFinset⊆s2Step36HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step36HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36HeadFv_reserved : s2Step36HeadFvBefore.reserve s2Step36HeadFvFresh.toFinset=some s2Step36HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step36HeadFvFresh,arenaWires]
  · norm_num [s2Step36HeadFvBefore,s2Step36HeadGvAfter,s2Step36HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step36HeadFvAfter,s2Step36HeadFvBefore,s2Step36HeadGvAfter,s2Step36HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step36HeadFv_checked : planRowResizeLog s2Step36HeadFvBefore s2Step36HeadFvRow 32 s2Step36HeadFvFresh=
    some (s2Step36HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 780],770⟩,growRow 770 s2Step36HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step36HeadFvBefore s2Step36HeadFvAfter s2Step36HeadFvRow 32 s2Step36HeadFvFresh
    s2Step36HeadFv_distinct s2Step36HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step36HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step36HeadFvRow.payload++s2Step36HeadFvFresh) s2Step36HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 780],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step37HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step37HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step37HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249],769⟩
def s2Step37HeadGFresh : List Wire := [786]
theorem s2Step37HeadG_distinct : (s2Step37HeadGRow.sign::s2Step37HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step37HeadG_owned : (s2Step37HeadGRow.sign::s2Step37HeadGRow.payload).toFinset⊆s2Step37HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step37HeadGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37HeadG_reserved : s2Step37HeadGBefore.reserve s2Step37HeadGFresh.toFinset=some s2Step37HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step37HeadGFresh,arenaWires]
  · norm_num [s2Step37HeadGBefore,s2Step37HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step37HeadGAfter,s2Step37HeadGBefore,s2Step37HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step37HeadG_checked : planRowResizeLog s2Step37HeadGBefore s2Step37HeadGRow 251 s2Step37HeadGFresh=
    some (s2Step37HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 786],769⟩,growRow 769 s2Step37HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step37HeadGBefore s2Step37HeadGAfter s2Step37HeadGRow 251 s2Step37HeadGFresh
    s2Step37HeadG_distinct s2Step37HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step37HeadG_reserved
  have rowEq : WindowRow.mk (s2Step37HeadGRow.payload++s2Step37HeadGFresh) s2Step37HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 786],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step37HeadFBefore : Arena := s2Step37HeadGAfter
def s2Step37HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step37HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761],768⟩
def s2Step37HeadFFresh : List Wire := [780]
theorem s2Step37HeadF_distinct : (s2Step37HeadFRow.sign::s2Step37HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step37HeadF_owned : (s2Step37HeadFRow.sign::s2Step37HeadFRow.payload).toFinset⊆s2Step37HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step37HeadFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37HeadF_reserved : s2Step37HeadFBefore.reserve s2Step37HeadFFresh.toFinset=some s2Step37HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step37HeadFFresh,arenaWires]
  · norm_num [s2Step37HeadFBefore,s2Step37HeadGAfter,s2Step37HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step37HeadFAfter,s2Step37HeadFBefore,s2Step37HeadGAfter,s2Step37HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step37HeadF_checked : planRowResizeLog s2Step37HeadFBefore s2Step37HeadFRow 251 s2Step37HeadFFresh=
    some (s2Step37HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 780],768⟩,growRow 768 s2Step37HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step37HeadFBefore s2Step37HeadFAfter s2Step37HeadFRow 251 s2Step37HeadFFresh
    s2Step37HeadF_distinct s2Step37HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step37HeadF_reserved
  have rowEq : WindowRow.mk (s2Step37HeadFRow.payload++s2Step37HeadFFresh) s2Step37HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 780],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step37HeadGvBefore : Arena := s2Step37HeadFAfter
def s2Step37HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step37HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789],771⟩
def s2Step37HeadGvFresh : List Wire := [793]
theorem s2Step37HeadGv_distinct : (s2Step37HeadGvRow.sign::s2Step37HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step37HeadGv_owned : (s2Step37HeadGvRow.sign::s2Step37HeadGvRow.payload).toFinset⊆s2Step37HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step37HeadGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37HeadGv_reserved : s2Step37HeadGvBefore.reserve s2Step37HeadGvFresh.toFinset=some s2Step37HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step37HeadGvFresh,arenaWires]
  · norm_num [s2Step37HeadGvBefore,s2Step37HeadFAfter,s2Step37HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step37HeadGvAfter,s2Step37HeadGvBefore,s2Step37HeadFAfter,s2Step37HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step37HeadGv_checked : planRowResizeLog s2Step37HeadGvBefore s2Step37HeadGvRow 32 s2Step37HeadGvFresh=
    some (s2Step37HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793],771⟩,growRow 771 s2Step37HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step37HeadGvBefore s2Step37HeadGvAfter s2Step37HeadGvRow 32 s2Step37HeadGvFresh
    s2Step37HeadGv_distinct s2Step37HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step37HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step37HeadGvRow.payload++s2Step37HeadGvFresh) s2Step37HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step37HeadFvBefore : Arena := s2Step37HeadGvAfter
def s2Step37HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step37HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785],770⟩
def s2Step37HeadFvFresh : List Wire := [779]
theorem s2Step37HeadFv_distinct : (s2Step37HeadFvRow.sign::s2Step37HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step37HeadFv_owned : (s2Step37HeadFvRow.sign::s2Step37HeadFvRow.payload).toFinset⊆s2Step37HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step37HeadFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37HeadFv_reserved : s2Step37HeadFvBefore.reserve s2Step37HeadFvFresh.toFinset=some s2Step37HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step37HeadFvFresh,arenaWires]
  · norm_num [s2Step37HeadFvBefore,s2Step37HeadGvAfter,s2Step37HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step37HeadFvAfter,s2Step37HeadFvBefore,s2Step37HeadGvAfter,s2Step37HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step37HeadFv_checked : planRowResizeLog s2Step37HeadFvBefore s2Step37HeadFvRow 32 s2Step37HeadFvFresh=
    some (s2Step37HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779],770⟩,growRow 770 s2Step37HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step37HeadFvBefore s2Step37HeadFvAfter s2Step37HeadFvRow 32 s2Step37HeadFvFresh
    s2Step37HeadFv_distinct s2Step37HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step37HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step37HeadFvRow.payload++s2Step37HeadFvFresh) s2Step37HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step38HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step38HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step38HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 792],769⟩
def s2Step38HeadGFresh : List Wire := [780]
theorem s2Step38HeadG_distinct : (s2Step38HeadGRow.sign::s2Step38HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step38HeadG_owned : (s2Step38HeadGRow.sign::s2Step38HeadGRow.payload).toFinset⊆s2Step38HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step38HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38HeadG_reserved : s2Step38HeadGBefore.reserve s2Step38HeadGFresh.toFinset=some s2Step38HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step38HeadGFresh,arenaWires]
  · norm_num [s2Step38HeadGBefore,s2Step38HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step38HeadGAfter,s2Step38HeadGBefore,s2Step38HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step38HeadG_checked : planRowResizeLog s2Step38HeadGBefore s2Step38HeadGRow 251 s2Step38HeadGFresh=
    some (s2Step38HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 792, 780],769⟩,growRow 769 s2Step38HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step38HeadGBefore s2Step38HeadGAfter s2Step38HeadGRow 251 s2Step38HeadGFresh
    s2Step38HeadG_distinct s2Step38HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step38HeadG_reserved
  have rowEq : WindowRow.mk (s2Step38HeadGRow.payload++s2Step38HeadGFresh) s2Step38HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 792, 780],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step38HeadFBefore : Arena := s2Step38HeadGAfter
def s2Step38HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step38HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761],768⟩
def s2Step38HeadFFresh : List Wire := [786]
theorem s2Step38HeadF_distinct : (s2Step38HeadFRow.sign::s2Step38HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step38HeadF_owned : (s2Step38HeadFRow.sign::s2Step38HeadFRow.payload).toFinset⊆s2Step38HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step38HeadFBefore (fun q => (0≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38HeadF_reserved : s2Step38HeadFBefore.reserve s2Step38HeadFFresh.toFinset=some s2Step38HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step38HeadFFresh,arenaWires]
  · norm_num [s2Step38HeadFBefore,s2Step38HeadGAfter,s2Step38HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step38HeadFAfter,s2Step38HeadFBefore,s2Step38HeadGAfter,s2Step38HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step38HeadF_checked : planRowResizeLog s2Step38HeadFBefore s2Step38HeadFRow 251 s2Step38HeadFFresh=
    some (s2Step38HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 786],768⟩,growRow 768 s2Step38HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step38HeadFBefore s2Step38HeadFAfter s2Step38HeadFRow 251 s2Step38HeadFFresh
    s2Step38HeadF_distinct s2Step38HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step38HeadF_reserved
  have rowEq : WindowRow.mk (s2Step38HeadFRow.payload++s2Step38HeadFFresh) s2Step38HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 786],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step38HeadGvBefore : Arena := s2Step38HeadFAfter
def s2Step38HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step38HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793],771⟩
def s2Step38HeadGvFresh : List Wire := [790]
theorem s2Step38HeadGv_distinct : (s2Step38HeadGvRow.sign::s2Step38HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step38HeadGv_owned : (s2Step38HeadGvRow.sign::s2Step38HeadGvRow.payload).toFinset⊆s2Step38HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step38HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38HeadGv_reserved : s2Step38HeadGvBefore.reserve s2Step38HeadGvFresh.toFinset=some s2Step38HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step38HeadGvFresh,arenaWires]
  · norm_num [s2Step38HeadGvBefore,s2Step38HeadFAfter,s2Step38HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step38HeadGvAfter,s2Step38HeadGvBefore,s2Step38HeadFAfter,s2Step38HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step38HeadGv_checked : planRowResizeLog s2Step38HeadGvBefore s2Step38HeadGvRow 33 s2Step38HeadGvFresh=
    some (s2Step38HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 790],771⟩,growRow 771 s2Step38HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step38HeadGvBefore s2Step38HeadGvAfter s2Step38HeadGvRow 33 s2Step38HeadGvFresh
    s2Step38HeadGv_distinct s2Step38HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step38HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step38HeadGvRow.payload++s2Step38HeadGvFresh) s2Step38HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 790],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step38HeadFvBefore : Arena := s2Step38HeadGvAfter
def s2Step38HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step38HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779],770⟩
def s2Step38HeadFvFresh : List Wire := [791]
theorem s2Step38HeadFv_distinct : (s2Step38HeadFvRow.sign::s2Step38HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step38HeadFv_owned : (s2Step38HeadFvRow.sign::s2Step38HeadFvRow.payload).toFinset⊆s2Step38HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step38HeadFvBefore (fun q => (0≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38HeadFv_reserved : s2Step38HeadFvBefore.reserve s2Step38HeadFvFresh.toFinset=some s2Step38HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step38HeadFvFresh,arenaWires]
  · norm_num [s2Step38HeadFvBefore,s2Step38HeadGvAfter,s2Step38HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step38HeadFvAfter,s2Step38HeadFvBefore,s2Step38HeadGvAfter,s2Step38HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step38HeadFv_checked : planRowResizeLog s2Step38HeadFvBefore s2Step38HeadFvRow 33 s2Step38HeadFvFresh=
    some (s2Step38HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 791],770⟩,growRow 770 s2Step38HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step38HeadFvBefore s2Step38HeadFvAfter s2Step38HeadFvRow 33 s2Step38HeadFvFresh
    s2Step38HeadFv_distinct s2Step38HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step38HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step38HeadFvRow.payload++s2Step38HeadFvFresh) s2Step38HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step39HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step39HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step39HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248],769⟩
def s2Step39HeadGFresh : List Wire := [794]
theorem s2Step39HeadG_distinct : (s2Step39HeadGRow.sign::s2Step39HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step39HeadG_owned : (s2Step39HeadGRow.sign::s2Step39HeadGRow.payload).toFinset⊆s2Step39HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step39HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39HeadG_reserved : s2Step39HeadGBefore.reserve s2Step39HeadGFresh.toFinset=some s2Step39HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step39HeadGFresh,arenaWires]
  · norm_num [s2Step39HeadGBefore,s2Step39HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step39HeadGAfter,s2Step39HeadGBefore,s2Step39HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step39HeadG_checked : planRowResizeLog s2Step39HeadGBefore s2Step39HeadGRow 250 s2Step39HeadGFresh=
    some (s2Step39HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 794],769⟩,growRow 769 s2Step39HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step39HeadGBefore s2Step39HeadGAfter s2Step39HeadGRow 250 s2Step39HeadGFresh
    s2Step39HeadG_distinct s2Step39HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step39HeadG_reserved
  have rowEq : WindowRow.mk (s2Step39HeadGRow.payload++s2Step39HeadGFresh) s2Step39HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 794],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step39HeadFBefore : Arena := s2Step39HeadGAfter
def s2Step39HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step39HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760],768⟩
def s2Step39HeadFFresh : List Wire := [790]
theorem s2Step39HeadF_distinct : (s2Step39HeadFRow.sign::s2Step39HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step39HeadF_owned : (s2Step39HeadFRow.sign::s2Step39HeadFRow.payload).toFinset⊆s2Step39HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step39HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39HeadF_reserved : s2Step39HeadFBefore.reserve s2Step39HeadFFresh.toFinset=some s2Step39HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step39HeadFFresh,arenaWires]
  · norm_num [s2Step39HeadFBefore,s2Step39HeadGAfter,s2Step39HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step39HeadFAfter,s2Step39HeadFBefore,s2Step39HeadGAfter,s2Step39HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step39HeadF_checked : planRowResizeLog s2Step39HeadFBefore s2Step39HeadFRow 250 s2Step39HeadFFresh=
    some (s2Step39HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 790],768⟩,growRow 768 s2Step39HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step39HeadFBefore s2Step39HeadFAfter s2Step39HeadFRow 250 s2Step39HeadFFresh
    s2Step39HeadF_distinct s2Step39HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step39HeadF_reserved
  have rowEq : WindowRow.mk (s2Step39HeadFRow.payload++s2Step39HeadFFresh) s2Step39HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 790],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step39HeadGvBefore : Arena := s2Step39HeadFAfter
def s2Step39HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step39HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793],771⟩
def s2Step39HeadGvFresh : List Wire := [791]
theorem s2Step39HeadGv_distinct : (s2Step39HeadGvRow.sign::s2Step39HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step39HeadGv_owned : (s2Step39HeadGvRow.sign::s2Step39HeadGvRow.payload).toFinset⊆s2Step39HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step39HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39HeadGv_reserved : s2Step39HeadGvBefore.reserve s2Step39HeadGvFresh.toFinset=some s2Step39HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step39HeadGvFresh,arenaWires]
  · norm_num [s2Step39HeadGvBefore,s2Step39HeadFAfter,s2Step39HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step39HeadGvAfter,s2Step39HeadGvBefore,s2Step39HeadFAfter,s2Step39HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step39HeadGv_checked : planRowResizeLog s2Step39HeadGvBefore s2Step39HeadGvRow 33 s2Step39HeadGvFresh=
    some (s2Step39HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 791],771⟩,growRow 771 s2Step39HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step39HeadGvBefore s2Step39HeadGvAfter s2Step39HeadGvRow 33 s2Step39HeadGvFresh
    s2Step39HeadGv_distinct s2Step39HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step39HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step39HeadGvRow.payload++s2Step39HeadGvFresh) s2Step39HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 791],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step39HeadFvBefore : Arena := s2Step39HeadGvAfter
def s2Step39HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step39HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779],770⟩
def s2Step39HeadFvFresh : List Wire := [786]
theorem s2Step39HeadFv_distinct : (s2Step39HeadFvRow.sign::s2Step39HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step39HeadFv_owned : (s2Step39HeadFvRow.sign::s2Step39HeadFvRow.payload).toFinset⊆s2Step39HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step39HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39HeadFv_reserved : s2Step39HeadFvBefore.reserve s2Step39HeadFvFresh.toFinset=some s2Step39HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step39HeadFvFresh,arenaWires]
  · norm_num [s2Step39HeadFvBefore,s2Step39HeadGvAfter,s2Step39HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step39HeadFvAfter,s2Step39HeadFvBefore,s2Step39HeadGvAfter,s2Step39HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step39HeadFv_checked : planRowResizeLog s2Step39HeadFvBefore s2Step39HeadFvRow 33 s2Step39HeadFvFresh=
    some (s2Step39HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786],770⟩,growRow 770 s2Step39HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step39HeadFvBefore s2Step39HeadFvAfter s2Step39HeadFvRow 33 s2Step39HeadFvFresh
    s2Step39HeadFv_distinct s2Step39HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step39HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step39HeadFvRow.payload++s2Step39HeadFvFresh) s2Step39HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step40HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step40HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step40HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 787],769⟩
def s2Step40HeadGFresh : List Wire := [790]
theorem s2Step40HeadG_distinct : (s2Step40HeadGRow.sign::s2Step40HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step40HeadG_owned : (s2Step40HeadGRow.sign::s2Step40HeadGRow.payload).toFinset⊆s2Step40HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step40HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40HeadG_reserved : s2Step40HeadGBefore.reserve s2Step40HeadGFresh.toFinset=some s2Step40HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step40HeadGFresh,arenaWires]
  · norm_num [s2Step40HeadGBefore,s2Step40HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step40HeadGAfter,s2Step40HeadGBefore,s2Step40HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step40HeadG_checked : planRowResizeLog s2Step40HeadGBefore s2Step40HeadGRow 250 s2Step40HeadGFresh=
    some (s2Step40HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 787, 790],769⟩,growRow 769 s2Step40HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step40HeadGBefore s2Step40HeadGAfter s2Step40HeadGRow 250 s2Step40HeadGFresh
    s2Step40HeadG_distinct s2Step40HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step40HeadG_reserved
  have rowEq : WindowRow.mk (s2Step40HeadGRow.payload++s2Step40HeadGFresh) s2Step40HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 787, 790],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step40HeadFBefore : Arena := s2Step40HeadGAfter
def s2Step40HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step40HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760],768⟩
def s2Step40HeadFFresh : List Wire := [794]
theorem s2Step40HeadF_distinct : (s2Step40HeadFRow.sign::s2Step40HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step40HeadF_owned : (s2Step40HeadFRow.sign::s2Step40HeadFRow.payload).toFinset⊆s2Step40HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step40HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40HeadF_reserved : s2Step40HeadFBefore.reserve s2Step40HeadFFresh.toFinset=some s2Step40HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step40HeadFFresh,arenaWires]
  · norm_num [s2Step40HeadFBefore,s2Step40HeadGAfter,s2Step40HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step40HeadFAfter,s2Step40HeadFBefore,s2Step40HeadGAfter,s2Step40HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step40HeadF_checked : planRowResizeLog s2Step40HeadFBefore s2Step40HeadFRow 250 s2Step40HeadFFresh=
    some (s2Step40HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 794],768⟩,growRow 768 s2Step40HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step40HeadFBefore s2Step40HeadFAfter s2Step40HeadFRow 250 s2Step40HeadFFresh
    s2Step40HeadF_distinct s2Step40HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step40HeadF_reserved
  have rowEq : WindowRow.mk (s2Step40HeadFRow.payload++s2Step40HeadFFresh) s2Step40HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 794],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step40HeadGvBefore : Arena := s2Step40HeadFAfter
def s2Step40HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step40HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796],771⟩
def s2Step40HeadGvFresh : List Wire := [792]
theorem s2Step40HeadGv_distinct : (s2Step40HeadGvRow.sign::s2Step40HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step40HeadGv_owned : (s2Step40HeadGvRow.sign::s2Step40HeadGvRow.payload).toFinset⊆s2Step40HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step40HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40HeadGv_reserved : s2Step40HeadGvBefore.reserve s2Step40HeadGvFresh.toFinset=some s2Step40HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step40HeadGvFresh,arenaWires]
  · norm_num [s2Step40HeadGvBefore,s2Step40HeadFAfter,s2Step40HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step40HeadGvAfter,s2Step40HeadGvBefore,s2Step40HeadFAfter,s2Step40HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step40HeadGv_checked : planRowResizeLog s2Step40HeadGvBefore s2Step40HeadGvRow 34 s2Step40HeadGvFresh=
    some (s2Step40HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 792],771⟩,growRow 771 s2Step40HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step40HeadGvBefore s2Step40HeadGvAfter s2Step40HeadGvRow 34 s2Step40HeadGvFresh
    s2Step40HeadGv_distinct s2Step40HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step40HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step40HeadGvRow.payload++s2Step40HeadGvFresh) s2Step40HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 792],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step40HeadFvBefore : Arena := s2Step40HeadGvAfter
def s2Step40HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step40HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786],770⟩
def s2Step40HeadFvFresh : List Wire := [780]
theorem s2Step40HeadFv_distinct : (s2Step40HeadFvRow.sign::s2Step40HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step40HeadFv_owned : (s2Step40HeadFvRow.sign::s2Step40HeadFvRow.payload).toFinset⊆s2Step40HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step40HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40HeadFv_reserved : s2Step40HeadFvBefore.reserve s2Step40HeadFvFresh.toFinset=some s2Step40HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step40HeadFvFresh,arenaWires]
  · norm_num [s2Step40HeadFvBefore,s2Step40HeadGvAfter,s2Step40HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step40HeadFvAfter,s2Step40HeadFvBefore,s2Step40HeadGvAfter,s2Step40HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step40HeadFv_checked : planRowResizeLog s2Step40HeadFvBefore s2Step40HeadFvRow 34 s2Step40HeadFvFresh=
    some (s2Step40HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩,growRow 770 s2Step40HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step40HeadFvBefore s2Step40HeadFvAfter s2Step40HeadFvRow 34 s2Step40HeadFvFresh
    s2Step40HeadFv_distinct s2Step40HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step40HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step40HeadFvRow.payload++s2Step40HeadFvFresh) s2Step40HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step41HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step41HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step41HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],769⟩
def s2Step41HeadGFresh : List Wire := [792]
theorem s2Step41HeadG_distinct : (s2Step41HeadGRow.sign::s2Step41HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step41HeadG_owned : (s2Step41HeadGRow.sign::s2Step41HeadGRow.payload).toFinset⊆s2Step41HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step41HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41HeadG_reserved : s2Step41HeadGBefore.reserve s2Step41HeadGFresh.toFinset=some s2Step41HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step41HeadGFresh,arenaWires]
  · norm_num [s2Step41HeadGBefore,s2Step41HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step41HeadGAfter,s2Step41HeadGBefore,s2Step41HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step41HeadG_checked : planRowResizeLog s2Step41HeadGBefore s2Step41HeadGRow 249 s2Step41HeadGFresh=
    some (s2Step41HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 792],769⟩,growRow 769 s2Step41HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step41HeadGBefore s2Step41HeadGAfter s2Step41HeadGRow 249 s2Step41HeadGFresh
    s2Step41HeadG_distinct s2Step41HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step41HeadG_reserved
  have rowEq : WindowRow.mk (s2Step41HeadGRow.payload++s2Step41HeadGFresh) s2Step41HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 792],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step41HeadFBefore : Arena := s2Step41HeadGAfter
def s2Step41HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step41HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759],768⟩
def s2Step41HeadFFresh : List Wire := [794]
theorem s2Step41HeadF_distinct : (s2Step41HeadFRow.sign::s2Step41HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step41HeadF_owned : (s2Step41HeadFRow.sign::s2Step41HeadFRow.payload).toFinset⊆s2Step41HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step41HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41HeadF_reserved : s2Step41HeadFBefore.reserve s2Step41HeadFFresh.toFinset=some s2Step41HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step41HeadFFresh,arenaWires]
  · norm_num [s2Step41HeadFBefore,s2Step41HeadGAfter,s2Step41HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step41HeadFAfter,s2Step41HeadFBefore,s2Step41HeadGAfter,s2Step41HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step41HeadF_checked : planRowResizeLog s2Step41HeadFBefore s2Step41HeadFRow 249 s2Step41HeadFFresh=
    some (s2Step41HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 794],768⟩,growRow 768 s2Step41HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step41HeadFBefore s2Step41HeadFAfter s2Step41HeadFRow 249 s2Step41HeadFFresh
    s2Step41HeadF_distinct s2Step41HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step41HeadF_reserved
  have rowEq : WindowRow.mk (s2Step41HeadFRow.payload++s2Step41HeadFFresh) s2Step41HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 794],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step41HeadGvBefore : Arena := s2Step41HeadFAfter
def s2Step41HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step41HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 791],771⟩
def s2Step41HeadGvFresh : List Wire := [787]
theorem s2Step41HeadGv_distinct : (s2Step41HeadGvRow.sign::s2Step41HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step41HeadGv_owned : (s2Step41HeadGvRow.sign::s2Step41HeadGvRow.payload).toFinset⊆s2Step41HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step41HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41HeadGv_reserved : s2Step41HeadGvBefore.reserve s2Step41HeadGvFresh.toFinset=some s2Step41HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step41HeadGvFresh,arenaWires]
  · norm_num [s2Step41HeadGvBefore,s2Step41HeadFAfter,s2Step41HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step41HeadGvAfter,s2Step41HeadGvBefore,s2Step41HeadFAfter,s2Step41HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step41HeadGv_checked : planRowResizeLog s2Step41HeadGvBefore s2Step41HeadGvRow 35 s2Step41HeadGvFresh=
    some (s2Step41HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 791, 787],771⟩,growRow 771 s2Step41HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step41HeadGvBefore s2Step41HeadGvAfter s2Step41HeadGvRow 35 s2Step41HeadGvFresh
    s2Step41HeadGv_distinct s2Step41HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step41HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step41HeadGvRow.payload++s2Step41HeadGvFresh) s2Step41HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 791, 787],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step41HeadFvBefore : Arena := s2Step41HeadGvAfter
def s2Step41HeadFvAfter : Arena := s2Step40HeadFvAfter
def s2Step41HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩
def s2Step41HeadFvFresh : List Wire := [790]
theorem s2Step41HeadFv_distinct : (s2Step41HeadFvRow.sign::s2Step41HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step41HeadFv_owned : (s2Step41HeadFvRow.sign::s2Step41HeadFvRow.payload).toFinset⊆s2Step41HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step41HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41HeadFv_reserved : s2Step41HeadFvBefore.reserve s2Step41HeadFvFresh.toFinset=some s2Step41HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step41HeadFvFresh,arenaWires]
  · norm_num [s2Step41HeadFvBefore,s2Step41HeadGvAfter,s2Step41HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step41HeadFvAfter,s2Step40HeadFvAfter,s2Step41HeadFvBefore,s2Step41HeadGvAfter,s2Step41HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step41HeadFv_checked : planRowResizeLog s2Step41HeadFvBefore s2Step41HeadFvRow 35 s2Step41HeadFvFresh=
    some (s2Step41HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 790],770⟩,growRow 770 s2Step41HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step41HeadFvBefore s2Step41HeadFvAfter s2Step41HeadFvRow 35 s2Step41HeadFvFresh
    s2Step41HeadFv_distinct s2Step41HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step41HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step41HeadFvRow.payload++s2Step41HeadFvFresh) s2Step41HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step42HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step42HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step42HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],769⟩
def s2Step42HeadGFresh : List Wire := [787]
theorem s2Step42HeadG_distinct : (s2Step42HeadGRow.sign::s2Step42HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step42HeadG_owned : (s2Step42HeadGRow.sign::s2Step42HeadGRow.payload).toFinset⊆s2Step42HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step42HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42HeadG_reserved : s2Step42HeadGBefore.reserve s2Step42HeadGFresh.toFinset=some s2Step42HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step42HeadGFresh,arenaWires]
  · norm_num [s2Step42HeadGBefore,s2Step42HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step42HeadGAfter,s2Step42HeadGBefore,s2Step42HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step42HeadG_checked : planRowResizeLog s2Step42HeadGBefore s2Step42HeadGRow 249 s2Step42HeadGFresh=
    some (s2Step42HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 787],769⟩,growRow 769 s2Step42HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step42HeadGBefore s2Step42HeadGAfter s2Step42HeadGRow 249 s2Step42HeadGFresh
    s2Step42HeadG_distinct s2Step42HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step42HeadG_reserved
  have rowEq : WindowRow.mk (s2Step42HeadGRow.payload++s2Step42HeadGFresh) s2Step42HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 787],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step42HeadFBefore : Arena := s2Step42HeadGAfter
def s2Step42HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step42HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759],768⟩
def s2Step42HeadFFresh : List Wire := [790]
theorem s2Step42HeadF_distinct : (s2Step42HeadFRow.sign::s2Step42HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step42HeadF_owned : (s2Step42HeadFRow.sign::s2Step42HeadFRow.payload).toFinset⊆s2Step42HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step42HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42HeadF_reserved : s2Step42HeadFBefore.reserve s2Step42HeadFFresh.toFinset=some s2Step42HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step42HeadFFresh,arenaWires]
  · norm_num [s2Step42HeadFBefore,s2Step42HeadGAfter,s2Step42HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step42HeadFAfter,s2Step42HeadFBefore,s2Step42HeadGAfter,s2Step42HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step42HeadF_checked : planRowResizeLog s2Step42HeadFBefore s2Step42HeadFRow 249 s2Step42HeadFFresh=
    some (s2Step42HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 790],768⟩,growRow 768 s2Step42HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step42HeadFBefore s2Step42HeadFAfter s2Step42HeadFRow 249 s2Step42HeadFFresh
    s2Step42HeadF_distinct s2Step42HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step42HeadF_reserved
  have rowEq : WindowRow.mk (s2Step42HeadFRow.payload++s2Step42HeadFFresh) s2Step42HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 790],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step42HeadGvBefore : Arena := s2Step42HeadFAfter
def s2Step42HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step42HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797],771⟩
def s2Step42HeadGvFresh : List Wire := [794]
theorem s2Step42HeadGv_distinct : (s2Step42HeadGvRow.sign::s2Step42HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step42HeadGv_owned : (s2Step42HeadGvRow.sign::s2Step42HeadGvRow.payload).toFinset⊆s2Step42HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step42HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42HeadGv_reserved : s2Step42HeadGvBefore.reserve s2Step42HeadGvFresh.toFinset=some s2Step42HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step42HeadGvFresh,arenaWires]
  · norm_num [s2Step42HeadGvBefore,s2Step42HeadFAfter,s2Step42HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step42HeadGvAfter,s2Step42HeadGvBefore,s2Step42HeadFAfter,s2Step42HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step42HeadGv_checked : planRowResizeLog s2Step42HeadGvBefore s2Step42HeadGvRow 35 s2Step42HeadGvFresh=
    some (s2Step42HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩,growRow 771 s2Step42HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step42HeadGvBefore s2Step42HeadGvAfter s2Step42HeadGvRow 35 s2Step42HeadGvFresh
    s2Step42HeadGv_distinct s2Step42HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step42HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step42HeadGvRow.payload++s2Step42HeadGvFresh) s2Step42HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step42HeadFvBefore : Arena := s2Step42HeadGvAfter
def s2Step42HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step42HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩
def s2Step42HeadFvFresh : List Wire := [792]
theorem s2Step42HeadFv_distinct : (s2Step42HeadFvRow.sign::s2Step42HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step42HeadFv_owned : (s2Step42HeadFvRow.sign::s2Step42HeadFvRow.payload).toFinset⊆s2Step42HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step42HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42HeadFv_reserved : s2Step42HeadFvBefore.reserve s2Step42HeadFvFresh.toFinset=some s2Step42HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step42HeadFvFresh,arenaWires]
  · norm_num [s2Step42HeadFvBefore,s2Step42HeadGvAfter,s2Step42HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step42HeadFvAfter,s2Step42HeadFvBefore,s2Step42HeadGvAfter,s2Step42HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step42HeadFv_checked : planRowResizeLog s2Step42HeadFvBefore s2Step42HeadFvRow 35 s2Step42HeadFvFresh=
    some (s2Step42HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 792],770⟩,growRow 770 s2Step42HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step42HeadFvBefore s2Step42HeadFvAfter s2Step42HeadFvRow 35 s2Step42HeadFvFresh
    s2Step42HeadFv_distinct s2Step42HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step42HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step42HeadFvRow.payload++s2Step42HeadFvFresh) s2Step42HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 792],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step43HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step43HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step43HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246],769⟩
def s2Step43HeadGFresh : List Wire := [800]
theorem s2Step43HeadG_distinct : (s2Step43HeadGRow.sign::s2Step43HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step43HeadG_owned : (s2Step43HeadGRow.sign::s2Step43HeadGRow.payload).toFinset⊆s2Step43HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step43HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43HeadG_reserved : s2Step43HeadGBefore.reserve s2Step43HeadGFresh.toFinset=some s2Step43HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step43HeadGFresh,arenaWires]
  · norm_num [s2Step43HeadGBefore,s2Step43HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step43HeadGAfter,s2Step43HeadGBefore,s2Step43HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step43HeadG_checked : planRowResizeLog s2Step43HeadGBefore s2Step43HeadGRow 248 s2Step43HeadGFresh=
    some (s2Step43HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 800],769⟩,growRow 769 s2Step43HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step43HeadGBefore s2Step43HeadGAfter s2Step43HeadGRow 248 s2Step43HeadGFresh
    s2Step43HeadG_distinct s2Step43HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step43HeadG_reserved
  have rowEq : WindowRow.mk (s2Step43HeadGRow.payload++s2Step43HeadGFresh) s2Step43HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 800],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step43HeadFBefore : Arena := s2Step43HeadGAfter
def s2Step43HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step43HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758],768⟩
def s2Step43HeadFFresh : List Wire := [792]
theorem s2Step43HeadF_distinct : (s2Step43HeadFRow.sign::s2Step43HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step43HeadF_owned : (s2Step43HeadFRow.sign::s2Step43HeadFRow.payload).toFinset⊆s2Step43HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step43HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43HeadF_reserved : s2Step43HeadFBefore.reserve s2Step43HeadFFresh.toFinset=some s2Step43HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step43HeadFFresh,arenaWires]
  · norm_num [s2Step43HeadFBefore,s2Step43HeadGAfter,s2Step43HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step43HeadFAfter,s2Step43HeadFBefore,s2Step43HeadGAfter,s2Step43HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step43HeadF_checked : planRowResizeLog s2Step43HeadFBefore s2Step43HeadFRow 248 s2Step43HeadFFresh=
    some (s2Step43HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 792],768⟩,growRow 768 s2Step43HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step43HeadFBefore s2Step43HeadFAfter s2Step43HeadFRow 248 s2Step43HeadFFresh
    s2Step43HeadF_distinct s2Step43HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step43HeadF_reserved
  have rowEq : WindowRow.mk (s2Step43HeadFRow.payload++s2Step43HeadFFresh) s2Step43HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 792],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step43HeadGvBefore : Arena := s2Step43HeadFAfter
def s2Step43HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step43HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩
def s2Step43HeadGvFresh : List Wire := [790]
theorem s2Step43HeadGv_distinct : (s2Step43HeadGvRow.sign::s2Step43HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step43HeadGv_owned : (s2Step43HeadGvRow.sign::s2Step43HeadGvRow.payload).toFinset⊆s2Step43HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step43HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43HeadGv_reserved : s2Step43HeadGvBefore.reserve s2Step43HeadGvFresh.toFinset=some s2Step43HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step43HeadGvFresh,arenaWires]
  · norm_num [s2Step43HeadGvBefore,s2Step43HeadFAfter,s2Step43HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step43HeadGvAfter,s2Step43HeadGvBefore,s2Step43HeadFAfter,s2Step43HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step43HeadGv_checked : planRowResizeLog s2Step43HeadGvBefore s2Step43HeadGvRow 36 s2Step43HeadGvFresh=
    some (s2Step43HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 790],771⟩,growRow 771 s2Step43HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step43HeadGvBefore s2Step43HeadGvAfter s2Step43HeadGvRow 36 s2Step43HeadGvFresh
    s2Step43HeadGv_distinct s2Step43HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step43HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step43HeadGvRow.payload++s2Step43HeadGvFresh) s2Step43HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 790],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step43HeadFvBefore : Arena := s2Step43HeadGvAfter
def s2Step43HeadFvAfter : Arena := s2Step42HeadFvAfter
def s2Step43HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 791],770⟩
def s2Step43HeadFvFresh : List Wire := [787]
theorem s2Step43HeadFv_distinct : (s2Step43HeadFvRow.sign::s2Step43HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step43HeadFv_owned : (s2Step43HeadFvRow.sign::s2Step43HeadFvRow.payload).toFinset⊆s2Step43HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step43HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43HeadFv_reserved : s2Step43HeadFvBefore.reserve s2Step43HeadFvFresh.toFinset=some s2Step43HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step43HeadFvFresh,arenaWires]
  · norm_num [s2Step43HeadFvBefore,s2Step43HeadGvAfter,s2Step43HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step43HeadFvAfter,s2Step42HeadFvAfter,s2Step43HeadFvBefore,s2Step43HeadGvAfter,s2Step43HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step43HeadFv_checked : planRowResizeLog s2Step43HeadFvBefore s2Step43HeadFvRow 36 s2Step43HeadFvFresh=
    some (s2Step43HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 791, 787],770⟩,growRow 770 s2Step43HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step43HeadFvBefore s2Step43HeadFvAfter s2Step43HeadFvRow 36 s2Step43HeadFvFresh
    s2Step43HeadFv_distinct s2Step43HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step43HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step43HeadFvRow.payload++s2Step43HeadFvFresh) s2Step43HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 791, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step44HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step44HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step44HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245],769⟩
def s2Step44HeadGFresh : List Wire := [802]
theorem s2Step44HeadG_distinct : (s2Step44HeadGRow.sign::s2Step44HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step44HeadG_owned : (s2Step44HeadGRow.sign::s2Step44HeadGRow.payload).toFinset⊆s2Step44HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step44HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44HeadG_reserved : s2Step44HeadGBefore.reserve s2Step44HeadGFresh.toFinset=some s2Step44HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step44HeadGFresh,arenaWires]
  · norm_num [s2Step44HeadGBefore,s2Step44HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step44HeadGAfter,s2Step44HeadGBefore,s2Step44HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step44HeadG_checked : planRowResizeLog s2Step44HeadGBefore s2Step44HeadGRow 247 s2Step44HeadGFresh=
    some (s2Step44HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 802],769⟩,growRow 769 s2Step44HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step44HeadGBefore s2Step44HeadGAfter s2Step44HeadGRow 247 s2Step44HeadGFresh
    s2Step44HeadG_distinct s2Step44HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step44HeadG_reserved
  have rowEq : WindowRow.mk (s2Step44HeadGRow.payload++s2Step44HeadGFresh) s2Step44HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 802],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step44HeadFBefore : Arena := s2Step44HeadGAfter
def s2Step44HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step44HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757],768⟩
def s2Step44HeadFFresh : List Wire := [790]
theorem s2Step44HeadF_distinct : (s2Step44HeadFRow.sign::s2Step44HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step44HeadF_owned : (s2Step44HeadFRow.sign::s2Step44HeadFRow.payload).toFinset⊆s2Step44HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step44HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44HeadF_reserved : s2Step44HeadFBefore.reserve s2Step44HeadFFresh.toFinset=some s2Step44HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step44HeadFFresh,arenaWires]
  · norm_num [s2Step44HeadFBefore,s2Step44HeadGAfter,s2Step44HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step44HeadFAfter,s2Step44HeadFBefore,s2Step44HeadGAfter,s2Step44HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step44HeadF_checked : planRowResizeLog s2Step44HeadFBefore s2Step44HeadFRow 247 s2Step44HeadFFresh=
    some (s2Step44HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 790],768⟩,growRow 768 s2Step44HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step44HeadFBefore s2Step44HeadFAfter s2Step44HeadFRow 247 s2Step44HeadFFresh
    s2Step44HeadF_distinct s2Step44HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step44HeadF_reserved
  have rowEq : WindowRow.mk (s2Step44HeadFRow.payload++s2Step44HeadFFresh) s2Step44HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 790],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step44HeadGvBefore : Arena := s2Step44HeadFAfter
def s2Step44HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step44HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩
def s2Step44HeadGvFresh : List Wire := [791]
theorem s2Step44HeadGv_distinct : (s2Step44HeadGvRow.sign::s2Step44HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step44HeadGv_owned : (s2Step44HeadGvRow.sign::s2Step44HeadGvRow.payload).toFinset⊆s2Step44HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step44HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44HeadGv_reserved : s2Step44HeadGvBefore.reserve s2Step44HeadGvFresh.toFinset=some s2Step44HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step44HeadGvFresh,arenaWires]
  · norm_num [s2Step44HeadGvBefore,s2Step44HeadFAfter,s2Step44HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step44HeadGvAfter,s2Step44HeadGvBefore,s2Step44HeadFAfter,s2Step44HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step44HeadGv_checked : planRowResizeLog s2Step44HeadGvBefore s2Step44HeadGvRow 36 s2Step44HeadGvFresh=
    some (s2Step44HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 791],771⟩,growRow 771 s2Step44HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step44HeadGvBefore s2Step44HeadGvAfter s2Step44HeadGvRow 36 s2Step44HeadGvFresh
    s2Step44HeadGv_distinct s2Step44HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step44HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step44HeadGvRow.payload++s2Step44HeadGvFresh) s2Step44HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 791],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step44HeadFvBefore : Arena := s2Step44HeadGvAfter
def s2Step44HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step44HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799],770⟩
def s2Step44HeadFvFresh : List Wire := [787]
theorem s2Step44HeadFv_distinct : (s2Step44HeadFvRow.sign::s2Step44HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step44HeadFv_owned : (s2Step44HeadFvRow.sign::s2Step44HeadFvRow.payload).toFinset⊆s2Step44HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step44HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44HeadFv_reserved : s2Step44HeadFvBefore.reserve s2Step44HeadFvFresh.toFinset=some s2Step44HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step44HeadFvFresh,arenaWires]
  · norm_num [s2Step44HeadFvBefore,s2Step44HeadGvAfter,s2Step44HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step44HeadFvAfter,s2Step44HeadFvBefore,s2Step44HeadGvAfter,s2Step44HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step44HeadFv_checked : planRowResizeLog s2Step44HeadFvBefore s2Step44HeadFvRow 36 s2Step44HeadFvFresh=
    some (s2Step44HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 787],770⟩,growRow 770 s2Step44HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step44HeadFvBefore s2Step44HeadFvAfter s2Step44HeadFvRow 36 s2Step44HeadFvFresh
    s2Step44HeadFv_distinct s2Step44HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step44HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step44HeadFvRow.payload++s2Step44HeadFvFresh) s2Step44HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step45HeadGBefore : Arena := s2Step44HeadGBefore
def s2Step45HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step45HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 801],769⟩
def s2Step45HeadGFresh : List Wire := [791]
theorem s2Step45HeadG_distinct : (s2Step45HeadGRow.sign::s2Step45HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step45HeadG_owned : (s2Step45HeadGRow.sign::s2Step45HeadGRow.payload).toFinset⊆s2Step45HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step45HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45HeadG_reserved : s2Step45HeadGBefore.reserve s2Step45HeadGFresh.toFinset=some s2Step45HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step45HeadGFresh,arenaWires]
  · norm_num [s2Step45HeadGBefore,s2Step44HeadGBefore,s2Step45HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step45HeadGAfter,s2Step45HeadGBefore,s2Step44HeadGBefore,s2Step45HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step45HeadG_checked : planRowResizeLog s2Step45HeadGBefore s2Step45HeadGRow 247 s2Step45HeadGFresh=
    some (s2Step45HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 801, 791],769⟩,growRow 769 s2Step45HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step45HeadGBefore s2Step45HeadGAfter s2Step45HeadGRow 247 s2Step45HeadGFresh
    s2Step45HeadG_distinct s2Step45HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step45HeadG_reserved
  have rowEq : WindowRow.mk (s2Step45HeadGRow.payload++s2Step45HeadGFresh) s2Step45HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 801, 791],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step45HeadFBefore : Arena := s2Step45HeadGAfter
def s2Step45HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step45HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757],768⟩
def s2Step45HeadFFresh : List Wire := [787]
theorem s2Step45HeadF_distinct : (s2Step45HeadFRow.sign::s2Step45HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step45HeadF_owned : (s2Step45HeadFRow.sign::s2Step45HeadFRow.payload).toFinset⊆s2Step45HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step45HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45HeadF_reserved : s2Step45HeadFBefore.reserve s2Step45HeadFFresh.toFinset=some s2Step45HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step45HeadFFresh,arenaWires]
  · norm_num [s2Step45HeadFBefore,s2Step45HeadGAfter,s2Step45HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step45HeadFAfter,s2Step45HeadFBefore,s2Step45HeadGAfter,s2Step45HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step45HeadF_checked : planRowResizeLog s2Step45HeadFBefore s2Step45HeadFRow 247 s2Step45HeadFFresh=
    some (s2Step45HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 787],768⟩,growRow 768 s2Step45HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step45HeadFBefore s2Step45HeadFAfter s2Step45HeadFRow 247 s2Step45HeadFFresh
    s2Step45HeadF_distinct s2Step45HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step45HeadF_reserved
  have rowEq : WindowRow.mk (s2Step45HeadFRow.payload++s2Step45HeadFFresh) s2Step45HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 787],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step45HeadGvBefore : Arena := s2Step45HeadFAfter
def s2Step45HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step45HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩
def s2Step45HeadGvFresh : List Wire := [790]
theorem s2Step45HeadGv_distinct : (s2Step45HeadGvRow.sign::s2Step45HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step45HeadGv_owned : (s2Step45HeadGvRow.sign::s2Step45HeadGvRow.payload).toFinset⊆s2Step45HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step45HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45HeadGv_reserved : s2Step45HeadGvBefore.reserve s2Step45HeadGvFresh.toFinset=some s2Step45HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step45HeadGvFresh,arenaWires]
  · norm_num [s2Step45HeadGvBefore,s2Step45HeadFAfter,s2Step45HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step45HeadGvAfter,s2Step45HeadGvBefore,s2Step45HeadFAfter,s2Step45HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step45HeadGv_checked : planRowResizeLog s2Step45HeadGvBefore s2Step45HeadGvRow 36 s2Step45HeadGvFresh=
    some (s2Step45HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 790],771⟩,growRow 771 s2Step45HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step45HeadGvBefore s2Step45HeadGvAfter s2Step45HeadGvRow 36 s2Step45HeadGvFresh
    s2Step45HeadGv_distinct s2Step45HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step45HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step45HeadGvRow.payload++s2Step45HeadGvFresh) s2Step45HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 790],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step45HeadFvBefore : Arena := s2Step45HeadGvAfter
def s2Step45HeadFvAfter : Arena := s2Step44HeadFvAfter
def s2Step45HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799],770⟩
def s2Step45HeadFvFresh : List Wire := [802]
theorem s2Step45HeadFv_distinct : (s2Step45HeadFvRow.sign::s2Step45HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step45HeadFv_owned : (s2Step45HeadFvRow.sign::s2Step45HeadFvRow.payload).toFinset⊆s2Step45HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step45HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45HeadFv_reserved : s2Step45HeadFvBefore.reserve s2Step45HeadFvFresh.toFinset=some s2Step45HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step45HeadFvFresh,arenaWires]
  · norm_num [s2Step45HeadFvBefore,s2Step45HeadGvAfter,s2Step45HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step45HeadFvAfter,s2Step44HeadFvAfter,s2Step45HeadFvBefore,s2Step45HeadGvAfter,s2Step45HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step45HeadFv_checked : planRowResizeLog s2Step45HeadFvBefore s2Step45HeadFvRow 36 s2Step45HeadFvFresh=
    some (s2Step45HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802],770⟩,growRow 770 s2Step45HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step45HeadFvBefore s2Step45HeadFvAfter s2Step45HeadFvRow 36 s2Step45HeadFvFresh
    s2Step45HeadFv_distinct s2Step45HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step45HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step45HeadFvRow.payload++s2Step45HeadFvFresh) s2Step45HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step46HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step46HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step46HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244],769⟩
def s2Step46HeadGFresh : List Wire := [790]
theorem s2Step46HeadG_distinct : (s2Step46HeadGRow.sign::s2Step46HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step46HeadG_owned : (s2Step46HeadGRow.sign::s2Step46HeadGRow.payload).toFinset⊆s2Step46HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step46HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46HeadG_reserved : s2Step46HeadGBefore.reserve s2Step46HeadGFresh.toFinset=some s2Step46HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step46HeadGFresh,arenaWires]
  · norm_num [s2Step46HeadGBefore,s2Step46HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step46HeadGAfter,s2Step46HeadGBefore,s2Step46HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step46HeadG_checked : planRowResizeLog s2Step46HeadGBefore s2Step46HeadGRow 246 s2Step46HeadGFresh=
    some (s2Step46HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 790],769⟩,growRow 769 s2Step46HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step46HeadGBefore s2Step46HeadGAfter s2Step46HeadGRow 246 s2Step46HeadGFresh
    s2Step46HeadG_distinct s2Step46HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step46HeadG_reserved
  have rowEq : WindowRow.mk (s2Step46HeadGRow.payload++s2Step46HeadGFresh) s2Step46HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 790],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step46HeadFBefore : Arena := s2Step46HeadGAfter
def s2Step46HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step46HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756],768⟩
def s2Step46HeadFFresh : List Wire := [787]
theorem s2Step46HeadF_distinct : (s2Step46HeadFRow.sign::s2Step46HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step46HeadF_owned : (s2Step46HeadFRow.sign::s2Step46HeadFRow.payload).toFinset⊆s2Step46HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step46HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46HeadF_reserved : s2Step46HeadFBefore.reserve s2Step46HeadFFresh.toFinset=some s2Step46HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step46HeadFFresh,arenaWires]
  · norm_num [s2Step46HeadFBefore,s2Step46HeadGAfter,s2Step46HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step46HeadFAfter,s2Step46HeadFBefore,s2Step46HeadGAfter,s2Step46HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step46HeadF_checked : planRowResizeLog s2Step46HeadFBefore s2Step46HeadFRow 246 s2Step46HeadFFresh=
    some (s2Step46HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 787],768⟩,growRow 768 s2Step46HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step46HeadFBefore s2Step46HeadFAfter s2Step46HeadFRow 246 s2Step46HeadFFresh
    s2Step46HeadF_distinct s2Step46HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step46HeadF_reserved
  have rowEq : WindowRow.mk (s2Step46HeadFRow.payload++s2Step46HeadFFresh) s2Step46HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 787],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step46HeadGvBefore : Arena := s2Step46HeadFAfter
def s2Step46HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step46HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804],771⟩
def s2Step46HeadGvFresh : List Wire := [801]
theorem s2Step46HeadGv_distinct : (s2Step46HeadGvRow.sign::s2Step46HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step46HeadGv_owned : (s2Step46HeadGvRow.sign::s2Step46HeadGvRow.payload).toFinset⊆s2Step46HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step46HeadGvBefore (fun q => (0≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46HeadGv_reserved : s2Step46HeadGvBefore.reserve s2Step46HeadGvFresh.toFinset=some s2Step46HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step46HeadGvFresh,arenaWires]
  · norm_num [s2Step46HeadGvBefore,s2Step46HeadFAfter,s2Step46HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step46HeadGvAfter,s2Step46HeadGvBefore,s2Step46HeadFAfter,s2Step46HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step46HeadGv_checked : planRowResizeLog s2Step46HeadGvBefore s2Step46HeadGvRow 37 s2Step46HeadGvFresh=
    some (s2Step46HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩,growRow 771 s2Step46HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step46HeadGvBefore s2Step46HeadGvAfter s2Step46HeadGvRow 37 s2Step46HeadGvFresh
    s2Step46HeadGv_distinct s2Step46HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step46HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step46HeadGvRow.payload++s2Step46HeadGvFresh) s2Step46HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step46HeadFvBefore : Arena := s2Step46HeadGvAfter
def s2Step46HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step46HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802],770⟩
def s2Step46HeadFvFresh : List Wire := [791]
theorem s2Step46HeadFv_distinct : (s2Step46HeadFvRow.sign::s2Step46HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step46HeadFv_owned : (s2Step46HeadFvRow.sign::s2Step46HeadFvRow.payload).toFinset⊆s2Step46HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step46HeadFvBefore (fun q => (0≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46HeadFv_reserved : s2Step46HeadFvBefore.reserve s2Step46HeadFvFresh.toFinset=some s2Step46HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step46HeadFvFresh,arenaWires]
  · norm_num [s2Step46HeadFvBefore,s2Step46HeadGvAfter,s2Step46HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step46HeadFvAfter,s2Step46HeadFvBefore,s2Step46HeadGvAfter,s2Step46HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step46HeadFv_checked : planRowResizeLog s2Step46HeadFvBefore s2Step46HeadFvRow 37 s2Step46HeadFvFresh=
    some (s2Step46HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩,growRow 770 s2Step46HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step46HeadFvBefore s2Step46HeadFvAfter s2Step46HeadFvRow 37 s2Step46HeadFvFresh
    s2Step46HeadFv_distinct s2Step46HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step46HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step46HeadFvRow.payload++s2Step46HeadFvFresh) s2Step46HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step47HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step47HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<806) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step47HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243],769⟩
def s2Step47HeadGFresh : List Wire := [805]
theorem s2Step47HeadG_distinct : (s2Step47HeadGRow.sign::s2Step47HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step47HeadG_owned : (s2Step47HeadGRow.sign::s2Step47HeadGRow.payload).toFinset⊆s2Step47HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step47HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47HeadG_reserved : s2Step47HeadGBefore.reserve s2Step47HeadGFresh.toFinset=some s2Step47HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step47HeadGFresh,arenaWires]
  · norm_num [s2Step47HeadGBefore,s2Step47HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step47HeadGAfter,s2Step47HeadGBefore,s2Step47HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step47HeadG_checked : planRowResizeLog s2Step47HeadGBefore s2Step47HeadGRow 245 s2Step47HeadGFresh=
    some (s2Step47HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 805],769⟩,growRow 769 s2Step47HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step47HeadGBefore s2Step47HeadGAfter s2Step47HeadGRow 245 s2Step47HeadGFresh
    s2Step47HeadG_distinct s2Step47HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step47HeadG_reserved
  have rowEq : WindowRow.mk (s2Step47HeadGRow.payload++s2Step47HeadGFresh) s2Step47HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 805],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step47HeadFBefore : Arena := s2Step47HeadGAfter
def s2Step47HeadFAfter : Arena := s2Step46HeadGBefore
def s2Step47HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755],768⟩
def s2Step47HeadFFresh : List Wire := [806]
theorem s2Step47HeadF_distinct : (s2Step47HeadFRow.sign::s2Step47HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step47HeadF_owned : (s2Step47HeadFRow.sign::s2Step47HeadFRow.payload).toFinset⊆s2Step47HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step47HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<806) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47HeadF_reserved : s2Step47HeadFBefore.reserve s2Step47HeadFFresh.toFinset=some s2Step47HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step47HeadFFresh,arenaWires]
  · norm_num [s2Step47HeadFBefore,s2Step47HeadGAfter,s2Step47HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step47HeadFAfter,s2Step46HeadGBefore,s2Step47HeadFBefore,s2Step47HeadGAfter,s2Step47HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step47HeadF_checked : planRowResizeLog s2Step47HeadFBefore s2Step47HeadFRow 245 s2Step47HeadFFresh=
    some (s2Step47HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 806],768⟩,growRow 768 s2Step47HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step47HeadFBefore s2Step47HeadFAfter s2Step47HeadFRow 245 s2Step47HeadFFresh
    s2Step47HeadF_distinct s2Step47HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step47HeadF_reserved
  have rowEq : WindowRow.mk (s2Step47HeadFRow.payload++s2Step47HeadFFresh) s2Step47HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 806],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step47HeadGvBefore : Arena := s2Step46HeadGBefore
def s2Step47HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step47HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804],771⟩
def s2Step47HeadGvFresh : List Wire := [801]
theorem s2Step47HeadGv_distinct : (s2Step47HeadGvRow.sign::s2Step47HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step47HeadGv_owned : (s2Step47HeadGvRow.sign::s2Step47HeadGvRow.payload).toFinset⊆s2Step47HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step47HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47HeadGv_reserved : s2Step47HeadGvBefore.reserve s2Step47HeadGvFresh.toFinset=some s2Step47HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step47HeadGvFresh,arenaWires]
  · norm_num [s2Step47HeadGvBefore,s2Step46HeadGBefore,s2Step47HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step47HeadGvAfter,s2Step47HeadGvBefore,s2Step46HeadGBefore,s2Step47HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step47HeadGv_checked : planRowResizeLog s2Step47HeadGvBefore s2Step47HeadGvRow 37 s2Step47HeadGvFresh=
    some (s2Step47HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩,growRow 771 s2Step47HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step47HeadGvBefore s2Step47HeadGvAfter s2Step47HeadGvRow 37 s2Step47HeadGvFresh
    s2Step47HeadGv_distinct s2Step47HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step47HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step47HeadGvRow.payload++s2Step47HeadGvFresh) s2Step47HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step47HeadFvBefore : Arena := s2Step47HeadGvAfter
def s2Step47HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step47HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802],770⟩
def s2Step47HeadFvFresh : List Wire := [791]
theorem s2Step47HeadFv_distinct : (s2Step47HeadFvRow.sign::s2Step47HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step47HeadFv_owned : (s2Step47HeadFvRow.sign::s2Step47HeadFvRow.payload).toFinset⊆s2Step47HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step47HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47HeadFv_reserved : s2Step47HeadFvBefore.reserve s2Step47HeadFvFresh.toFinset=some s2Step47HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step47HeadFvFresh,arenaWires]
  · norm_num [s2Step47HeadFvBefore,s2Step47HeadGvAfter,s2Step47HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step47HeadFvAfter,s2Step47HeadFvBefore,s2Step47HeadGvAfter,s2Step47HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step47HeadFv_checked : planRowResizeLog s2Step47HeadFvBefore s2Step47HeadFvRow 37 s2Step47HeadFvFresh=
    some (s2Step47HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩,growRow 770 s2Step47HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step47HeadFvBefore s2Step47HeadFvAfter s2Step47HeadFvRow 37 s2Step47HeadFvFresh
    s2Step47HeadFv_distinct s2Step47HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step47HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step47HeadFvRow.payload++s2Step47HeadFvFresh) s2Step47HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

end ECDSAAdd.Arithmetic.Paper935
