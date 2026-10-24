import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk2

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step48HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step48HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step48HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243],769⟩
def s2Step48HeadGFresh : List Wire := [806]
theorem s2Step48HeadG_distinct : (s2Step48HeadGRow.sign::s2Step48HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step48HeadG_owned : (s2Step48HeadGRow.sign::s2Step48HeadGRow.payload).toFinset⊆s2Step48HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step48HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48HeadG_reserved : s2Step48HeadGBefore.reserve s2Step48HeadGFresh.toFinset=some s2Step48HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step48HeadGFresh,arenaWires]
  · norm_num [s2Step48HeadGBefore,s2Step48HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step48HeadGAfter,s2Step48HeadGBefore,s2Step48HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step48HeadG_checked : planRowResizeLog s2Step48HeadGBefore s2Step48HeadGRow 245 s2Step48HeadGFresh=
    some (s2Step48HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 806],769⟩,growRow 769 s2Step48HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step48HeadGBefore s2Step48HeadGAfter s2Step48HeadGRow 245 s2Step48HeadGFresh
    s2Step48HeadG_distinct s2Step48HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step48HeadG_reserved
  have rowEq : WindowRow.mk (s2Step48HeadGRow.payload++s2Step48HeadGFresh) s2Step48HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 806],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step48HeadFBefore : Arena := s2Step48HeadGAfter
def s2Step48HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step48HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755],768⟩
def s2Step48HeadFFresh : List Wire := [805]
theorem s2Step48HeadF_distinct : (s2Step48HeadFRow.sign::s2Step48HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step48HeadF_owned : (s2Step48HeadFRow.sign::s2Step48HeadFRow.payload).toFinset⊆s2Step48HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step48HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48HeadF_reserved : s2Step48HeadFBefore.reserve s2Step48HeadFFresh.toFinset=some s2Step48HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step48HeadFFresh,arenaWires]
  · norm_num [s2Step48HeadFBefore,s2Step48HeadGAfter,s2Step48HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step48HeadFAfter,s2Step48HeadFBefore,s2Step48HeadGAfter,s2Step48HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step48HeadF_checked : planRowResizeLog s2Step48HeadFBefore s2Step48HeadFRow 245 s2Step48HeadFFresh=
    some (s2Step48HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 805],768⟩,growRow 768 s2Step48HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step48HeadFBefore s2Step48HeadFAfter s2Step48HeadFRow 245 s2Step48HeadFFresh
    s2Step48HeadF_distinct s2Step48HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step48HeadF_reserved
  have rowEq : WindowRow.mk (s2Step48HeadFRow.payload++s2Step48HeadFFresh) s2Step48HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 805],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step48HeadGvBefore : Arena := s2Step48HeadFAfter
def s2Step48HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step48HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩
def s2Step48HeadGvFresh : List Wire := [787]
theorem s2Step48HeadGv_distinct : (s2Step48HeadGvRow.sign::s2Step48HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step48HeadGv_owned : (s2Step48HeadGvRow.sign::s2Step48HeadGvRow.payload).toFinset⊆s2Step48HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step48HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48HeadGv_reserved : s2Step48HeadGvBefore.reserve s2Step48HeadGvFresh.toFinset=some s2Step48HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step48HeadGvFresh,arenaWires]
  · norm_num [s2Step48HeadGvBefore,s2Step48HeadFAfter,s2Step48HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step48HeadGvAfter,s2Step48HeadGvBefore,s2Step48HeadFAfter,s2Step48HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step48HeadGv_checked : planRowResizeLog s2Step48HeadGvBefore s2Step48HeadGvRow 38 s2Step48HeadGvFresh=
    some (s2Step48HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 787],771⟩,growRow 771 s2Step48HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step48HeadGvBefore s2Step48HeadGvAfter s2Step48HeadGvRow 38 s2Step48HeadGvFresh
    s2Step48HeadGv_distinct s2Step48HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step48HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step48HeadGvRow.payload++s2Step48HeadGvFresh) s2Step48HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 787],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step48HeadFvBefore : Arena := s2Step48HeadGvAfter
def s2Step48HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step48HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩
def s2Step48HeadFvFresh : List Wire := [790]
theorem s2Step48HeadFv_distinct : (s2Step48HeadFvRow.sign::s2Step48HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step48HeadFv_owned : (s2Step48HeadFvRow.sign::s2Step48HeadFvRow.payload).toFinset⊆s2Step48HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step48HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48HeadFv_reserved : s2Step48HeadFvBefore.reserve s2Step48HeadFvFresh.toFinset=some s2Step48HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step48HeadFvFresh,arenaWires]
  · norm_num [s2Step48HeadFvBefore,s2Step48HeadGvAfter,s2Step48HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step48HeadFvAfter,s2Step48HeadFvBefore,s2Step48HeadGvAfter,s2Step48HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step48HeadFv_checked : planRowResizeLog s2Step48HeadFvBefore s2Step48HeadFvRow 38 s2Step48HeadFvFresh=
    some (s2Step48HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 790],770⟩,growRow 770 s2Step48HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step48HeadFvBefore s2Step48HeadFvAfter s2Step48HeadFvRow 38 s2Step48HeadFvFresh
    s2Step48HeadFv_distinct s2Step48HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step48HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step48HeadFvRow.payload++s2Step48HeadFvFresh) s2Step48HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step49HeadGBefore : Arena := s2Step48HeadGBefore
def s2Step49HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step49HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 803],769⟩
def s2Step49HeadGFresh : List Wire := [787]
theorem s2Step49HeadG_distinct : (s2Step49HeadGRow.sign::s2Step49HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step49HeadG_owned : (s2Step49HeadGRow.sign::s2Step49HeadGRow.payload).toFinset⊆s2Step49HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step49HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49HeadG_reserved : s2Step49HeadGBefore.reserve s2Step49HeadGFresh.toFinset=some s2Step49HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step49HeadGFresh,arenaWires]
  · norm_num [s2Step49HeadGBefore,s2Step48HeadGBefore,s2Step49HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step49HeadGAfter,s2Step49HeadGBefore,s2Step48HeadGBefore,s2Step49HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step49HeadG_checked : planRowResizeLog s2Step49HeadGBefore s2Step49HeadGRow 245 s2Step49HeadGFresh=
    some (s2Step49HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 803, 787],769⟩,growRow 769 s2Step49HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step49HeadGBefore s2Step49HeadGAfter s2Step49HeadGRow 245 s2Step49HeadGFresh
    s2Step49HeadG_distinct s2Step49HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step49HeadG_reserved
  have rowEq : WindowRow.mk (s2Step49HeadGRow.payload++s2Step49HeadGFresh) s2Step49HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 803, 787],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step49HeadFBefore : Arena := s2Step49HeadGAfter
def s2Step49HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step49HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755],768⟩
def s2Step49HeadFFresh : List Wire := [790]
theorem s2Step49HeadF_distinct : (s2Step49HeadFRow.sign::s2Step49HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step49HeadF_owned : (s2Step49HeadFRow.sign::s2Step49HeadFRow.payload).toFinset⊆s2Step49HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step49HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49HeadF_reserved : s2Step49HeadFBefore.reserve s2Step49HeadFFresh.toFinset=some s2Step49HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step49HeadFFresh,arenaWires]
  · norm_num [s2Step49HeadFBefore,s2Step49HeadGAfter,s2Step49HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step49HeadFAfter,s2Step49HeadFBefore,s2Step49HeadGAfter,s2Step49HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step49HeadF_checked : planRowResizeLog s2Step49HeadFBefore s2Step49HeadFRow 245 s2Step49HeadFFresh=
    some (s2Step49HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 790],768⟩,growRow 768 s2Step49HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step49HeadFBefore s2Step49HeadFAfter s2Step49HeadFRow 245 s2Step49HeadFFresh
    s2Step49HeadF_distinct s2Step49HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step49HeadF_reserved
  have rowEq : WindowRow.mk (s2Step49HeadFRow.payload++s2Step49HeadFFresh) s2Step49HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 790],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step49HeadGvBefore : Arena := s2Step49HeadFAfter
def s2Step49HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step49HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩
def s2Step49HeadGvFresh : List Wire := [805]
theorem s2Step49HeadGv_distinct : (s2Step49HeadGvRow.sign::s2Step49HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step49HeadGv_owned : (s2Step49HeadGvRow.sign::s2Step49HeadGvRow.payload).toFinset⊆s2Step49HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step49HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49HeadGv_reserved : s2Step49HeadGvBefore.reserve s2Step49HeadGvFresh.toFinset=some s2Step49HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step49HeadGvFresh,arenaWires]
  · norm_num [s2Step49HeadGvBefore,s2Step49HeadFAfter,s2Step49HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step49HeadGvAfter,s2Step49HeadGvBefore,s2Step49HeadFAfter,s2Step49HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step49HeadGv_checked : planRowResizeLog s2Step49HeadGvBefore s2Step49HeadGvRow 38 s2Step49HeadGvFresh=
    some (s2Step49HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 805],771⟩,growRow 771 s2Step49HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step49HeadGvBefore s2Step49HeadGvAfter s2Step49HeadGvRow 38 s2Step49HeadGvFresh
    s2Step49HeadGv_distinct s2Step49HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step49HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step49HeadGvRow.payload++s2Step49HeadGvFresh) s2Step49HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 805],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step49HeadFvBefore : Arena := s2Step49HeadGvAfter
def s2Step49HeadFvAfter : Arena := s2Step48HeadFvAfter
def s2Step49HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩
def s2Step49HeadFvFresh : List Wire := [806]
theorem s2Step49HeadFv_distinct : (s2Step49HeadFvRow.sign::s2Step49HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step49HeadFv_owned : (s2Step49HeadFvRow.sign::s2Step49HeadFvRow.payload).toFinset⊆s2Step49HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step49HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49HeadFv_reserved : s2Step49HeadFvBefore.reserve s2Step49HeadFvFresh.toFinset=some s2Step49HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step49HeadFvFresh,arenaWires]
  · norm_num [s2Step49HeadFvBefore,s2Step49HeadGvAfter,s2Step49HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step49HeadFvAfter,s2Step48HeadFvAfter,s2Step49HeadFvBefore,s2Step49HeadGvAfter,s2Step49HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step49HeadFv_checked : planRowResizeLog s2Step49HeadFvBefore s2Step49HeadFvRow 38 s2Step49HeadFvFresh=
    some (s2Step49HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806],770⟩,growRow 770 s2Step49HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step49HeadFvBefore s2Step49HeadFvAfter s2Step49HeadFvRow 38 s2Step49HeadFvFresh
    s2Step49HeadFv_distinct s2Step49HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step49HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step49HeadFvRow.payload++s2Step49HeadFvFresh) s2Step49HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step50HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step50HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step50HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242],769⟩
def s2Step50HeadGFresh : List Wire := [805]
theorem s2Step50HeadG_distinct : (s2Step50HeadGRow.sign::s2Step50HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step50HeadG_owned : (s2Step50HeadGRow.sign::s2Step50HeadGRow.payload).toFinset⊆s2Step50HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step50HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50HeadG_reserved : s2Step50HeadGBefore.reserve s2Step50HeadGFresh.toFinset=some s2Step50HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step50HeadGFresh,arenaWires]
  · norm_num [s2Step50HeadGBefore,s2Step50HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step50HeadGAfter,s2Step50HeadGBefore,s2Step50HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step50HeadG_checked : planRowResizeLog s2Step50HeadGBefore s2Step50HeadGRow 244 s2Step50HeadGFresh=
    some (s2Step50HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 805],769⟩,growRow 769 s2Step50HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step50HeadGBefore s2Step50HeadGAfter s2Step50HeadGRow 244 s2Step50HeadGFresh
    s2Step50HeadG_distinct s2Step50HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step50HeadG_reserved
  have rowEq : WindowRow.mk (s2Step50HeadGRow.payload++s2Step50HeadGFresh) s2Step50HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 805],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step50HeadFBefore : Arena := s2Step50HeadGAfter
def s2Step50HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step50HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754],768⟩
def s2Step50HeadFFresh : List Wire := [790]
theorem s2Step50HeadF_distinct : (s2Step50HeadFRow.sign::s2Step50HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step50HeadF_owned : (s2Step50HeadFRow.sign::s2Step50HeadFRow.payload).toFinset⊆s2Step50HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step50HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50HeadF_reserved : s2Step50HeadFBefore.reserve s2Step50HeadFFresh.toFinset=some s2Step50HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step50HeadFFresh,arenaWires]
  · norm_num [s2Step50HeadFBefore,s2Step50HeadGAfter,s2Step50HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step50HeadFAfter,s2Step50HeadFBefore,s2Step50HeadGAfter,s2Step50HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step50HeadF_checked : planRowResizeLog s2Step50HeadFBefore s2Step50HeadFRow 244 s2Step50HeadFFresh=
    some (s2Step50HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 790],768⟩,growRow 768 s2Step50HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step50HeadFBefore s2Step50HeadFAfter s2Step50HeadFRow 244 s2Step50HeadFFresh
    s2Step50HeadF_distinct s2Step50HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step50HeadF_reserved
  have rowEq : WindowRow.mk (s2Step50HeadFRow.payload++s2Step50HeadFFresh) s2Step50HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 790],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step50HeadGvBefore : Arena := s2Step50HeadFAfter
def s2Step50HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step50HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 808],771⟩
def s2Step50HeadGvFresh : List Wire := [803]
theorem s2Step50HeadGv_distinct : (s2Step50HeadGvRow.sign::s2Step50HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step50HeadGv_owned : (s2Step50HeadGvRow.sign::s2Step50HeadGvRow.payload).toFinset⊆s2Step50HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step50HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50HeadGv_reserved : s2Step50HeadGvBefore.reserve s2Step50HeadGvFresh.toFinset=some s2Step50HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step50HeadGvFresh,arenaWires]
  · norm_num [s2Step50HeadGvBefore,s2Step50HeadFAfter,s2Step50HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step50HeadGvAfter,s2Step50HeadGvBefore,s2Step50HeadFAfter,s2Step50HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step50HeadGv_checked : planRowResizeLog s2Step50HeadGvBefore s2Step50HeadGvRow 39 s2Step50HeadGvFresh=
    some (s2Step50HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 808, 803],771⟩,growRow 771 s2Step50HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step50HeadGvBefore s2Step50HeadGvAfter s2Step50HeadGvRow 39 s2Step50HeadGvFresh
    s2Step50HeadGv_distinct s2Step50HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step50HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step50HeadGvRow.payload++s2Step50HeadGvFresh) s2Step50HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 808, 803],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step50HeadFvBefore : Arena := s2Step50HeadGvAfter
def s2Step50HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step50HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806],770⟩
def s2Step50HeadFvFresh : List Wire := [787]
theorem s2Step50HeadFv_distinct : (s2Step50HeadFvRow.sign::s2Step50HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step50HeadFv_owned : (s2Step50HeadFvRow.sign::s2Step50HeadFvRow.payload).toFinset⊆s2Step50HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step50HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50HeadFv_reserved : s2Step50HeadFvBefore.reserve s2Step50HeadFvFresh.toFinset=some s2Step50HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step50HeadFvFresh,arenaWires]
  · norm_num [s2Step50HeadFvBefore,s2Step50HeadGvAfter,s2Step50HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step50HeadFvAfter,s2Step50HeadFvBefore,s2Step50HeadGvAfter,s2Step50HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step50HeadFv_checked : planRowResizeLog s2Step50HeadFvBefore s2Step50HeadFvRow 39 s2Step50HeadFvFresh=
    some (s2Step50HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 787],770⟩,growRow 770 s2Step50HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step50HeadFvBefore s2Step50HeadFvAfter s2Step50HeadFvRow 39 s2Step50HeadFvFresh
    s2Step50HeadFv_distinct s2Step50HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step50HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step50HeadFvRow.payload++s2Step50HeadFvFresh) s2Step50HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step51HeadGBefore : Arena := s2Step50HeadGBefore
def s2Step51HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step51HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 807],769⟩
def s2Step51HeadGFresh : List Wire := [803]
theorem s2Step51HeadG_distinct : (s2Step51HeadGRow.sign::s2Step51HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step51HeadG_owned : (s2Step51HeadGRow.sign::s2Step51HeadGRow.payload).toFinset⊆s2Step51HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step51HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51HeadG_reserved : s2Step51HeadGBefore.reserve s2Step51HeadGFresh.toFinset=some s2Step51HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step51HeadGFresh,arenaWires]
  · norm_num [s2Step51HeadGBefore,s2Step50HeadGBefore,s2Step51HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step51HeadGAfter,s2Step51HeadGBefore,s2Step50HeadGBefore,s2Step51HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step51HeadG_checked : planRowResizeLog s2Step51HeadGBefore s2Step51HeadGRow 244 s2Step51HeadGFresh=
    some (s2Step51HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 807, 803],769⟩,growRow 769 s2Step51HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step51HeadGBefore s2Step51HeadGAfter s2Step51HeadGRow 244 s2Step51HeadGFresh
    s2Step51HeadG_distinct s2Step51HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step51HeadG_reserved
  have rowEq : WindowRow.mk (s2Step51HeadGRow.payload++s2Step51HeadGFresh) s2Step51HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 807, 803],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step51HeadFBefore : Arena := s2Step51HeadGAfter
def s2Step51HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step51HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754],768⟩
def s2Step51HeadFFresh : List Wire := [787]
theorem s2Step51HeadF_distinct : (s2Step51HeadFRow.sign::s2Step51HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step51HeadF_owned : (s2Step51HeadFRow.sign::s2Step51HeadFRow.payload).toFinset⊆s2Step51HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step51HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51HeadF_reserved : s2Step51HeadFBefore.reserve s2Step51HeadFFresh.toFinset=some s2Step51HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step51HeadFFresh,arenaWires]
  · norm_num [s2Step51HeadFBefore,s2Step51HeadGAfter,s2Step51HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step51HeadFAfter,s2Step51HeadFBefore,s2Step51HeadGAfter,s2Step51HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step51HeadF_checked : planRowResizeLog s2Step51HeadFBefore s2Step51HeadFRow 244 s2Step51HeadFFresh=
    some (s2Step51HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 787],768⟩,growRow 768 s2Step51HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step51HeadFBefore s2Step51HeadFAfter s2Step51HeadFRow 244 s2Step51HeadFFresh
    s2Step51HeadF_distinct s2Step51HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step51HeadF_reserved
  have rowEq : WindowRow.mk (s2Step51HeadFRow.payload++s2Step51HeadFFresh) s2Step51HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 787],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step51HeadGvBefore : Arena := s2Step51HeadFAfter
def s2Step51HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step51HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798],771⟩
def s2Step51HeadGvFresh : List Wire := [790]
theorem s2Step51HeadGv_distinct : (s2Step51HeadGvRow.sign::s2Step51HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step51HeadGv_owned : (s2Step51HeadGvRow.sign::s2Step51HeadGvRow.payload).toFinset⊆s2Step51HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step51HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51HeadGv_reserved : s2Step51HeadGvBefore.reserve s2Step51HeadGvFresh.toFinset=some s2Step51HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step51HeadGvFresh,arenaWires]
  · norm_num [s2Step51HeadGvBefore,s2Step51HeadFAfter,s2Step51HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step51HeadGvAfter,s2Step51HeadGvBefore,s2Step51HeadFAfter,s2Step51HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step51HeadGv_checked : planRowResizeLog s2Step51HeadGvBefore s2Step51HeadGvRow 39 s2Step51HeadGvFresh=
    some (s2Step51HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 790],771⟩,growRow 771 s2Step51HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step51HeadGvBefore s2Step51HeadGvAfter s2Step51HeadGvRow 39 s2Step51HeadGvFresh
    s2Step51HeadGv_distinct s2Step51HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step51HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step51HeadGvRow.payload++s2Step51HeadGvFresh) s2Step51HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 790],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step51HeadFvBefore : Arena := s2Step51HeadGvAfter
def s2Step51HeadFvAfter : Arena := s2Step50HeadFvAfter
def s2Step51HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806],770⟩
def s2Step51HeadFvFresh : List Wire := [805]
theorem s2Step51HeadFv_distinct : (s2Step51HeadFvRow.sign::s2Step51HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step51HeadFv_owned : (s2Step51HeadFvRow.sign::s2Step51HeadFvRow.payload).toFinset⊆s2Step51HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step51HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51HeadFv_reserved : s2Step51HeadFvBefore.reserve s2Step51HeadFvFresh.toFinset=some s2Step51HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step51HeadFvFresh,arenaWires]
  · norm_num [s2Step51HeadFvBefore,s2Step51HeadGvAfter,s2Step51HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step51HeadFvAfter,s2Step50HeadFvAfter,s2Step51HeadFvBefore,s2Step51HeadGvAfter,s2Step51HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step51HeadFv_checked : planRowResizeLog s2Step51HeadFvBefore s2Step51HeadFvRow 39 s2Step51HeadFvFresh=
    some (s2Step51HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805],770⟩,growRow 770 s2Step51HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step51HeadFvBefore s2Step51HeadFvAfter s2Step51HeadFvRow 39 s2Step51HeadFvFresh
    s2Step51HeadFv_distinct s2Step51HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step51HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step51HeadFvRow.payload++s2Step51HeadFvFresh) s2Step51HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step52HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step52HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step52HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241],769⟩
def s2Step52HeadGFresh : List Wire := [790]
theorem s2Step52HeadG_distinct : (s2Step52HeadGRow.sign::s2Step52HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step52HeadG_owned : (s2Step52HeadGRow.sign::s2Step52HeadGRow.payload).toFinset⊆s2Step52HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step52HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52HeadG_reserved : s2Step52HeadGBefore.reserve s2Step52HeadGFresh.toFinset=some s2Step52HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step52HeadGFresh,arenaWires]
  · norm_num [s2Step52HeadGBefore,s2Step52HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step52HeadGAfter,s2Step52HeadGBefore,s2Step52HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step52HeadG_checked : planRowResizeLog s2Step52HeadGBefore s2Step52HeadGRow 243 s2Step52HeadGFresh=
    some (s2Step52HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 790],769⟩,growRow 769 s2Step52HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step52HeadGBefore s2Step52HeadGAfter s2Step52HeadGRow 243 s2Step52HeadGFresh
    s2Step52HeadG_distinct s2Step52HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step52HeadG_reserved
  have rowEq : WindowRow.mk (s2Step52HeadGRow.payload++s2Step52HeadGFresh) s2Step52HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 790],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step52HeadFBefore : Arena := s2Step52HeadGAfter
def s2Step52HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step52HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753],768⟩
def s2Step52HeadFFresh : List Wire := [787]
theorem s2Step52HeadF_distinct : (s2Step52HeadFRow.sign::s2Step52HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step52HeadF_owned : (s2Step52HeadFRow.sign::s2Step52HeadFRow.payload).toFinset⊆s2Step52HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step52HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52HeadF_reserved : s2Step52HeadFBefore.reserve s2Step52HeadFFresh.toFinset=some s2Step52HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step52HeadFFresh,arenaWires]
  · norm_num [s2Step52HeadFBefore,s2Step52HeadGAfter,s2Step52HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step52HeadFAfter,s2Step52HeadFBefore,s2Step52HeadGAfter,s2Step52HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step52HeadF_checked : planRowResizeLog s2Step52HeadFBefore s2Step52HeadFRow 243 s2Step52HeadFFresh=
    some (s2Step52HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 787],768⟩,growRow 768 s2Step52HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step52HeadFBefore s2Step52HeadFAfter s2Step52HeadFRow 243 s2Step52HeadFFresh
    s2Step52HeadF_distinct s2Step52HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step52HeadF_reserved
  have rowEq : WindowRow.mk (s2Step52HeadFRow.payload++s2Step52HeadFFresh) s2Step52HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 787],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step52HeadGvBefore : Arena := s2Step52HeadFAfter
def s2Step52HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step52HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 808],771⟩
def s2Step52HeadGvFresh : List Wire := [807]
theorem s2Step52HeadGv_distinct : (s2Step52HeadGvRow.sign::s2Step52HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step52HeadGv_owned : (s2Step52HeadGvRow.sign::s2Step52HeadGvRow.payload).toFinset⊆s2Step52HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step52HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52HeadGv_reserved : s2Step52HeadGvBefore.reserve s2Step52HeadGvFresh.toFinset=some s2Step52HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step52HeadGvFresh,arenaWires]
  · norm_num [s2Step52HeadGvBefore,s2Step52HeadFAfter,s2Step52HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step52HeadGvAfter,s2Step52HeadGvBefore,s2Step52HeadFAfter,s2Step52HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step52HeadGv_checked : planRowResizeLog s2Step52HeadGvBefore s2Step52HeadGvRow 40 s2Step52HeadGvFresh=
    some (s2Step52HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 808, 807],771⟩,growRow 771 s2Step52HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step52HeadGvBefore s2Step52HeadGvAfter s2Step52HeadGvRow 40 s2Step52HeadGvFresh
    s2Step52HeadGv_distinct s2Step52HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step52HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step52HeadGvRow.payload++s2Step52HeadGvFresh) s2Step52HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 808, 807],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step52HeadFvBefore : Arena := s2Step52HeadGvAfter
def s2Step52HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step52HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805],770⟩
def s2Step52HeadFvFresh : List Wire := [803]
theorem s2Step52HeadFv_distinct : (s2Step52HeadFvRow.sign::s2Step52HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step52HeadFv_owned : (s2Step52HeadFvRow.sign::s2Step52HeadFvRow.payload).toFinset⊆s2Step52HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step52HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52HeadFv_reserved : s2Step52HeadFvBefore.reserve s2Step52HeadFvFresh.toFinset=some s2Step52HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step52HeadFvFresh,arenaWires]
  · norm_num [s2Step52HeadFvBefore,s2Step52HeadGvAfter,s2Step52HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step52HeadFvAfter,s2Step52HeadFvBefore,s2Step52HeadGvAfter,s2Step52HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step52HeadFv_checked : planRowResizeLog s2Step52HeadFvBefore s2Step52HeadFvRow 40 s2Step52HeadFvFresh=
    some (s2Step52HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803],770⟩,growRow 770 s2Step52HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step52HeadFvBefore s2Step52HeadFvAfter s2Step52HeadFvRow 40 s2Step52HeadFvFresh
    s2Step52HeadFv_distinct s2Step52HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step52HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step52HeadFvRow.payload++s2Step52HeadFvFresh) s2Step52HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step53HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step53HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step53HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240],769⟩
def s2Step53HeadGFresh : List Wire := [812]
theorem s2Step53HeadG_distinct : (s2Step53HeadGRow.sign::s2Step53HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step53HeadG_owned : (s2Step53HeadGRow.sign::s2Step53HeadGRow.payload).toFinset⊆s2Step53HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step53HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53HeadG_reserved : s2Step53HeadGBefore.reserve s2Step53HeadGFresh.toFinset=some s2Step53HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step53HeadGFresh,arenaWires]
  · norm_num [s2Step53HeadGBefore,s2Step53HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step53HeadGAfter,s2Step53HeadGBefore,s2Step53HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step53HeadG_checked : planRowResizeLog s2Step53HeadGBefore s2Step53HeadGRow 242 s2Step53HeadGFresh=
    some (s2Step53HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 812],769⟩,growRow 769 s2Step53HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step53HeadGBefore s2Step53HeadGAfter s2Step53HeadGRow 242 s2Step53HeadGFresh
    s2Step53HeadG_distinct s2Step53HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step53HeadG_reserved
  have rowEq : WindowRow.mk (s2Step53HeadGRow.payload++s2Step53HeadGFresh) s2Step53HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 812],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step53HeadFBefore : Arena := s2Step53HeadGAfter
def s2Step53HeadFAfter : Arena := s2Step52HeadGBefore
def s2Step53HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752],768⟩
def s2Step53HeadFFresh : List Wire := [808]
theorem s2Step53HeadF_distinct : (s2Step53HeadFRow.sign::s2Step53HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step53HeadF_owned : (s2Step53HeadFRow.sign::s2Step53HeadFRow.payload).toFinset⊆s2Step53HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step53HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53HeadF_reserved : s2Step53HeadFBefore.reserve s2Step53HeadFFresh.toFinset=some s2Step53HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step53HeadFFresh,arenaWires]
  · norm_num [s2Step53HeadFBefore,s2Step53HeadGAfter,s2Step53HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step53HeadFAfter,s2Step52HeadGBefore,s2Step53HeadFBefore,s2Step53HeadGAfter,s2Step53HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step53HeadF_checked : planRowResizeLog s2Step53HeadFBefore s2Step53HeadFRow 242 s2Step53HeadFFresh=
    some (s2Step53HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 808],768⟩,growRow 768 s2Step53HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step53HeadFBefore s2Step53HeadFAfter s2Step53HeadFRow 242 s2Step53HeadFFresh
    s2Step53HeadF_distinct s2Step53HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step53HeadF_reserved
  have rowEq : WindowRow.mk (s2Step53HeadFRow.payload++s2Step53HeadFFresh) s2Step53HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 808],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step53HeadGvBefore : Arena := s2Step52HeadGBefore
def s2Step53HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step53HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809],771⟩
def s2Step53HeadGvFresh : List Wire := [807]
theorem s2Step53HeadGv_distinct : (s2Step53HeadGvRow.sign::s2Step53HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step53HeadGv_owned : (s2Step53HeadGvRow.sign::s2Step53HeadGvRow.payload).toFinset⊆s2Step53HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step53HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53HeadGv_reserved : s2Step53HeadGvBefore.reserve s2Step53HeadGvFresh.toFinset=some s2Step53HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step53HeadGvFresh,arenaWires]
  · norm_num [s2Step53HeadGvBefore,s2Step52HeadGBefore,s2Step53HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step53HeadGvAfter,s2Step53HeadGvBefore,s2Step52HeadGBefore,s2Step53HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step53HeadGv_checked : planRowResizeLog s2Step53HeadGvBefore s2Step53HeadGvRow 40 s2Step53HeadGvFresh=
    some (s2Step53HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 807],771⟩,growRow 771 s2Step53HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step53HeadGvBefore s2Step53HeadGvAfter s2Step53HeadGvRow 40 s2Step53HeadGvFresh
    s2Step53HeadGv_distinct s2Step53HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step53HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step53HeadGvRow.payload++s2Step53HeadGvFresh) s2Step53HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 807],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step53HeadFvBefore : Arena := s2Step53HeadGvAfter
def s2Step53HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step53HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805],770⟩
def s2Step53HeadFvFresh : List Wire := [803]
theorem s2Step53HeadFv_distinct : (s2Step53HeadFvRow.sign::s2Step53HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step53HeadFv_owned : (s2Step53HeadFvRow.sign::s2Step53HeadFvRow.payload).toFinset⊆s2Step53HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step53HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53HeadFv_reserved : s2Step53HeadFvBefore.reserve s2Step53HeadFvFresh.toFinset=some s2Step53HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step53HeadFvFresh,arenaWires]
  · norm_num [s2Step53HeadFvBefore,s2Step53HeadGvAfter,s2Step53HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step53HeadFvAfter,s2Step53HeadFvBefore,s2Step53HeadGvAfter,s2Step53HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step53HeadFv_checked : planRowResizeLog s2Step53HeadFvBefore s2Step53HeadFvRow 40 s2Step53HeadFvFresh=
    some (s2Step53HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803],770⟩,growRow 770 s2Step53HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step53HeadFvBefore s2Step53HeadFvAfter s2Step53HeadFvRow 40 s2Step53HeadFvFresh
    s2Step53HeadFv_distinct s2Step53HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step53HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step53HeadFvRow.payload++s2Step53HeadFvFresh) s2Step53HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step54HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step54HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step54HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240],769⟩
def s2Step54HeadGFresh : List Wire := [808]
theorem s2Step54HeadG_distinct : (s2Step54HeadGRow.sign::s2Step54HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step54HeadG_owned : (s2Step54HeadGRow.sign::s2Step54HeadGRow.payload).toFinset⊆s2Step54HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step54HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54HeadG_reserved : s2Step54HeadGBefore.reserve s2Step54HeadGFresh.toFinset=some s2Step54HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step54HeadGFresh,arenaWires]
  · norm_num [s2Step54HeadGBefore,s2Step54HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step54HeadGAfter,s2Step54HeadGBefore,s2Step54HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step54HeadG_checked : planRowResizeLog s2Step54HeadGBefore s2Step54HeadGRow 242 s2Step54HeadGFresh=
    some (s2Step54HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 808],769⟩,growRow 769 s2Step54HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step54HeadGBefore s2Step54HeadGAfter s2Step54HeadGRow 242 s2Step54HeadGFresh
    s2Step54HeadG_distinct s2Step54HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step54HeadG_reserved
  have rowEq : WindowRow.mk (s2Step54HeadGRow.payload++s2Step54HeadGFresh) s2Step54HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 808],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step54HeadFBefore : Arena := s2Step54HeadGAfter
def s2Step54HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step54HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752],768⟩
def s2Step54HeadFFresh : List Wire := [812]
theorem s2Step54HeadF_distinct : (s2Step54HeadFRow.sign::s2Step54HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step54HeadF_owned : (s2Step54HeadFRow.sign::s2Step54HeadFRow.payload).toFinset⊆s2Step54HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step54HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54HeadF_reserved : s2Step54HeadFBefore.reserve s2Step54HeadFFresh.toFinset=some s2Step54HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step54HeadFFresh,arenaWires]
  · norm_num [s2Step54HeadFBefore,s2Step54HeadGAfter,s2Step54HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step54HeadFAfter,s2Step54HeadFBefore,s2Step54HeadGAfter,s2Step54HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step54HeadF_checked : planRowResizeLog s2Step54HeadFBefore s2Step54HeadFRow 242 s2Step54HeadFFresh=
    some (s2Step54HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 812],768⟩,growRow 768 s2Step54HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step54HeadFBefore s2Step54HeadFAfter s2Step54HeadFRow 242 s2Step54HeadFFresh
    s2Step54HeadF_distinct s2Step54HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step54HeadF_reserved
  have rowEq : WindowRow.mk (s2Step54HeadFRow.payload++s2Step54HeadFFresh) s2Step54HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 812],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step54HeadGvBefore : Arena := s2Step54HeadFAfter
def s2Step54HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step54HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811],771⟩
def s2Step54HeadGvFresh : List Wire := [787]
theorem s2Step54HeadGv_distinct : (s2Step54HeadGvRow.sign::s2Step54HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step54HeadGv_owned : (s2Step54HeadGvRow.sign::s2Step54HeadGvRow.payload).toFinset⊆s2Step54HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step54HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54HeadGv_reserved : s2Step54HeadGvBefore.reserve s2Step54HeadGvFresh.toFinset=some s2Step54HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step54HeadGvFresh,arenaWires]
  · norm_num [s2Step54HeadGvBefore,s2Step54HeadFAfter,s2Step54HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step54HeadGvAfter,s2Step54HeadGvBefore,s2Step54HeadFAfter,s2Step54HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step54HeadGv_checked : planRowResizeLog s2Step54HeadGvBefore s2Step54HeadGvRow 41 s2Step54HeadGvFresh=
    some (s2Step54HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 787],771⟩,growRow 771 s2Step54HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step54HeadGvBefore s2Step54HeadGvAfter s2Step54HeadGvRow 41 s2Step54HeadGvFresh
    s2Step54HeadGv_distinct s2Step54HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step54HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step54HeadGvRow.payload++s2Step54HeadGvFresh) s2Step54HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 787],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step54HeadFvBefore : Arena := s2Step54HeadGvAfter
def s2Step54HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step54HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803],770⟩
def s2Step54HeadFvFresh : List Wire := [790]
theorem s2Step54HeadFv_distinct : (s2Step54HeadFvRow.sign::s2Step54HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step54HeadFv_owned : (s2Step54HeadFvRow.sign::s2Step54HeadFvRow.payload).toFinset⊆s2Step54HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step54HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54HeadFv_reserved : s2Step54HeadFvBefore.reserve s2Step54HeadFvFresh.toFinset=some s2Step54HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step54HeadFvFresh,arenaWires]
  · norm_num [s2Step54HeadFvBefore,s2Step54HeadGvAfter,s2Step54HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step54HeadFvAfter,s2Step54HeadFvBefore,s2Step54HeadGvAfter,s2Step54HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step54HeadFv_checked : planRowResizeLog s2Step54HeadFvBefore s2Step54HeadFvRow 41 s2Step54HeadFvFresh=
    some (s2Step54HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 790],770⟩,growRow 770 s2Step54HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step54HeadFvBefore s2Step54HeadFvAfter s2Step54HeadFvRow 41 s2Step54HeadFvFresh
    s2Step54HeadFv_distinct s2Step54HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step54HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step54HeadFvRow.payload++s2Step54HeadFvFresh) s2Step54HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step55HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step55HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step55HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 807],769⟩
def s2Step55HeadGFresh : List Wire := [812]
theorem s2Step55HeadG_distinct : (s2Step55HeadGRow.sign::s2Step55HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step55HeadG_owned : (s2Step55HeadGRow.sign::s2Step55HeadGRow.payload).toFinset⊆s2Step55HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step55HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55HeadG_reserved : s2Step55HeadGBefore.reserve s2Step55HeadGFresh.toFinset=some s2Step55HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step55HeadGFresh,arenaWires]
  · norm_num [s2Step55HeadGBefore,s2Step55HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step55HeadGAfter,s2Step55HeadGBefore,s2Step55HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step55HeadG_checked : planRowResizeLog s2Step55HeadGBefore s2Step55HeadGRow 242 s2Step55HeadGFresh=
    some (s2Step55HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 807, 812],769⟩,growRow 769 s2Step55HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step55HeadGBefore s2Step55HeadGAfter s2Step55HeadGRow 242 s2Step55HeadGFresh
    s2Step55HeadG_distinct s2Step55HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step55HeadG_reserved
  have rowEq : WindowRow.mk (s2Step55HeadGRow.payload++s2Step55HeadGFresh) s2Step55HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 807, 812],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step55HeadFBefore : Arena := s2Step55HeadGAfter
def s2Step55HeadFAfter : Arena := s2Step54HeadFvAfter
def s2Step55HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752],768⟩
def s2Step55HeadFFresh : List Wire := [808]
theorem s2Step55HeadF_distinct : (s2Step55HeadFRow.sign::s2Step55HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step55HeadF_owned : (s2Step55HeadFRow.sign::s2Step55HeadFRow.payload).toFinset⊆s2Step55HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step55HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55HeadF_reserved : s2Step55HeadFBefore.reserve s2Step55HeadFFresh.toFinset=some s2Step55HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step55HeadFFresh,arenaWires]
  · norm_num [s2Step55HeadFBefore,s2Step55HeadGAfter,s2Step55HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step55HeadFAfter,s2Step54HeadFvAfter,s2Step55HeadFBefore,s2Step55HeadGAfter,s2Step55HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step55HeadF_checked : planRowResizeLog s2Step55HeadFBefore s2Step55HeadFRow 242 s2Step55HeadFFresh=
    some (s2Step55HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 808],768⟩,growRow 768 s2Step55HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step55HeadFBefore s2Step55HeadFAfter s2Step55HeadFRow 242 s2Step55HeadFFresh
    s2Step55HeadF_distinct s2Step55HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step55HeadF_reserved
  have rowEq : WindowRow.mk (s2Step55HeadFRow.payload++s2Step55HeadFFresh) s2Step55HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 808],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step55HeadGvBefore : Arena := s2Step54HeadFvAfter
def s2Step55HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step55HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩
def s2Step55HeadGvFresh : List Wire := [792]
theorem s2Step55HeadGv_distinct : (s2Step55HeadGvRow.sign::s2Step55HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step55HeadGv_owned : (s2Step55HeadGvRow.sign::s2Step55HeadGvRow.payload).toFinset⊆s2Step55HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step55HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55HeadGv_reserved : s2Step55HeadGvBefore.reserve s2Step55HeadGvFresh.toFinset=some s2Step55HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step55HeadGvFresh,arenaWires]
  · norm_num [s2Step55HeadGvBefore,s2Step54HeadFvAfter,s2Step55HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step55HeadGvAfter,s2Step55HeadGvBefore,s2Step54HeadFvAfter,s2Step55HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step55HeadGv_checked : planRowResizeLog s2Step55HeadGvBefore s2Step55HeadGvRow 42 s2Step55HeadGvFresh=
    some (s2Step55HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 792],771⟩,growRow 771 s2Step55HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step55HeadGvBefore s2Step55HeadGvAfter s2Step55HeadGvRow 42 s2Step55HeadGvFresh
    s2Step55HeadGv_distinct s2Step55HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step55HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step55HeadGvRow.payload++s2Step55HeadGvFresh) s2Step55HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 792],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step55HeadFvBefore : Arena := s2Step55HeadGvAfter
def s2Step55HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step55HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 790],770⟩
def s2Step55HeadFvFresh : List Wire := [800]
theorem s2Step55HeadFv_distinct : (s2Step55HeadFvRow.sign::s2Step55HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step55HeadFv_owned : (s2Step55HeadFvRow.sign::s2Step55HeadFvRow.payload).toFinset⊆s2Step55HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step55HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55HeadFv_reserved : s2Step55HeadFvBefore.reserve s2Step55HeadFvFresh.toFinset=some s2Step55HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step55HeadFvFresh,arenaWires]
  · norm_num [s2Step55HeadFvBefore,s2Step55HeadGvAfter,s2Step55HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step55HeadFvAfter,s2Step55HeadFvBefore,s2Step55HeadGvAfter,s2Step55HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step55HeadFv_checked : planRowResizeLog s2Step55HeadFvBefore s2Step55HeadFvRow 42 s2Step55HeadFvFresh=
    some (s2Step55HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 790, 800],770⟩,growRow 770 s2Step55HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step55HeadFvBefore s2Step55HeadFvAfter s2Step55HeadFvRow 42 s2Step55HeadFvFresh
    s2Step55HeadFv_distinct s2Step55HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step55HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step55HeadFvRow.payload++s2Step55HeadFvFresh) s2Step55HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 790, 800],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step56HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step56HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step56HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239],769⟩
def s2Step56HeadGFresh : List Wire := [792]
theorem s2Step56HeadG_distinct : (s2Step56HeadGRow.sign::s2Step56HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step56HeadG_owned : (s2Step56HeadGRow.sign::s2Step56HeadGRow.payload).toFinset⊆s2Step56HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step56HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56HeadG_reserved : s2Step56HeadGBefore.reserve s2Step56HeadGFresh.toFinset=some s2Step56HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step56HeadGFresh,arenaWires]
  · norm_num [s2Step56HeadGBefore,s2Step56HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step56HeadGAfter,s2Step56HeadGBefore,s2Step56HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step56HeadG_checked : planRowResizeLog s2Step56HeadGBefore s2Step56HeadGRow 241 s2Step56HeadGFresh=
    some (s2Step56HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 792],769⟩,growRow 769 s2Step56HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step56HeadGBefore s2Step56HeadGAfter s2Step56HeadGRow 241 s2Step56HeadGFresh
    s2Step56HeadG_distinct s2Step56HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step56HeadG_reserved
  have rowEq : WindowRow.mk (s2Step56HeadGRow.payload++s2Step56HeadGFresh) s2Step56HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 792],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step56HeadFBefore : Arena := s2Step56HeadGAfter
def s2Step56HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step56HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751],768⟩
def s2Step56HeadFFresh : List Wire := [790]
theorem s2Step56HeadF_distinct : (s2Step56HeadFRow.sign::s2Step56HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step56HeadF_owned : (s2Step56HeadFRow.sign::s2Step56HeadFRow.payload).toFinset⊆s2Step56HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step56HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56HeadF_reserved : s2Step56HeadFBefore.reserve s2Step56HeadFFresh.toFinset=some s2Step56HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step56HeadFFresh,arenaWires]
  · norm_num [s2Step56HeadFBefore,s2Step56HeadGAfter,s2Step56HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step56HeadFAfter,s2Step56HeadFBefore,s2Step56HeadGAfter,s2Step56HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step56HeadF_checked : planRowResizeLog s2Step56HeadFBefore s2Step56HeadFRow 241 s2Step56HeadFFresh=
    some (s2Step56HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 790],768⟩,growRow 768 s2Step56HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step56HeadFBefore s2Step56HeadFAfter s2Step56HeadFRow 241 s2Step56HeadFFresh
    s2Step56HeadF_distinct s2Step56HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step56HeadF_reserved
  have rowEq : WindowRow.mk (s2Step56HeadFRow.payload++s2Step56HeadFFresh) s2Step56HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 790],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step56HeadGvBefore : Arena := s2Step56HeadFAfter
def s2Step56HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step56HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩
def s2Step56HeadGvFresh : List Wire := [800]
theorem s2Step56HeadGv_distinct : (s2Step56HeadGvRow.sign::s2Step56HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step56HeadGv_owned : (s2Step56HeadGvRow.sign::s2Step56HeadGvRow.payload).toFinset⊆s2Step56HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step56HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56HeadGv_reserved : s2Step56HeadGvBefore.reserve s2Step56HeadGvFresh.toFinset=some s2Step56HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step56HeadGvFresh,arenaWires]
  · norm_num [s2Step56HeadGvBefore,s2Step56HeadFAfter,s2Step56HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step56HeadGvAfter,s2Step56HeadGvBefore,s2Step56HeadFAfter,s2Step56HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step56HeadGv_checked : planRowResizeLog s2Step56HeadGvBefore s2Step56HeadGvRow 42 s2Step56HeadGvFresh=
    some (s2Step56HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 800],771⟩,growRow 771 s2Step56HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step56HeadGvBefore s2Step56HeadGvAfter s2Step56HeadGvRow 42 s2Step56HeadGvFresh
    s2Step56HeadGv_distinct s2Step56HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step56HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step56HeadGvRow.payload++s2Step56HeadGvFresh) s2Step56HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 800],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step56HeadFvBefore : Arena := s2Step56HeadGvAfter
def s2Step56HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step56HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787],770⟩
def s2Step56HeadFvFresh : List Wire := [808]
theorem s2Step56HeadFv_distinct : (s2Step56HeadFvRow.sign::s2Step56HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step56HeadFv_owned : (s2Step56HeadFvRow.sign::s2Step56HeadFvRow.payload).toFinset⊆s2Step56HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step56HeadFvBefore (fun q => (0≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56HeadFv_reserved : s2Step56HeadFvBefore.reserve s2Step56HeadFvFresh.toFinset=some s2Step56HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step56HeadFvFresh,arenaWires]
  · norm_num [s2Step56HeadFvBefore,s2Step56HeadGvAfter,s2Step56HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step56HeadFvAfter,s2Step56HeadFvBefore,s2Step56HeadGvAfter,s2Step56HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step56HeadFv_checked : planRowResizeLog s2Step56HeadFvBefore s2Step56HeadFvRow 42 s2Step56HeadFvFresh=
    some (s2Step56HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808],770⟩,growRow 770 s2Step56HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step56HeadFvBefore s2Step56HeadFvAfter s2Step56HeadFvRow 42 s2Step56HeadFvFresh
    s2Step56HeadFv_distinct s2Step56HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step56HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step56HeadFvRow.payload++s2Step56HeadFvFresh) s2Step56HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step57HeadGBefore : Arena := s2Step56HeadGBefore
def s2Step57HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step57HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 814],769⟩
def s2Step57HeadGFresh : List Wire := [800]
theorem s2Step57HeadG_distinct : (s2Step57HeadGRow.sign::s2Step57HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step57HeadG_owned : (s2Step57HeadGRow.sign::s2Step57HeadGRow.payload).toFinset⊆s2Step57HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step57HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57HeadG_reserved : s2Step57HeadGBefore.reserve s2Step57HeadGFresh.toFinset=some s2Step57HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step57HeadGFresh,arenaWires]
  · norm_num [s2Step57HeadGBefore,s2Step56HeadGBefore,s2Step57HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step57HeadGAfter,s2Step57HeadGBefore,s2Step56HeadGBefore,s2Step57HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step57HeadG_checked : planRowResizeLog s2Step57HeadGBefore s2Step57HeadGRow 241 s2Step57HeadGFresh=
    some (s2Step57HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 814, 800],769⟩,growRow 769 s2Step57HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step57HeadGBefore s2Step57HeadGAfter s2Step57HeadGRow 241 s2Step57HeadGFresh
    s2Step57HeadG_distinct s2Step57HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step57HeadG_reserved
  have rowEq : WindowRow.mk (s2Step57HeadGRow.payload++s2Step57HeadGFresh) s2Step57HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 814, 800],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step57HeadFBefore : Arena := s2Step57HeadGAfter
def s2Step57HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step57HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751],768⟩
def s2Step57HeadFFresh : List Wire := [808]
theorem s2Step57HeadF_distinct : (s2Step57HeadFRow.sign::s2Step57HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step57HeadF_owned : (s2Step57HeadFRow.sign::s2Step57HeadFRow.payload).toFinset⊆s2Step57HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step57HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57HeadF_reserved : s2Step57HeadFBefore.reserve s2Step57HeadFFresh.toFinset=some s2Step57HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step57HeadFFresh,arenaWires]
  · norm_num [s2Step57HeadFBefore,s2Step57HeadGAfter,s2Step57HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step57HeadFAfter,s2Step57HeadFBefore,s2Step57HeadGAfter,s2Step57HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step57HeadF_checked : planRowResizeLog s2Step57HeadFBefore s2Step57HeadFRow 241 s2Step57HeadFFresh=
    some (s2Step57HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 808],768⟩,growRow 768 s2Step57HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step57HeadFBefore s2Step57HeadFAfter s2Step57HeadFRow 241 s2Step57HeadFFresh
    s2Step57HeadF_distinct s2Step57HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step57HeadF_reserved
  have rowEq : WindowRow.mk (s2Step57HeadFRow.payload++s2Step57HeadFFresh) s2Step57HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 808],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step57HeadGvBefore : Arena := s2Step57HeadFAfter
def s2Step57HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step57HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩
def s2Step57HeadGvFresh : List Wire := [790]
theorem s2Step57HeadGv_distinct : (s2Step57HeadGvRow.sign::s2Step57HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step57HeadGv_owned : (s2Step57HeadGvRow.sign::s2Step57HeadGvRow.payload).toFinset⊆s2Step57HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step57HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57HeadGv_reserved : s2Step57HeadGvBefore.reserve s2Step57HeadGvFresh.toFinset=some s2Step57HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step57HeadGvFresh,arenaWires]
  · norm_num [s2Step57HeadGvBefore,s2Step57HeadFAfter,s2Step57HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step57HeadGvAfter,s2Step57HeadGvBefore,s2Step57HeadFAfter,s2Step57HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step57HeadGv_checked : planRowResizeLog s2Step57HeadGvBefore s2Step57HeadGvRow 42 s2Step57HeadGvFresh=
    some (s2Step57HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 790],771⟩,growRow 771 s2Step57HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step57HeadGvBefore s2Step57HeadGvAfter s2Step57HeadGvRow 42 s2Step57HeadGvFresh
    s2Step57HeadGv_distinct s2Step57HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step57HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step57HeadGvRow.payload++s2Step57HeadGvFresh) s2Step57HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 790],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step57HeadFvBefore : Arena := s2Step57HeadGvAfter
def s2Step57HeadFvAfter : Arena := s2Step56HeadFvAfter
def s2Step57HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787],770⟩
def s2Step57HeadFvFresh : List Wire := [792]
theorem s2Step57HeadFv_distinct : (s2Step57HeadFvRow.sign::s2Step57HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step57HeadFv_owned : (s2Step57HeadFvRow.sign::s2Step57HeadFvRow.payload).toFinset⊆s2Step57HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step57HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57HeadFv_reserved : s2Step57HeadFvBefore.reserve s2Step57HeadFvFresh.toFinset=some s2Step57HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step57HeadFvFresh,arenaWires]
  · norm_num [s2Step57HeadFvBefore,s2Step57HeadGvAfter,s2Step57HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step57HeadFvAfter,s2Step56HeadFvAfter,s2Step57HeadFvBefore,s2Step57HeadGvAfter,s2Step57HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step57HeadFv_checked : planRowResizeLog s2Step57HeadFvBefore s2Step57HeadFvRow 42 s2Step57HeadFvFresh=
    some (s2Step57HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 792],770⟩,growRow 770 s2Step57HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step57HeadFvBefore s2Step57HeadFvAfter s2Step57HeadFvRow 42 s2Step57HeadFvFresh
    s2Step57HeadFv_distinct s2Step57HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step57HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step57HeadFvRow.payload++s2Step57HeadFvFresh) s2Step57HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 792],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step58HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step58HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step58HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 817],769⟩
def s2Step58HeadGFresh : List Wire := [820]
theorem s2Step58HeadG_distinct : (s2Step58HeadGRow.sign::s2Step58HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step58HeadG_owned : (s2Step58HeadGRow.sign::s2Step58HeadGRow.payload).toFinset⊆s2Step58HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step58HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58HeadG_reserved : s2Step58HeadGBefore.reserve s2Step58HeadGFresh.toFinset=some s2Step58HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step58HeadGFresh,arenaWires]
  · norm_num [s2Step58HeadGBefore,s2Step58HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step58HeadGAfter,s2Step58HeadGBefore,s2Step58HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step58HeadG_checked : planRowResizeLog s2Step58HeadGBefore s2Step58HeadGRow 240 s2Step58HeadGFresh=
    some (s2Step58HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 817, 820],769⟩,growRow 769 s2Step58HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step58HeadGBefore s2Step58HeadGAfter s2Step58HeadGRow 240 s2Step58HeadGFresh
    s2Step58HeadG_distinct s2Step58HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step58HeadG_reserved
  have rowEq : WindowRow.mk (s2Step58HeadGRow.payload++s2Step58HeadGFresh) s2Step58HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 817, 820],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step58HeadFBefore : Arena := s2Step58HeadGAfter
def s2Step58HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step58HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩
def s2Step58HeadFFresh : List Wire := [790]
theorem s2Step58HeadF_distinct : (s2Step58HeadFRow.sign::s2Step58HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step58HeadF_owned : (s2Step58HeadFRow.sign::s2Step58HeadFRow.payload).toFinset⊆s2Step58HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step58HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58HeadF_reserved : s2Step58HeadFBefore.reserve s2Step58HeadFFresh.toFinset=some s2Step58HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step58HeadFFresh,arenaWires]
  · norm_num [s2Step58HeadFBefore,s2Step58HeadGAfter,s2Step58HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step58HeadFAfter,s2Step58HeadFBefore,s2Step58HeadGAfter,s2Step58HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step58HeadF_checked : planRowResizeLog s2Step58HeadFBefore s2Step58HeadFRow 240 s2Step58HeadFFresh=
    some (s2Step58HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 790],768⟩,growRow 768 s2Step58HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step58HeadFBefore s2Step58HeadFAfter s2Step58HeadFRow 240 s2Step58HeadFFresh
    s2Step58HeadF_distinct s2Step58HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step58HeadF_reserved
  have rowEq : WindowRow.mk (s2Step58HeadFRow.payload++s2Step58HeadFFresh) s2Step58HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 790],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step58HeadGvBefore : Arena := s2Step58HeadFAfter
def s2Step58HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step58HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩
def s2Step58HeadGvFresh : List Wire := [792]
theorem s2Step58HeadGv_distinct : (s2Step58HeadGvRow.sign::s2Step58HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step58HeadGv_owned : (s2Step58HeadGvRow.sign::s2Step58HeadGvRow.payload).toFinset⊆s2Step58HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step58HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58HeadGv_reserved : s2Step58HeadGvBefore.reserve s2Step58HeadGvFresh.toFinset=some s2Step58HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step58HeadGvFresh,arenaWires]
  · norm_num [s2Step58HeadGvBefore,s2Step58HeadFAfter,s2Step58HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step58HeadGvAfter,s2Step58HeadGvBefore,s2Step58HeadFAfter,s2Step58HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step58HeadGv_checked : planRowResizeLog s2Step58HeadGvBefore s2Step58HeadGvRow 42 s2Step58HeadGvFresh=
    some (s2Step58HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 792],771⟩,growRow 771 s2Step58HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step58HeadGvBefore s2Step58HeadGvAfter s2Step58HeadGvRow 42 s2Step58HeadGvFresh
    s2Step58HeadGv_distinct s2Step58HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step58HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step58HeadGvRow.payload++s2Step58HeadGvFresh) s2Step58HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 792],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step58HeadFvBefore : Arena := s2Step58HeadGvAfter
def s2Step58HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step58HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787],770⟩
def s2Step58HeadFvFresh : List Wire := [808]
theorem s2Step58HeadFv_distinct : (s2Step58HeadFvRow.sign::s2Step58HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step58HeadFv_owned : (s2Step58HeadFvRow.sign::s2Step58HeadFvRow.payload).toFinset⊆s2Step58HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step58HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58HeadFv_reserved : s2Step58HeadFvBefore.reserve s2Step58HeadFvFresh.toFinset=some s2Step58HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step58HeadFvFresh,arenaWires]
  · norm_num [s2Step58HeadFvBefore,s2Step58HeadGvAfter,s2Step58HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step58HeadFvAfter,s2Step58HeadFvBefore,s2Step58HeadGvAfter,s2Step58HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step58HeadFv_checked : planRowResizeLog s2Step58HeadFvBefore s2Step58HeadFvRow 42 s2Step58HeadFvFresh=
    some (s2Step58HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808],770⟩,growRow 770 s2Step58HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step58HeadFvBefore s2Step58HeadFvAfter s2Step58HeadFvRow 42 s2Step58HeadFvFresh
    s2Step58HeadFv_distinct s2Step58HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step58HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step58HeadFvRow.payload++s2Step58HeadFvFresh) s2Step58HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step59HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step59HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step59HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 816],769⟩
def s2Step59HeadGFresh : List Wire := [817]
theorem s2Step59HeadG_distinct : (s2Step59HeadGRow.sign::s2Step59HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step59HeadG_owned : (s2Step59HeadGRow.sign::s2Step59HeadGRow.payload).toFinset⊆s2Step59HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step59HeadGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59HeadG_reserved : s2Step59HeadGBefore.reserve s2Step59HeadGFresh.toFinset=some s2Step59HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step59HeadGFresh,arenaWires]
  · norm_num [s2Step59HeadGBefore,s2Step59HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step59HeadGAfter,s2Step59HeadGBefore,s2Step59HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step59HeadG_checked : planRowResizeLog s2Step59HeadGBefore s2Step59HeadGRow 240 s2Step59HeadGFresh=
    some (s2Step59HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 816, 817],769⟩,growRow 769 s2Step59HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step59HeadGBefore s2Step59HeadGAfter s2Step59HeadGRow 240 s2Step59HeadGFresh
    s2Step59HeadG_distinct s2Step59HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step59HeadG_reserved
  have rowEq : WindowRow.mk (s2Step59HeadGRow.payload++s2Step59HeadGFresh) s2Step59HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 816, 817],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step59HeadFBefore : Arena := s2Step59HeadGAfter
def s2Step59HeadFAfter : Arena := s2Step58HeadFvAfter
def s2Step59HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩
def s2Step59HeadFFresh : List Wire := [820]
theorem s2Step59HeadF_distinct : (s2Step59HeadFRow.sign::s2Step59HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step59HeadF_owned : (s2Step59HeadFRow.sign::s2Step59HeadFRow.payload).toFinset⊆s2Step59HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step59HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59HeadF_reserved : s2Step59HeadFBefore.reserve s2Step59HeadFFresh.toFinset=some s2Step59HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step59HeadFFresh,arenaWires]
  · norm_num [s2Step59HeadFBefore,s2Step59HeadGAfter,s2Step59HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step59HeadFAfter,s2Step58HeadFvAfter,s2Step59HeadFBefore,s2Step59HeadGAfter,s2Step59HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step59HeadF_checked : planRowResizeLog s2Step59HeadFBefore s2Step59HeadFRow 240 s2Step59HeadFFresh=
    some (s2Step59HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 820],768⟩,growRow 768 s2Step59HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step59HeadFBefore s2Step59HeadFAfter s2Step59HeadFRow 240 s2Step59HeadFFresh
    s2Step59HeadF_distinct s2Step59HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step59HeadF_reserved
  have rowEq : WindowRow.mk (s2Step59HeadFRow.payload++s2Step59HeadFFresh) s2Step59HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 820],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step59HeadGvBefore : Arena := s2Step58HeadFvAfter
def s2Step59HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step59HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815],771⟩
def s2Step59HeadGvFresh : List Wire := [814]
theorem s2Step59HeadGv_distinct : (s2Step59HeadGvRow.sign::s2Step59HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step59HeadGv_owned : (s2Step59HeadGvRow.sign::s2Step59HeadGvRow.payload).toFinset⊆s2Step59HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step59HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59HeadGv_reserved : s2Step59HeadGvBefore.reserve s2Step59HeadGvFresh.toFinset=some s2Step59HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step59HeadGvFresh,arenaWires]
  · norm_num [s2Step59HeadGvBefore,s2Step58HeadFvAfter,s2Step59HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step59HeadGvAfter,s2Step59HeadGvBefore,s2Step58HeadFvAfter,s2Step59HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step59HeadGv_checked : planRowResizeLog s2Step59HeadGvBefore s2Step59HeadGvRow 43 s2Step59HeadGvFresh=
    some (s2Step59HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 814],771⟩,growRow 771 s2Step59HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step59HeadGvBefore s2Step59HeadGvAfter s2Step59HeadGvRow 43 s2Step59HeadGvFresh
    s2Step59HeadGv_distinct s2Step59HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step59HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step59HeadGvRow.payload++s2Step59HeadGvFresh) s2Step59HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 814],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step59HeadFvBefore : Arena := s2Step59HeadGvAfter
def s2Step59HeadFvAfter : Arena := s2Step56HeadFvAfter
def s2Step59HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808],770⟩
def s2Step59HeadFvFresh : List Wire := [800]
theorem s2Step59HeadFv_distinct : (s2Step59HeadFvRow.sign::s2Step59HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step59HeadFv_owned : (s2Step59HeadFvRow.sign::s2Step59HeadFvRow.payload).toFinset⊆s2Step59HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step59HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59HeadFv_reserved : s2Step59HeadFvBefore.reserve s2Step59HeadFvFresh.toFinset=some s2Step59HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step59HeadFvFresh,arenaWires]
  · norm_num [s2Step59HeadFvBefore,s2Step59HeadGvAfter,s2Step59HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step59HeadFvAfter,s2Step56HeadFvAfter,s2Step59HeadFvBefore,s2Step59HeadGvAfter,s2Step59HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step59HeadFv_checked : planRowResizeLog s2Step59HeadFvBefore s2Step59HeadFvRow 43 s2Step59HeadFvFresh=
    some (s2Step59HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800],770⟩,growRow 770 s2Step59HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step59HeadFvBefore s2Step59HeadFvAfter s2Step59HeadFvRow 43 s2Step59HeadFvFresh
    s2Step59HeadFv_distinct s2Step59HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step59HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step59HeadFvRow.payload++s2Step59HeadFvFresh) s2Step59HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step60HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step60HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step60HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 790],769⟩
def s2Step60HeadGFresh : List Wire := [816]
theorem s2Step60HeadG_distinct : (s2Step60HeadGRow.sign::s2Step60HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step60HeadG_owned : (s2Step60HeadGRow.sign::s2Step60HeadGRow.payload).toFinset⊆s2Step60HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step60HeadGBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60HeadG_reserved : s2Step60HeadGBefore.reserve s2Step60HeadGFresh.toFinset=some s2Step60HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step60HeadGFresh,arenaWires]
  · norm_num [s2Step60HeadGBefore,s2Step60HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step60HeadGAfter,s2Step60HeadGBefore,s2Step60HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step60HeadG_checked : planRowResizeLog s2Step60HeadGBefore s2Step60HeadGRow 240 s2Step60HeadGFresh=
    some (s2Step60HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 790, 816],769⟩,growRow 769 s2Step60HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step60HeadGBefore s2Step60HeadGAfter s2Step60HeadGRow 240 s2Step60HeadGFresh
    s2Step60HeadG_distinct s2Step60HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step60HeadG_reserved
  have rowEq : WindowRow.mk (s2Step60HeadGRow.payload++s2Step60HeadGFresh) s2Step60HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 790, 816],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step60HeadFBefore : Arena := s2Step60HeadGAfter
def s2Step60HeadFAfter : Arena := s2Step56HeadFvAfter
def s2Step60HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩
def s2Step60HeadFFresh : List Wire := [817]
theorem s2Step60HeadF_distinct : (s2Step60HeadFRow.sign::s2Step60HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step60HeadF_owned : (s2Step60HeadFRow.sign::s2Step60HeadFRow.payload).toFinset⊆s2Step60HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step60HeadFBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60HeadF_reserved : s2Step60HeadFBefore.reserve s2Step60HeadFFresh.toFinset=some s2Step60HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step60HeadFFresh,arenaWires]
  · norm_num [s2Step60HeadFBefore,s2Step60HeadGAfter,s2Step60HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step60HeadFAfter,s2Step56HeadFvAfter,s2Step60HeadFBefore,s2Step60HeadGAfter,s2Step60HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step60HeadF_checked : planRowResizeLog s2Step60HeadFBefore s2Step60HeadFRow 240 s2Step60HeadFFresh=
    some (s2Step60HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 817],768⟩,growRow 768 s2Step60HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step60HeadFBefore s2Step60HeadFAfter s2Step60HeadFRow 240 s2Step60HeadFFresh
    s2Step60HeadF_distinct s2Step60HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step60HeadF_reserved
  have rowEq : WindowRow.mk (s2Step60HeadFRow.payload++s2Step60HeadFFresh) s2Step60HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 817],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step60HeadGvBefore : Arena := s2Step56HeadFvAfter
def s2Step60HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step60HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792],771⟩
def s2Step60HeadGvFresh : List Wire := [807]
theorem s2Step60HeadGv_distinct : (s2Step60HeadGvRow.sign::s2Step60HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step60HeadGv_owned : (s2Step60HeadGvRow.sign::s2Step60HeadGvRow.payload).toFinset⊆s2Step60HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step60HeadGvBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60HeadGv_reserved : s2Step60HeadGvBefore.reserve s2Step60HeadGvFresh.toFinset=some s2Step60HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step60HeadGvFresh,arenaWires]
  · norm_num [s2Step60HeadGvBefore,s2Step56HeadFvAfter,s2Step60HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step60HeadGvAfter,s2Step60HeadGvBefore,s2Step56HeadFvAfter,s2Step60HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step60HeadGv_checked : planRowResizeLog s2Step60HeadGvBefore s2Step60HeadGvRow 44 s2Step60HeadGvFresh=
    some (s2Step60HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807],771⟩,growRow 771 s2Step60HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step60HeadGvBefore s2Step60HeadGvAfter s2Step60HeadGvRow 44 s2Step60HeadGvFresh
    s2Step60HeadGv_distinct s2Step60HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step60HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step60HeadGvRow.payload++s2Step60HeadGvFresh) s2Step60HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step60HeadFvBefore : Arena := s2Step60HeadGvAfter
def s2Step60HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step60HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800],770⟩
def s2Step60HeadFvFresh : List Wire := [812]
theorem s2Step60HeadFv_distinct : (s2Step60HeadFvRow.sign::s2Step60HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step60HeadFv_owned : (s2Step60HeadFvRow.sign::s2Step60HeadFvRow.payload).toFinset⊆s2Step60HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step60HeadFvBefore (fun q => (0≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60HeadFv_reserved : s2Step60HeadFvBefore.reserve s2Step60HeadFvFresh.toFinset=some s2Step60HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step60HeadFvFresh,arenaWires]
  · norm_num [s2Step60HeadFvBefore,s2Step60HeadGvAfter,s2Step60HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step60HeadFvAfter,s2Step60HeadFvBefore,s2Step60HeadGvAfter,s2Step60HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step60HeadFv_checked : planRowResizeLog s2Step60HeadFvBefore s2Step60HeadFvRow 44 s2Step60HeadFvFresh=
    some (s2Step60HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812],770⟩,growRow 770 s2Step60HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step60HeadFvBefore s2Step60HeadFvAfter s2Step60HeadFvRow 44 s2Step60HeadFvFresh
    s2Step60HeadFv_distinct s2Step60HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step60HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step60HeadFvRow.payload++s2Step60HeadFvFresh) s2Step60HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step61HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step61HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step61HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 820, 814],769⟩
def s2Step61HeadGFresh : List Wire := [790]
theorem s2Step61HeadG_distinct : (s2Step61HeadGRow.sign::s2Step61HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step61HeadG_owned : (s2Step61HeadGRow.sign::s2Step61HeadGRow.payload).toFinset⊆s2Step61HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step61HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61HeadG_reserved : s2Step61HeadGBefore.reserve s2Step61HeadGFresh.toFinset=some s2Step61HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step61HeadGFresh,arenaWires]
  · norm_num [s2Step61HeadGBefore,s2Step61HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step61HeadGAfter,s2Step61HeadGBefore,s2Step61HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step61HeadG_checked : planRowResizeLog s2Step61HeadGBefore s2Step61HeadGRow 240 s2Step61HeadGFresh=
    some (s2Step61HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 820, 814, 790],769⟩,growRow 769 s2Step61HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step61HeadGBefore s2Step61HeadGAfter s2Step61HeadGRow 240 s2Step61HeadGFresh
    s2Step61HeadG_distinct s2Step61HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step61HeadG_reserved
  have rowEq : WindowRow.mk (s2Step61HeadGRow.payload++s2Step61HeadGFresh) s2Step61HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 820, 814, 790],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step61HeadFBefore : Arena := s2Step61HeadGAfter
def s2Step61HeadFAfter : Arena := s2Step60HeadFvAfter
def s2Step61HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩
def s2Step61HeadFFresh : List Wire := [816]
theorem s2Step61HeadF_distinct : (s2Step61HeadFRow.sign::s2Step61HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step61HeadF_owned : (s2Step61HeadFRow.sign::s2Step61HeadFRow.payload).toFinset⊆s2Step61HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step61HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61HeadF_reserved : s2Step61HeadFBefore.reserve s2Step61HeadFFresh.toFinset=some s2Step61HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step61HeadFFresh,arenaWires]
  · norm_num [s2Step61HeadFBefore,s2Step61HeadGAfter,s2Step61HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step61HeadFAfter,s2Step60HeadFvAfter,s2Step61HeadFBefore,s2Step61HeadGAfter,s2Step61HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step61HeadF_checked : planRowResizeLog s2Step61HeadFBefore s2Step61HeadFRow 240 s2Step61HeadFFresh=
    some (s2Step61HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 816],768⟩,growRow 768 s2Step61HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step61HeadFBefore s2Step61HeadFAfter s2Step61HeadFRow 240 s2Step61HeadFFresh
    s2Step61HeadF_distinct s2Step61HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step61HeadF_reserved
  have rowEq : WindowRow.mk (s2Step61HeadFRow.payload++s2Step61HeadFFresh) s2Step61HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 816],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step61HeadGvBefore : Arena := s2Step60HeadFvAfter
def s2Step61HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step61HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 822],771⟩
def s2Step61HeadGvFresh : List Wire := [844]
theorem s2Step61HeadGv_distinct : (s2Step61HeadGvRow.sign::s2Step61HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step61HeadGv_owned : (s2Step61HeadGvRow.sign::s2Step61HeadGvRow.payload).toFinset⊆s2Step61HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step61HeadGvBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61HeadGv_reserved : s2Step61HeadGvBefore.reserve s2Step61HeadGvFresh.toFinset=some s2Step61HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step61HeadGvFresh,arenaWires]
  · norm_num [s2Step61HeadGvBefore,s2Step60HeadFvAfter,s2Step61HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step61HeadGvAfter,s2Step61HeadGvBefore,s2Step60HeadFvAfter,s2Step61HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step61HeadGv_checked : planRowResizeLog s2Step61HeadGvBefore s2Step61HeadGvRow 45 s2Step61HeadGvFresh=
    some (s2Step61HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 822, 844],771⟩,growRow 771 s2Step61HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step61HeadGvBefore s2Step61HeadGvAfter s2Step61HeadGvRow 45 s2Step61HeadGvFresh
    s2Step61HeadGv_distinct s2Step61HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step61HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step61HeadGvRow.payload++s2Step61HeadGvFresh) s2Step61HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 822, 844],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step61HeadFvBefore : Arena := s2Step61HeadGvAfter
def s2Step61HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step61HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812],770⟩
def s2Step61HeadFvFresh : List Wire := [845]
theorem s2Step61HeadFv_distinct : (s2Step61HeadFvRow.sign::s2Step61HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step61HeadFv_owned : (s2Step61HeadFvRow.sign::s2Step61HeadFvRow.payload).toFinset⊆s2Step61HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step61HeadFvBefore (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61HeadFv_reserved : s2Step61HeadFvBefore.reserve s2Step61HeadFvFresh.toFinset=some s2Step61HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step61HeadFvFresh,arenaWires]
  · norm_num [s2Step61HeadFvBefore,s2Step61HeadGvAfter,s2Step61HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step61HeadFvAfter,s2Step61HeadFvBefore,s2Step61HeadGvAfter,s2Step61HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step61HeadFv_checked : planRowResizeLog s2Step61HeadFvBefore s2Step61HeadFvRow 45 s2Step61HeadFvFresh=
    some (s2Step61HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 845],770⟩,growRow 770 s2Step61HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step61HeadFvBefore s2Step61HeadFvAfter s2Step61HeadFvRow 45 s2Step61HeadFvFresh
    s2Step61HeadFv_distinct s2Step61HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step61HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step61HeadFvRow.payload++s2Step61HeadFvFresh) s2Step61HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 845],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step62HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step62HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step62HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 817],769⟩
def s2Step62HeadGFresh : List Wire := [844]
theorem s2Step62HeadG_distinct : (s2Step62HeadGRow.sign::s2Step62HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step62HeadG_owned : (s2Step62HeadGRow.sign::s2Step62HeadGRow.payload).toFinset⊆s2Step62HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step62HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62HeadG_reserved : s2Step62HeadGBefore.reserve s2Step62HeadGFresh.toFinset=some s2Step62HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step62HeadGFresh,arenaWires]
  · norm_num [s2Step62HeadGBefore,s2Step62HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step62HeadGAfter,s2Step62HeadGBefore,s2Step62HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step62HeadG_checked : planRowResizeLog s2Step62HeadGBefore s2Step62HeadGRow 239 s2Step62HeadGFresh=
    some (s2Step62HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 817, 844],769⟩,growRow 769 s2Step62HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step62HeadGBefore s2Step62HeadGAfter s2Step62HeadGRow 239 s2Step62HeadGFresh
    s2Step62HeadG_distinct s2Step62HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step62HeadG_reserved
  have rowEq : WindowRow.mk (s2Step62HeadGRow.payload++s2Step62HeadGFresh) s2Step62HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 817, 844],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step62HeadFBefore : Arena := s2Step62HeadGAfter
def s2Step62HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step62HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749],768⟩
def s2Step62HeadFFresh : List Wire := [845]
theorem s2Step62HeadF_distinct : (s2Step62HeadFRow.sign::s2Step62HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step62HeadF_owned : (s2Step62HeadFRow.sign::s2Step62HeadFRow.payload).toFinset⊆s2Step62HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step62HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62HeadF_reserved : s2Step62HeadFBefore.reserve s2Step62HeadFFresh.toFinset=some s2Step62HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step62HeadFFresh,arenaWires]
  · norm_num [s2Step62HeadFBefore,s2Step62HeadGAfter,s2Step62HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step62HeadFAfter,s2Step62HeadFBefore,s2Step62HeadGAfter,s2Step62HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step62HeadF_checked : planRowResizeLog s2Step62HeadFBefore s2Step62HeadFRow 239 s2Step62HeadFFresh=
    some (s2Step62HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 845],768⟩,growRow 768 s2Step62HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step62HeadFBefore s2Step62HeadFAfter s2Step62HeadFRow 239 s2Step62HeadFFresh
    s2Step62HeadF_distinct s2Step62HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step62HeadF_reserved
  have rowEq : WindowRow.mk (s2Step62HeadFRow.payload++s2Step62HeadFFresh) s2Step62HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 845],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step62HeadGvBefore : Arena := s2Step62HeadFAfter
def s2Step62HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step62HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807],771⟩
def s2Step62HeadGvFresh : List Wire := [816]
theorem s2Step62HeadGv_distinct : (s2Step62HeadGvRow.sign::s2Step62HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step62HeadGv_owned : (s2Step62HeadGvRow.sign::s2Step62HeadGvRow.payload).toFinset⊆s2Step62HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step62HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62HeadGv_reserved : s2Step62HeadGvBefore.reserve s2Step62HeadGvFresh.toFinset=some s2Step62HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step62HeadGvFresh,arenaWires]
  · norm_num [s2Step62HeadGvBefore,s2Step62HeadFAfter,s2Step62HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step62HeadGvAfter,s2Step62HeadGvBefore,s2Step62HeadFAfter,s2Step62HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step62HeadGv_checked : planRowResizeLog s2Step62HeadGvBefore s2Step62HeadGvRow 45 s2Step62HeadGvFresh=
    some (s2Step62HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 816],771⟩,growRow 771 s2Step62HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step62HeadGvBefore s2Step62HeadGvAfter s2Step62HeadGvRow 45 s2Step62HeadGvFresh
    s2Step62HeadGv_distinct s2Step62HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step62HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step62HeadGvRow.payload++s2Step62HeadGvFresh) s2Step62HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 816],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step62HeadFvBefore : Arena := s2Step62HeadGvAfter
def s2Step62HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step62HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812],770⟩
def s2Step62HeadFvFresh : List Wire := [820]
theorem s2Step62HeadFv_distinct : (s2Step62HeadFvRow.sign::s2Step62HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step62HeadFv_owned : (s2Step62HeadFvRow.sign::s2Step62HeadFvRow.payload).toFinset⊆s2Step62HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step62HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62HeadFv_reserved : s2Step62HeadFvBefore.reserve s2Step62HeadFvFresh.toFinset=some s2Step62HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step62HeadFvFresh,arenaWires]
  · norm_num [s2Step62HeadFvBefore,s2Step62HeadGvAfter,s2Step62HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step62HeadFvAfter,s2Step62HeadFvBefore,s2Step62HeadGvAfter,s2Step62HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step62HeadFv_checked : planRowResizeLog s2Step62HeadFvBefore s2Step62HeadFvRow 45 s2Step62HeadFvFresh=
    some (s2Step62HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820],770⟩,growRow 770 s2Step62HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step62HeadFvBefore s2Step62HeadFvAfter s2Step62HeadFvRow 45 s2Step62HeadFvFresh
    s2Step62HeadFv_distinct s2Step62HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step62HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step62HeadFvRow.payload++s2Step62HeadFvFresh) s2Step62HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step63HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)),Finset.filter_subset _ _⟩
def s2Step63HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)),Finset.filter_subset _ _⟩
def s2Step63HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],769⟩
def s2Step63HeadGFresh : List Wire := [816]
theorem s2Step63HeadG_distinct : (s2Step63HeadGRow.sign::s2Step63HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step63HeadG_owned : (s2Step63HeadGRow.sign::s2Step63HeadGRow.payload).toFinset⊆s2Step63HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step63HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63HeadG_reserved : s2Step63HeadGBefore.reserve s2Step63HeadGFresh.toFinset=some s2Step63HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step63HeadGFresh,arenaWires]
  · norm_num [s2Step63HeadGBefore,s2Step63HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step63HeadGAfter,s2Step63HeadGBefore,s2Step63HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step63HeadG_checked : planRowResizeLog s2Step63HeadGBefore s2Step63HeadGRow 238 s2Step63HeadGFresh=
    some (s2Step63HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 816],769⟩,growRow 769 s2Step63HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step63HeadGBefore s2Step63HeadGAfter s2Step63HeadGRow 238 s2Step63HeadGFresh
    s2Step63HeadG_distinct s2Step63HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step63HeadG_reserved
  have rowEq : WindowRow.mk (s2Step63HeadGRow.payload++s2Step63HeadGFresh) s2Step63HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 816],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step63HeadFBefore : Arena := s2Step63HeadGAfter
def s2Step63HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)),Finset.filter_subset _ _⟩
def s2Step63HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748],768⟩
def s2Step63HeadFFresh : List Wire := [845]
theorem s2Step63HeadF_distinct : (s2Step63HeadFRow.sign::s2Step63HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step63HeadF_owned : (s2Step63HeadFRow.sign::s2Step63HeadFRow.payload).toFinset⊆s2Step63HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step63HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63HeadF_reserved : s2Step63HeadFBefore.reserve s2Step63HeadFFresh.toFinset=some s2Step63HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step63HeadFFresh,arenaWires]
  · norm_num [s2Step63HeadFBefore,s2Step63HeadGAfter,s2Step63HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step63HeadFAfter,s2Step63HeadFBefore,s2Step63HeadGAfter,s2Step63HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step63HeadF_checked : planRowResizeLog s2Step63HeadFBefore s2Step63HeadFRow 238 s2Step63HeadFFresh=
    some (s2Step63HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 845],768⟩,growRow 768 s2Step63HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step63HeadFBefore s2Step63HeadFAfter s2Step63HeadFRow 238 s2Step63HeadFFresh
    s2Step63HeadF_distinct s2Step63HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step63HeadF_reserved
  have rowEq : WindowRow.mk (s2Step63HeadFRow.payload++s2Step63HeadFFresh) s2Step63HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 845],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step63HeadGvBefore : Arena := s2Step63HeadFAfter
def s2Step63HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)),Finset.filter_subset _ _⟩
def s2Step63HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 822],771⟩
def s2Step63HeadGvFresh : List Wire := [817]
theorem s2Step63HeadGv_distinct : (s2Step63HeadGvRow.sign::s2Step63HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step63HeadGv_owned : (s2Step63HeadGvRow.sign::s2Step63HeadGvRow.payload).toFinset⊆s2Step63HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step63HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63HeadGv_reserved : s2Step63HeadGvBefore.reserve s2Step63HeadGvFresh.toFinset=some s2Step63HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step63HeadGvFresh,arenaWires]
  · norm_num [s2Step63HeadGvBefore,s2Step63HeadFAfter,s2Step63HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step63HeadGvAfter,s2Step63HeadGvBefore,s2Step63HeadFAfter,s2Step63HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step63HeadGv_checked : planRowResizeLog s2Step63HeadGvBefore s2Step63HeadGvRow 46 s2Step63HeadGvFresh=
    some (s2Step63HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 822, 817],771⟩,growRow 771 s2Step63HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step63HeadGvBefore s2Step63HeadGvAfter s2Step63HeadGvRow 46 s2Step63HeadGvFresh
    s2Step63HeadGv_distinct s2Step63HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step63HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step63HeadGvRow.payload++s2Step63HeadGvFresh) s2Step63HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 822, 817],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step63HeadFvBefore : Arena := s2Step63HeadGvAfter
def s2Step63HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)),Finset.filter_subset _ _⟩
def s2Step63HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820],770⟩
def s2Step63HeadFvFresh : List Wire := [844]
theorem s2Step63HeadFv_distinct : (s2Step63HeadFvRow.sign::s2Step63HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step63HeadFv_owned : (s2Step63HeadFvRow.sign::s2Step63HeadFvRow.payload).toFinset⊆s2Step63HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step63HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63HeadFv_reserved : s2Step63HeadFvBefore.reserve s2Step63HeadFvFresh.toFinset=some s2Step63HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step63HeadFvFresh,arenaWires]
  · norm_num [s2Step63HeadFvBefore,s2Step63HeadGvAfter,s2Step63HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step63HeadFvAfter,s2Step63HeadFvBefore,s2Step63HeadGvAfter,s2Step63HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step63HeadFv_checked : planRowResizeLog s2Step63HeadFvBefore s2Step63HeadFvRow 46 s2Step63HeadFvFresh=
    some (s2Step63HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 844],770⟩,growRow 770 s2Step63HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step63HeadFvBefore s2Step63HeadFvAfter s2Step63HeadFvRow 46 s2Step63HeadFvFresh
    s2Step63HeadFv_distinct s2Step63HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step63HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step63HeadFvRow.payload++s2Step63HeadFvFresh) s2Step63HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 844],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

end ECDSAAdd.Arithmetic.Paper935
