import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk1

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step32EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step32EntryFAfter : Arena := s2Step32EntryFBefore
def s2Step32EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764],768⟩
def s2Step32EntryFFresh : List Wire := []
theorem s2Step32EntryF_distinct : (s2Step32EntryFRow.sign::s2Step32EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step32EntryF_owned : (s2Step32EntryFRow.sign::s2Step32EntryFRow.payload).toFinset⊆s2Step32EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step32EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32EntryF_reserved : s2Step32EntryFBefore.reserve s2Step32EntryFFresh.toFinset=some s2Step32EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step32EntryFFresh,arenaWires]
  · norm_num [s2Step32EntryFBefore,s2Step32EntryFFresh,arenaWires]
  · simp only [s2Step32EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step32EntryF_checked : planRowResizeLog s2Step32EntryFBefore s2Step32EntryFRow 253 s2Step32EntryFFresh=
    some (s2Step32EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764],768⟩,growRow 768 s2Step32EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step32EntryFBefore s2Step32EntryFAfter s2Step32EntryFRow 253 s2Step32EntryFFresh
    s2Step32EntryF_distinct s2Step32EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step32EntryF_reserved
  have rowEq : WindowRow.mk (s2Step32EntryFRow.payload++s2Step32EntryFFresh) s2Step32EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step32EntryGBefore : Arena := s2Step32EntryFBefore
def s2Step32EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step32EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250],769⟩
def s2Step32EntryGFresh : List Wire := [779, 786]
theorem s2Step32EntryG_distinct : (s2Step32EntryGRow.sign::s2Step32EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step32EntryG_owned : (s2Step32EntryGRow.sign::s2Step32EntryGRow.payload).toFinset⊆s2Step32EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step32EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32EntryG_reserved : s2Step32EntryGBefore.reserve s2Step32EntryGFresh.toFinset=some s2Step32EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step32EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step32EntryGBefore,s2Step32EntryFBefore,s2Step32EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step32EntryGAfter,s2Step32EntryGBefore,s2Step32EntryFBefore,s2Step32EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step32EntryG_checked : planRowResizeLog s2Step32EntryGBefore s2Step32EntryGRow 253 s2Step32EntryGFresh=
    some (s2Step32EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779, 786],769⟩,growRow 769 s2Step32EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step32EntryGBefore s2Step32EntryGAfter s2Step32EntryGRow 253 s2Step32EntryGFresh
    s2Step32EntryG_distinct s2Step32EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step32EntryG_reserved
  have rowEq : WindowRow.mk (s2Step32EntryGRow.payload++s2Step32EntryGFresh) s2Step32EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779, 786],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step32EntryFvBefore : Arena := s2Step32EntryGAfter
def s2Step32EntryFvAfter : Arena := s2Step32EntryGAfter
def s2Step32EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩
def s2Step32EntryFvFresh : List Wire := []
theorem s2Step32EntryFv_distinct : (s2Step32EntryFvRow.sign::s2Step32EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step32EntryFv_owned : (s2Step32EntryFvRow.sign::s2Step32EntryFvRow.payload).toFinset⊆s2Step32EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step32EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32EntryFv_reserved : s2Step32EntryFvBefore.reserve s2Step32EntryFvFresh.toFinset=some s2Step32EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step32EntryFvFresh,arenaWires]
  · norm_num [s2Step32EntryFvBefore,s2Step32EntryGAfter,s2Step32EntryFvFresh,arenaWires]
  · simp only [s2Step32EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step32EntryFv_checked : planRowResizeLog s2Step32EntryFvBefore s2Step32EntryFvRow 29 s2Step32EntryFvFresh=
    some (s2Step32EntryFvAfter,⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩,growRow 770 s2Step32EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step32EntryFvBefore s2Step32EntryFvAfter s2Step32EntryFvRow 29 s2Step32EntryFvFresh
    s2Step32EntryFv_distinct s2Step32EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step32EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step32EntryFvRow.payload++s2Step32EntryFvFresh) s2Step32EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step32EntryGvBefore : Arena := s2Step32EntryGAfter
def s2Step32EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step32EntryGvRow : WindowRow := ⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778],771⟩
def s2Step32EntryGvFresh : List Wire := [791]
theorem s2Step32EntryGv_distinct : (s2Step32EntryGvRow.sign::s2Step32EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step32EntryGv_owned : (s2Step32EntryGvRow.sign::s2Step32EntryGvRow.payload).toFinset⊆s2Step32EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step32EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32EntryGv_reserved : s2Step32EntryGvBefore.reserve s2Step32EntryGvFresh.toFinset=some s2Step32EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step32EntryGvFresh,arenaWires]
  · norm_num [s2Step32EntryGvBefore,s2Step32EntryGAfter,s2Step32EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step32EntryGvAfter,s2Step32EntryGvBefore,s2Step32EntryGAfter,s2Step32EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step32EntryGv_checked : planRowResizeLog s2Step32EntryGvBefore s2Step32EntryGvRow 29 s2Step32EntryGvFresh=
    some (s2Step32EntryGvAfter,⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 791],771⟩,growRow 771 s2Step32EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step32EntryGvBefore s2Step32EntryGvAfter s2Step32EntryGvRow 29 s2Step32EntryGvFresh
    s2Step32EntryGv_distinct s2Step32EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step32EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step32EntryGvRow.payload++s2Step32EntryGvFresh) s2Step32EntryGvRow.sign=⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 791],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step33EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step33EntryFAfter : Arena := s2Step33EntryFBefore
def s2Step33EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763],768⟩
def s2Step33EntryFFresh : List Wire := []
theorem s2Step33EntryF_distinct : (s2Step33EntryFRow.sign::s2Step33EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step33EntryF_owned : (s2Step33EntryFRow.sign::s2Step33EntryFRow.payload).toFinset⊆s2Step33EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step33EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33EntryF_reserved : s2Step33EntryFBefore.reserve s2Step33EntryFFresh.toFinset=some s2Step33EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step33EntryFFresh,arenaWires]
  · norm_num [s2Step33EntryFBefore,s2Step33EntryFFresh,arenaWires]
  · simp only [s2Step33EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step33EntryF_checked : planRowResizeLog s2Step33EntryFBefore s2Step33EntryFRow 252 s2Step33EntryFFresh=
    some (s2Step33EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763],768⟩,growRow 768 s2Step33EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step33EntryFBefore s2Step33EntryFAfter s2Step33EntryFRow 252 s2Step33EntryFFresh
    s2Step33EntryF_distinct s2Step33EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step33EntryF_reserved
  have rowEq : WindowRow.mk (s2Step33EntryFRow.payload++s2Step33EntryFFresh) s2Step33EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step33EntryGBefore : Arena := s2Step33EntryFBefore
def s2Step33EntryGAfter : Arena := s2Step33EntryFBefore
def s2Step33EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779],769⟩
def s2Step33EntryGFresh : List Wire := []
theorem s2Step33EntryG_distinct : (s2Step33EntryGRow.sign::s2Step33EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step33EntryG_owned : (s2Step33EntryGRow.sign::s2Step33EntryGRow.payload).toFinset⊆s2Step33EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step33EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33EntryG_reserved : s2Step33EntryGBefore.reserve s2Step33EntryGFresh.toFinset=some s2Step33EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step33EntryGFresh,arenaWires]
  · norm_num [s2Step33EntryGBefore,s2Step33EntryFBefore,s2Step33EntryGFresh,arenaWires]
  · simp only [s2Step33EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step33EntryG_checked : planRowResizeLog s2Step33EntryGBefore s2Step33EntryGRow 252 s2Step33EntryGFresh=
    some (s2Step33EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779],769⟩,growRow 769 s2Step33EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step33EntryGBefore s2Step33EntryGAfter s2Step33EntryGRow 252 s2Step33EntryGFresh
    s2Step33EntryG_distinct s2Step33EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step33EntryG_reserved
  have rowEq : WindowRow.mk (s2Step33EntryGRow.payload++s2Step33EntryGFresh) s2Step33EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step33EntryFvBefore : Arena := s2Step33EntryFBefore
def s2Step33EntryFvAfter : Arena := s2Step33EntryFBefore
def s2Step33EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩
def s2Step33EntryFvFresh : List Wire := []
theorem s2Step33EntryFv_distinct : (s2Step33EntryFvRow.sign::s2Step33EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step33EntryFv_owned : (s2Step33EntryFvRow.sign::s2Step33EntryFvRow.payload).toFinset⊆s2Step33EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step33EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33EntryFv_reserved : s2Step33EntryFvBefore.reserve s2Step33EntryFvFresh.toFinset=some s2Step33EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step33EntryFvFresh,arenaWires]
  · norm_num [s2Step33EntryFvBefore,s2Step33EntryFBefore,s2Step33EntryFvFresh,arenaWires]
  · simp only [s2Step33EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step33EntryFv_checked : planRowResizeLog s2Step33EntryFvBefore s2Step33EntryFvRow 29 s2Step33EntryFvFresh=
    some (s2Step33EntryFvAfter,⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩,growRow 770 s2Step33EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step33EntryFvBefore s2Step33EntryFvAfter s2Step33EntryFvRow 29 s2Step33EntryFvFresh
    s2Step33EntryFv_distinct s2Step33EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step33EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step33EntryFvRow.payload++s2Step33EntryFvFresh) s2Step33EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step33EntryGvBefore : Arena := s2Step33EntryFBefore
def s2Step33EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step33EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778],771⟩
def s2Step33EntryGvFresh : List Wire := [839]
theorem s2Step33EntryGv_distinct : (s2Step33EntryGvRow.sign::s2Step33EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step33EntryGv_owned : (s2Step33EntryGvRow.sign::s2Step33EntryGvRow.payload).toFinset⊆s2Step33EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step33EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33EntryGv_reserved : s2Step33EntryGvBefore.reserve s2Step33EntryGvFresh.toFinset=some s2Step33EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step33EntryGvFresh,arenaWires]
  · norm_num [s2Step33EntryGvBefore,s2Step33EntryFBefore,s2Step33EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step33EntryGvAfter,s2Step33EntryGvBefore,s2Step33EntryFBefore,s2Step33EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step33EntryGv_checked : planRowResizeLog s2Step33EntryGvBefore s2Step33EntryGvRow 29 s2Step33EntryGvFresh=
    some (s2Step33EntryGvAfter,⟨[767, 766, 765, 764, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839],771⟩,growRow 771 s2Step33EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step33EntryGvBefore s2Step33EntryGvAfter s2Step33EntryGvRow 29 s2Step33EntryGvFresh
    s2Step33EntryGv_distinct s2Step33EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step33EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step33EntryGvRow.payload++s2Step33EntryGvFresh) s2Step33EntryGvRow.sign=⟨[767, 766, 765, 764, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step34EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step34EntryFAfter : Arena := s2Step34EntryFBefore
def s2Step34EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762],768⟩
def s2Step34EntryFFresh : List Wire := []
theorem s2Step34EntryF_distinct : (s2Step34EntryFRow.sign::s2Step34EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step34EntryF_owned : (s2Step34EntryFRow.sign::s2Step34EntryFRow.payload).toFinset⊆s2Step34EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step34EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34EntryF_reserved : s2Step34EntryFBefore.reserve s2Step34EntryFFresh.toFinset=some s2Step34EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step34EntryFFresh,arenaWires]
  · norm_num [s2Step34EntryFBefore,s2Step34EntryFFresh,arenaWires]
  · simp only [s2Step34EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step34EntryF_checked : planRowResizeLog s2Step34EntryFBefore s2Step34EntryFRow 251 s2Step34EntryFFresh=
    some (s2Step34EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762],768⟩,growRow 768 s2Step34EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step34EntryFBefore s2Step34EntryFAfter s2Step34EntryFRow 251 s2Step34EntryFFresh
    s2Step34EntryF_distinct s2Step34EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step34EntryF_reserved
  have rowEq : WindowRow.mk (s2Step34EntryFRow.payload++s2Step34EntryFFresh) s2Step34EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step34EntryGBefore : Arena := s2Step34EntryFBefore
def s2Step34EntryGAfter : Arena := s2Step34EntryFBefore
def s2Step34EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250],769⟩
def s2Step34EntryGFresh : List Wire := []
theorem s2Step34EntryG_distinct : (s2Step34EntryGRow.sign::s2Step34EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step34EntryG_owned : (s2Step34EntryGRow.sign::s2Step34EntryGRow.payload).toFinset⊆s2Step34EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step34EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34EntryG_reserved : s2Step34EntryGBefore.reserve s2Step34EntryGFresh.toFinset=some s2Step34EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step34EntryGFresh,arenaWires]
  · norm_num [s2Step34EntryGBefore,s2Step34EntryFBefore,s2Step34EntryGFresh,arenaWires]
  · simp only [s2Step34EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step34EntryG_checked : planRowResizeLog s2Step34EntryGBefore s2Step34EntryGRow 251 s2Step34EntryGFresh=
    some (s2Step34EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250],769⟩,growRow 769 s2Step34EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step34EntryGBefore s2Step34EntryGAfter s2Step34EntryGRow 251 s2Step34EntryGFresh
    s2Step34EntryG_distinct s2Step34EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step34EntryG_reserved
  have rowEq : WindowRow.mk (s2Step34EntryGRow.payload++s2Step34EntryGFresh) s2Step34EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step34EntryFvBefore : Arena := s2Step34EntryFBefore
def s2Step34EntryFvAfter : Arena := s2Step34EntryFBefore
def s2Step34EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781],770⟩
def s2Step34EntryFvFresh : List Wire := []
theorem s2Step34EntryFv_distinct : (s2Step34EntryFvRow.sign::s2Step34EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step34EntryFv_owned : (s2Step34EntryFvRow.sign::s2Step34EntryFvRow.payload).toFinset⊆s2Step34EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step34EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34EntryFv_reserved : s2Step34EntryFvBefore.reserve s2Step34EntryFvFresh.toFinset=some s2Step34EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step34EntryFvFresh,arenaWires]
  · norm_num [s2Step34EntryFvBefore,s2Step34EntryFBefore,s2Step34EntryFvFresh,arenaWires]
  · simp only [s2Step34EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step34EntryFv_checked : planRowResizeLog s2Step34EntryFvBefore s2Step34EntryFvRow 30 s2Step34EntryFvFresh=
    some (s2Step34EntryFvAfter,⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781],770⟩,growRow 770 s2Step34EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step34EntryFvBefore s2Step34EntryFvAfter s2Step34EntryFvRow 30 s2Step34EntryFvFresh
    s2Step34EntryFv_distinct s2Step34EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step34EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step34EntryFvRow.payload++s2Step34EntryFvFresh) s2Step34EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step34EntryGvBefore : Arena := s2Step34EntryFBefore
def s2Step34EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step34EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839],771⟩
def s2Step34EntryGvFresh : List Wire := [788]
theorem s2Step34EntryGv_distinct : (s2Step34EntryGvRow.sign::s2Step34EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step34EntryGv_owned : (s2Step34EntryGvRow.sign::s2Step34EntryGvRow.payload).toFinset⊆s2Step34EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step34EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34EntryGv_reserved : s2Step34EntryGvBefore.reserve s2Step34EntryGvFresh.toFinset=some s2Step34EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step34EntryGvFresh,arenaWires]
  · norm_num [s2Step34EntryGvBefore,s2Step34EntryFBefore,s2Step34EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step34EntryGvAfter,s2Step34EntryGvBefore,s2Step34EntryFBefore,s2Step34EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step34EntryGv_checked : planRowResizeLog s2Step34EntryGvBefore s2Step34EntryGvRow 30 s2Step34EntryGvFresh=
    some (s2Step34EntryGvAfter,⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788],771⟩,growRow 771 s2Step34EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step34EntryGvBefore s2Step34EntryGvAfter s2Step34EntryGvRow 30 s2Step34EntryGvFresh
    s2Step34EntryGv_distinct s2Step34EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step34EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step34EntryGvRow.payload++s2Step34EntryGvFresh) s2Step34EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step35EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step35EntryFAfter : Arena := s2Step35EntryFBefore
def s2Step35EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762],768⟩
def s2Step35EntryFFresh : List Wire := []
theorem s2Step35EntryF_distinct : (s2Step35EntryFRow.sign::s2Step35EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step35EntryF_owned : (s2Step35EntryFRow.sign::s2Step35EntryFRow.payload).toFinset⊆s2Step35EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step35EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35EntryF_reserved : s2Step35EntryFBefore.reserve s2Step35EntryFFresh.toFinset=some s2Step35EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step35EntryFFresh,arenaWires]
  · norm_num [s2Step35EntryFBefore,s2Step35EntryFFresh,arenaWires]
  · simp only [s2Step35EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step35EntryF_checked : planRowResizeLog s2Step35EntryFBefore s2Step35EntryFRow 251 s2Step35EntryFFresh=
    some (s2Step35EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762],768⟩,growRow 768 s2Step35EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step35EntryFBefore s2Step35EntryFAfter s2Step35EntryFRow 251 s2Step35EntryFFresh
    s2Step35EntryF_distinct s2Step35EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step35EntryF_reserved
  have rowEq : WindowRow.mk (s2Step35EntryFRow.payload++s2Step35EntryFFresh) s2Step35EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step35EntryGBefore : Arena := s2Step35EntryFBefore
def s2Step35EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step35EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249],769⟩
def s2Step35EntryGFresh : List Wire := [790]
theorem s2Step35EntryG_distinct : (s2Step35EntryGRow.sign::s2Step35EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step35EntryG_owned : (s2Step35EntryGRow.sign::s2Step35EntryGRow.payload).toFinset⊆s2Step35EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step35EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35EntryG_reserved : s2Step35EntryGBefore.reserve s2Step35EntryGFresh.toFinset=some s2Step35EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step35EntryGFresh,arenaWires]
  · norm_num [s2Step35EntryGBefore,s2Step35EntryFBefore,s2Step35EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step35EntryGAfter,s2Step35EntryGBefore,s2Step35EntryFBefore,s2Step35EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step35EntryG_checked : planRowResizeLog s2Step35EntryGBefore s2Step35EntryGRow 251 s2Step35EntryGFresh=
    some (s2Step35EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790],769⟩,growRow 769 s2Step35EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step35EntryGBefore s2Step35EntryGAfter s2Step35EntryGRow 251 s2Step35EntryGFresh
    s2Step35EntryG_distinct s2Step35EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step35EntryG_reserved
  have rowEq : WindowRow.mk (s2Step35EntryGRow.payload++s2Step35EntryGFresh) s2Step35EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step35EntryFvBefore : Arena := s2Step35EntryGAfter
def s2Step35EntryFvAfter : Arena := s2Step35EntryGAfter
def s2Step35EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781],770⟩
def s2Step35EntryFvFresh : List Wire := []
theorem s2Step35EntryFv_distinct : (s2Step35EntryFvRow.sign::s2Step35EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step35EntryFv_owned : (s2Step35EntryFvRow.sign::s2Step35EntryFvRow.payload).toFinset⊆s2Step35EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step35EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35EntryFv_reserved : s2Step35EntryFvBefore.reserve s2Step35EntryFvFresh.toFinset=some s2Step35EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step35EntryFvFresh,arenaWires]
  · norm_num [s2Step35EntryFvBefore,s2Step35EntryGAfter,s2Step35EntryFvFresh,arenaWires]
  · simp only [s2Step35EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step35EntryFv_checked : planRowResizeLog s2Step35EntryFvBefore s2Step35EntryFvRow 30 s2Step35EntryFvFresh=
    some (s2Step35EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781],770⟩,growRow 770 s2Step35EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step35EntryFvBefore s2Step35EntryFvAfter s2Step35EntryFvRow 30 s2Step35EntryFvFresh
    s2Step35EntryFv_distinct s2Step35EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step35EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step35EntryFvRow.payload++s2Step35EntryFvFresh) s2Step35EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step35EntryGvBefore : Arena := s2Step35EntryGAfter
def s2Step35EntryGvAfter : Arena := s2Step35EntryGAfter
def s2Step35EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788],771⟩
def s2Step35EntryGvFresh : List Wire := []
theorem s2Step35EntryGv_distinct : (s2Step35EntryGvRow.sign::s2Step35EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step35EntryGv_owned : (s2Step35EntryGvRow.sign::s2Step35EntryGvRow.payload).toFinset⊆s2Step35EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step35EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35EntryGv_reserved : s2Step35EntryGvBefore.reserve s2Step35EntryGvFresh.toFinset=some s2Step35EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step35EntryGvFresh,arenaWires]
  · norm_num [s2Step35EntryGvBefore,s2Step35EntryGAfter,s2Step35EntryGvFresh,arenaWires]
  · simp only [s2Step35EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step35EntryGv_checked : planRowResizeLog s2Step35EntryGvBefore s2Step35EntryGvRow 30 s2Step35EntryGvFresh=
    some (s2Step35EntryGvAfter,⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788],771⟩,growRow 771 s2Step35EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step35EntryGvBefore s2Step35EntryGvAfter s2Step35EntryGvRow 30 s2Step35EntryGvFresh
    s2Step35EntryGv_distinct s2Step35EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step35EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step35EntryGvRow.payload++s2Step35EntryGvFresh) s2Step35EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step36EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step36EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step36EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761],768⟩
def s2Step36EntryFFresh : List Wire := [793]
theorem s2Step36EntryF_distinct : (s2Step36EntryFRow.sign::s2Step36EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step36EntryF_owned : (s2Step36EntryFRow.sign::s2Step36EntryFRow.payload).toFinset⊆s2Step36EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step36EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36EntryF_reserved : s2Step36EntryFBefore.reserve s2Step36EntryFFresh.toFinset=some s2Step36EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step36EntryFFresh,arenaWires]
  · norm_num [s2Step36EntryFBefore,s2Step36EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step36EntryFAfter,s2Step36EntryFBefore,s2Step36EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step36EntryF_checked : planRowResizeLog s2Step36EntryFBefore s2Step36EntryFRow 251 s2Step36EntryFFresh=
    some (s2Step36EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 793],768⟩,growRow 768 s2Step36EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step36EntryFBefore s2Step36EntryFAfter s2Step36EntryFRow 251 s2Step36EntryFFresh
    s2Step36EntryF_distinct s2Step36EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step36EntryF_reserved
  have rowEq : WindowRow.mk (s2Step36EntryFRow.payload++s2Step36EntryFFresh) s2Step36EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 793],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step36EntryGBefore : Arena := s2Step36EntryFAfter
def s2Step36EntryGAfter : Arena := s2Step36EntryFAfter
def s2Step36EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790],769⟩
def s2Step36EntryGFresh : List Wire := []
theorem s2Step36EntryG_distinct : (s2Step36EntryGRow.sign::s2Step36EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step36EntryG_owned : (s2Step36EntryGRow.sign::s2Step36EntryGRow.payload).toFinset⊆s2Step36EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step36EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36EntryG_reserved : s2Step36EntryGBefore.reserve s2Step36EntryGFresh.toFinset=some s2Step36EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step36EntryGFresh,arenaWires]
  · norm_num [s2Step36EntryGBefore,s2Step36EntryFAfter,s2Step36EntryGFresh,arenaWires]
  · simp only [s2Step36EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step36EntryG_checked : planRowResizeLog s2Step36EntryGBefore s2Step36EntryGRow 251 s2Step36EntryGFresh=
    some (s2Step36EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790],769⟩,growRow 769 s2Step36EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step36EntryGBefore s2Step36EntryGAfter s2Step36EntryGRow 251 s2Step36EntryGFresh
    s2Step36EntryG_distinct s2Step36EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step36EntryG_reserved
  have rowEq : WindowRow.mk (s2Step36EntryGRow.payload++s2Step36EntryGFresh) s2Step36EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step36EntryFvBefore : Arena := s2Step36EntryFAfter
def s2Step36EntryFvAfter : Arena := s2Step36EntryFAfter
def s2Step36EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785],770⟩
def s2Step36EntryFvFresh : List Wire := []
theorem s2Step36EntryFv_distinct : (s2Step36EntryFvRow.sign::s2Step36EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step36EntryFv_owned : (s2Step36EntryFvRow.sign::s2Step36EntryFvRow.payload).toFinset⊆s2Step36EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step36EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36EntryFv_reserved : s2Step36EntryFvBefore.reserve s2Step36EntryFvFresh.toFinset=some s2Step36EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step36EntryFvFresh,arenaWires]
  · norm_num [s2Step36EntryFvBefore,s2Step36EntryFAfter,s2Step36EntryFvFresh,arenaWires]
  · simp only [s2Step36EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step36EntryFv_checked : planRowResizeLog s2Step36EntryFvBefore s2Step36EntryFvRow 31 s2Step36EntryFvFresh=
    some (s2Step36EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785],770⟩,growRow 770 s2Step36EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step36EntryFvBefore s2Step36EntryFvAfter s2Step36EntryFvRow 31 s2Step36EntryFvFresh
    s2Step36EntryFv_distinct s2Step36EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step36EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step36EntryFvRow.payload++s2Step36EntryFvFresh) s2Step36EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step36EntryGvBefore : Arena := s2Step36EntryFAfter
def s2Step36EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step36EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788],771⟩
def s2Step36EntryGvFresh : List Wire := [789]
theorem s2Step36EntryGv_distinct : (s2Step36EntryGvRow.sign::s2Step36EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step36EntryGv_owned : (s2Step36EntryGvRow.sign::s2Step36EntryGvRow.payload).toFinset⊆s2Step36EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step36EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36EntryGv_reserved : s2Step36EntryGvBefore.reserve s2Step36EntryGvFresh.toFinset=some s2Step36EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step36EntryGvFresh,arenaWires]
  · norm_num [s2Step36EntryGvBefore,s2Step36EntryFAfter,s2Step36EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step36EntryGvAfter,s2Step36EntryGvBefore,s2Step36EntryFAfter,s2Step36EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step36EntryGv_checked : planRowResizeLog s2Step36EntryGvBefore s2Step36EntryGvRow 31 s2Step36EntryGvFresh=
    some (s2Step36EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789],771⟩,growRow 771 s2Step36EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step36EntryGvBefore s2Step36EntryGvAfter s2Step36EntryGvRow 31 s2Step36EntryGvFresh
    s2Step36EntryGv_distinct s2Step36EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step36EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step36EntryGvRow.payload++s2Step36EntryGvFresh) s2Step36EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step37EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step37EntryFAfter : Arena := s2Step37EntryFBefore
def s2Step37EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761],768⟩
def s2Step37EntryFFresh : List Wire := []
theorem s2Step37EntryF_distinct : (s2Step37EntryFRow.sign::s2Step37EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step37EntryF_owned : (s2Step37EntryFRow.sign::s2Step37EntryFRow.payload).toFinset⊆s2Step37EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step37EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37EntryF_reserved : s2Step37EntryFBefore.reserve s2Step37EntryFFresh.toFinset=some s2Step37EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step37EntryFFresh,arenaWires]
  · norm_num [s2Step37EntryFBefore,s2Step37EntryFFresh,arenaWires]
  · simp only [s2Step37EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step37EntryF_checked : planRowResizeLog s2Step37EntryFBefore s2Step37EntryFRow 250 s2Step37EntryFFresh=
    some (s2Step37EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761],768⟩,growRow 768 s2Step37EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step37EntryFBefore s2Step37EntryFAfter s2Step37EntryFRow 250 s2Step37EntryFFresh
    s2Step37EntryF_distinct s2Step37EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step37EntryF_reserved
  have rowEq : WindowRow.mk (s2Step37EntryFRow.payload++s2Step37EntryFFresh) s2Step37EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step37EntryGBefore : Arena := s2Step37EntryFBefore
def s2Step37EntryGAfter : Arena := s2Step37EntryFBefore
def s2Step37EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249],769⟩
def s2Step37EntryGFresh : List Wire := []
theorem s2Step37EntryG_distinct : (s2Step37EntryGRow.sign::s2Step37EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step37EntryG_owned : (s2Step37EntryGRow.sign::s2Step37EntryGRow.payload).toFinset⊆s2Step37EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step37EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37EntryG_reserved : s2Step37EntryGBefore.reserve s2Step37EntryGFresh.toFinset=some s2Step37EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step37EntryGFresh,arenaWires]
  · norm_num [s2Step37EntryGBefore,s2Step37EntryFBefore,s2Step37EntryGFresh,arenaWires]
  · simp only [s2Step37EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step37EntryG_checked : planRowResizeLog s2Step37EntryGBefore s2Step37EntryGRow 250 s2Step37EntryGFresh=
    some (s2Step37EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249],769⟩,growRow 769 s2Step37EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step37EntryGBefore s2Step37EntryGAfter s2Step37EntryGRow 250 s2Step37EntryGFresh
    s2Step37EntryG_distinct s2Step37EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step37EntryG_reserved
  have rowEq : WindowRow.mk (s2Step37EntryGRow.payload++s2Step37EntryGFresh) s2Step37EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step37EntryFvBefore : Arena := s2Step37EntryFBefore
def s2Step37EntryFvAfter : Arena := s2Step37EntryFBefore
def s2Step37EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785],770⟩
def s2Step37EntryFvFresh : List Wire := []
theorem s2Step37EntryFv_distinct : (s2Step37EntryFvRow.sign::s2Step37EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step37EntryFv_owned : (s2Step37EntryFvRow.sign::s2Step37EntryFvRow.payload).toFinset⊆s2Step37EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step37EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37EntryFv_reserved : s2Step37EntryFvBefore.reserve s2Step37EntryFvFresh.toFinset=some s2Step37EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step37EntryFvFresh,arenaWires]
  · norm_num [s2Step37EntryFvBefore,s2Step37EntryFBefore,s2Step37EntryFvFresh,arenaWires]
  · simp only [s2Step37EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step37EntryFv_checked : planRowResizeLog s2Step37EntryFvBefore s2Step37EntryFvRow 31 s2Step37EntryFvFresh=
    some (s2Step37EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785],770⟩,growRow 770 s2Step37EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step37EntryFvBefore s2Step37EntryFvAfter s2Step37EntryFvRow 31 s2Step37EntryFvFresh
    s2Step37EntryFv_distinct s2Step37EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step37EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step37EntryFvRow.payload++s2Step37EntryFvFresh) s2Step37EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step37EntryGvBefore : Arena := s2Step37EntryFBefore
def s2Step37EntryGvAfter : Arena := s2Step37EntryFBefore
def s2Step37EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789],771⟩
def s2Step37EntryGvFresh : List Wire := []
theorem s2Step37EntryGv_distinct : (s2Step37EntryGvRow.sign::s2Step37EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step37EntryGv_owned : (s2Step37EntryGvRow.sign::s2Step37EntryGvRow.payload).toFinset⊆s2Step37EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step37EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37EntryGv_reserved : s2Step37EntryGvBefore.reserve s2Step37EntryGvFresh.toFinset=some s2Step37EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step37EntryGvFresh,arenaWires]
  · norm_num [s2Step37EntryGvBefore,s2Step37EntryFBefore,s2Step37EntryGvFresh,arenaWires]
  · simp only [s2Step37EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step37EntryGv_checked : planRowResizeLog s2Step37EntryGvBefore s2Step37EntryGvRow 31 s2Step37EntryGvFresh=
    some (s2Step37EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789],771⟩,growRow 771 s2Step37EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step37EntryGvBefore s2Step37EntryGvAfter s2Step37EntryGvRow 31 s2Step37EntryGvFresh
    s2Step37EntryGv_distinct s2Step37EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step37EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step37EntryGvRow.payload++s2Step37EntryGvFresh) s2Step37EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step38EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step38EntryFAfter : Arena := s2Step38EntryFBefore
def s2Step38EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761],768⟩
def s2Step38EntryFFresh : List Wire := []
theorem s2Step38EntryF_distinct : (s2Step38EntryFRow.sign::s2Step38EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step38EntryF_owned : (s2Step38EntryFRow.sign::s2Step38EntryFRow.payload).toFinset⊆s2Step38EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step38EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38EntryF_reserved : s2Step38EntryFBefore.reserve s2Step38EntryFFresh.toFinset=some s2Step38EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step38EntryFFresh,arenaWires]
  · norm_num [s2Step38EntryFBefore,s2Step38EntryFFresh,arenaWires]
  · simp only [s2Step38EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step38EntryF_checked : planRowResizeLog s2Step38EntryFBefore s2Step38EntryFRow 250 s2Step38EntryFFresh=
    some (s2Step38EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761],768⟩,growRow 768 s2Step38EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step38EntryFBefore s2Step38EntryFAfter s2Step38EntryFRow 250 s2Step38EntryFFresh
    s2Step38EntryF_distinct s2Step38EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step38EntryF_reserved
  have rowEq : WindowRow.mk (s2Step38EntryFRow.payload++s2Step38EntryFFresh) s2Step38EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step38EntryGBefore : Arena := s2Step38EntryFBefore
def s2Step38EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step38EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248],769⟩
def s2Step38EntryGFresh : List Wire := [792]
theorem s2Step38EntryG_distinct : (s2Step38EntryGRow.sign::s2Step38EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step38EntryG_owned : (s2Step38EntryGRow.sign::s2Step38EntryGRow.payload).toFinset⊆s2Step38EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step38EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38EntryG_reserved : s2Step38EntryGBefore.reserve s2Step38EntryGFresh.toFinset=some s2Step38EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step38EntryGFresh,arenaWires]
  · norm_num [s2Step38EntryGBefore,s2Step38EntryFBefore,s2Step38EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step38EntryGAfter,s2Step38EntryGBefore,s2Step38EntryFBefore,s2Step38EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step38EntryG_checked : planRowResizeLog s2Step38EntryGBefore s2Step38EntryGRow 250 s2Step38EntryGFresh=
    some (s2Step38EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 792],769⟩,growRow 769 s2Step38EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step38EntryGBefore s2Step38EntryGAfter s2Step38EntryGRow 250 s2Step38EntryGFresh
    s2Step38EntryG_distinct s2Step38EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step38EntryG_reserved
  have rowEq : WindowRow.mk (s2Step38EntryGRow.payload++s2Step38EntryGFresh) s2Step38EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 792],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step38EntryFvBefore : Arena := s2Step38EntryGAfter
def s2Step38EntryFvAfter : Arena := s2Step38EntryGAfter
def s2Step38EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779],770⟩
def s2Step38EntryFvFresh : List Wire := []
theorem s2Step38EntryFv_distinct : (s2Step38EntryFvRow.sign::s2Step38EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step38EntryFv_owned : (s2Step38EntryFvRow.sign::s2Step38EntryFvRow.payload).toFinset⊆s2Step38EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step38EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38EntryFv_reserved : s2Step38EntryFvBefore.reserve s2Step38EntryFvFresh.toFinset=some s2Step38EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step38EntryFvFresh,arenaWires]
  · norm_num [s2Step38EntryFvBefore,s2Step38EntryGAfter,s2Step38EntryFvFresh,arenaWires]
  · simp only [s2Step38EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step38EntryFv_checked : planRowResizeLog s2Step38EntryFvBefore s2Step38EntryFvRow 32 s2Step38EntryFvFresh=
    some (s2Step38EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779],770⟩,growRow 770 s2Step38EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step38EntryFvBefore s2Step38EntryFvAfter s2Step38EntryFvRow 32 s2Step38EntryFvFresh
    s2Step38EntryFv_distinct s2Step38EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step38EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step38EntryFvRow.payload++s2Step38EntryFvFresh) s2Step38EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step38EntryGvBefore : Arena := s2Step38EntryGAfter
def s2Step38EntryGvAfter : Arena := s2Step38EntryGAfter
def s2Step38EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793],771⟩
def s2Step38EntryGvFresh : List Wire := []
theorem s2Step38EntryGv_distinct : (s2Step38EntryGvRow.sign::s2Step38EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step38EntryGv_owned : (s2Step38EntryGvRow.sign::s2Step38EntryGvRow.payload).toFinset⊆s2Step38EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step38EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38EntryGv_reserved : s2Step38EntryGvBefore.reserve s2Step38EntryGvFresh.toFinset=some s2Step38EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step38EntryGvFresh,arenaWires]
  · norm_num [s2Step38EntryGvBefore,s2Step38EntryGAfter,s2Step38EntryGvFresh,arenaWires]
  · simp only [s2Step38EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step38EntryGv_checked : planRowResizeLog s2Step38EntryGvBefore s2Step38EntryGvRow 32 s2Step38EntryGvFresh=
    some (s2Step38EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793],771⟩,growRow 771 s2Step38EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step38EntryGvBefore s2Step38EntryGvAfter s2Step38EntryGvRow 32 s2Step38EntryGvFresh
    s2Step38EntryGv_distinct s2Step38EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step38EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step38EntryGvRow.payload++s2Step38EntryGvFresh) s2Step38EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step39EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step39EntryFAfter : Arena := s2Step39EntryFBefore
def s2Step39EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760],768⟩
def s2Step39EntryFFresh : List Wire := []
theorem s2Step39EntryF_distinct : (s2Step39EntryFRow.sign::s2Step39EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step39EntryF_owned : (s2Step39EntryFRow.sign::s2Step39EntryFRow.payload).toFinset⊆s2Step39EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step39EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39EntryF_reserved : s2Step39EntryFBefore.reserve s2Step39EntryFFresh.toFinset=some s2Step39EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step39EntryFFresh,arenaWires]
  · norm_num [s2Step39EntryFBefore,s2Step39EntryFFresh,arenaWires]
  · simp only [s2Step39EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step39EntryF_checked : planRowResizeLog s2Step39EntryFBefore s2Step39EntryFRow 249 s2Step39EntryFFresh=
    some (s2Step39EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760],768⟩,growRow 768 s2Step39EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step39EntryFBefore s2Step39EntryFAfter s2Step39EntryFRow 249 s2Step39EntryFFresh
    s2Step39EntryF_distinct s2Step39EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step39EntryF_reserved
  have rowEq : WindowRow.mk (s2Step39EntryFRow.payload++s2Step39EntryFFresh) s2Step39EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step39EntryGBefore : Arena := s2Step39EntryFBefore
def s2Step39EntryGAfter : Arena := s2Step39EntryFBefore
def s2Step39EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248],769⟩
def s2Step39EntryGFresh : List Wire := []
theorem s2Step39EntryG_distinct : (s2Step39EntryGRow.sign::s2Step39EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step39EntryG_owned : (s2Step39EntryGRow.sign::s2Step39EntryGRow.payload).toFinset⊆s2Step39EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step39EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39EntryG_reserved : s2Step39EntryGBefore.reserve s2Step39EntryGFresh.toFinset=some s2Step39EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step39EntryGFresh,arenaWires]
  · norm_num [s2Step39EntryGBefore,s2Step39EntryFBefore,s2Step39EntryGFresh,arenaWires]
  · simp only [s2Step39EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step39EntryG_checked : planRowResizeLog s2Step39EntryGBefore s2Step39EntryGRow 249 s2Step39EntryGFresh=
    some (s2Step39EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248],769⟩,growRow 769 s2Step39EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step39EntryGBefore s2Step39EntryGAfter s2Step39EntryGRow 249 s2Step39EntryGFresh
    s2Step39EntryG_distinct s2Step39EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step39EntryG_reserved
  have rowEq : WindowRow.mk (s2Step39EntryGRow.payload++s2Step39EntryGFresh) s2Step39EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step39EntryFvBefore : Arena := s2Step39EntryFBefore
def s2Step39EntryFvAfter : Arena := s2Step39EntryFBefore
def s2Step39EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779],770⟩
def s2Step39EntryFvFresh : List Wire := []
theorem s2Step39EntryFv_distinct : (s2Step39EntryFvRow.sign::s2Step39EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step39EntryFv_owned : (s2Step39EntryFvRow.sign::s2Step39EntryFvRow.payload).toFinset⊆s2Step39EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step39EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39EntryFv_reserved : s2Step39EntryFvBefore.reserve s2Step39EntryFvFresh.toFinset=some s2Step39EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step39EntryFvFresh,arenaWires]
  · norm_num [s2Step39EntryFvBefore,s2Step39EntryFBefore,s2Step39EntryFvFresh,arenaWires]
  · simp only [s2Step39EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step39EntryFv_checked : planRowResizeLog s2Step39EntryFvBefore s2Step39EntryFvRow 32 s2Step39EntryFvFresh=
    some (s2Step39EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779],770⟩,growRow 770 s2Step39EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step39EntryFvBefore s2Step39EntryFvAfter s2Step39EntryFvRow 32 s2Step39EntryFvFresh
    s2Step39EntryFv_distinct s2Step39EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step39EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step39EntryFvRow.payload++s2Step39EntryFvFresh) s2Step39EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step39EntryGvBefore : Arena := s2Step39EntryFBefore
def s2Step39EntryGvAfter : Arena := s2Step39EntryFBefore
def s2Step39EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793],771⟩
def s2Step39EntryGvFresh : List Wire := []
theorem s2Step39EntryGv_distinct : (s2Step39EntryGvRow.sign::s2Step39EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step39EntryGv_owned : (s2Step39EntryGvRow.sign::s2Step39EntryGvRow.payload).toFinset⊆s2Step39EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step39EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39EntryGv_reserved : s2Step39EntryGvBefore.reserve s2Step39EntryGvFresh.toFinset=some s2Step39EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step39EntryGvFresh,arenaWires]
  · norm_num [s2Step39EntryGvBefore,s2Step39EntryFBefore,s2Step39EntryGvFresh,arenaWires]
  · simp only [s2Step39EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step39EntryGv_checked : planRowResizeLog s2Step39EntryGvBefore s2Step39EntryGvRow 32 s2Step39EntryGvFresh=
    some (s2Step39EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793],771⟩,growRow 771 s2Step39EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step39EntryGvBefore s2Step39EntryGvAfter s2Step39EntryGvRow 32 s2Step39EntryGvFresh
    s2Step39EntryGv_distinct s2Step39EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step39EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step39EntryGvRow.payload++s2Step39EntryGvFresh) s2Step39EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step40EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step40EntryFAfter : Arena := s2Step40EntryFBefore
def s2Step40EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760],768⟩
def s2Step40EntryFFresh : List Wire := []
theorem s2Step40EntryF_distinct : (s2Step40EntryFRow.sign::s2Step40EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step40EntryF_owned : (s2Step40EntryFRow.sign::s2Step40EntryFRow.payload).toFinset⊆s2Step40EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step40EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40EntryF_reserved : s2Step40EntryFBefore.reserve s2Step40EntryFFresh.toFinset=some s2Step40EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step40EntryFFresh,arenaWires]
  · norm_num [s2Step40EntryFBefore,s2Step40EntryFFresh,arenaWires]
  · simp only [s2Step40EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step40EntryF_checked : planRowResizeLog s2Step40EntryFBefore s2Step40EntryFRow 249 s2Step40EntryFFresh=
    some (s2Step40EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760],768⟩,growRow 768 s2Step40EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step40EntryFBefore s2Step40EntryFAfter s2Step40EntryFRow 249 s2Step40EntryFFresh
    s2Step40EntryF_distinct s2Step40EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step40EntryF_reserved
  have rowEq : WindowRow.mk (s2Step40EntryFRow.payload++s2Step40EntryFFresh) s2Step40EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step40EntryGBefore : Arena := s2Step40EntryFBefore
def s2Step40EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step40EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],769⟩
def s2Step40EntryGFresh : List Wire := [787]
theorem s2Step40EntryG_distinct : (s2Step40EntryGRow.sign::s2Step40EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step40EntryG_owned : (s2Step40EntryGRow.sign::s2Step40EntryGRow.payload).toFinset⊆s2Step40EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step40EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40EntryG_reserved : s2Step40EntryGBefore.reserve s2Step40EntryGFresh.toFinset=some s2Step40EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step40EntryGFresh,arenaWires]
  · norm_num [s2Step40EntryGBefore,s2Step40EntryFBefore,s2Step40EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step40EntryGAfter,s2Step40EntryGBefore,s2Step40EntryFBefore,s2Step40EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step40EntryG_checked : planRowResizeLog s2Step40EntryGBefore s2Step40EntryGRow 249 s2Step40EntryGFresh=
    some (s2Step40EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 787],769⟩,growRow 769 s2Step40EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step40EntryGBefore s2Step40EntryGAfter s2Step40EntryGRow 249 s2Step40EntryGFresh
    s2Step40EntryG_distinct s2Step40EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step40EntryG_reserved
  have rowEq : WindowRow.mk (s2Step40EntryGRow.payload++s2Step40EntryGFresh) s2Step40EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 787],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step40EntryFvBefore : Arena := s2Step40EntryGAfter
def s2Step40EntryFvAfter : Arena := s2Step40EntryGAfter
def s2Step40EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786],770⟩
def s2Step40EntryFvFresh : List Wire := []
theorem s2Step40EntryFv_distinct : (s2Step40EntryFvRow.sign::s2Step40EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step40EntryFv_owned : (s2Step40EntryFvRow.sign::s2Step40EntryFvRow.payload).toFinset⊆s2Step40EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step40EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40EntryFv_reserved : s2Step40EntryFvBefore.reserve s2Step40EntryFvFresh.toFinset=some s2Step40EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step40EntryFvFresh,arenaWires]
  · norm_num [s2Step40EntryFvBefore,s2Step40EntryGAfter,s2Step40EntryFvFresh,arenaWires]
  · simp only [s2Step40EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step40EntryFv_checked : planRowResizeLog s2Step40EntryFvBefore s2Step40EntryFvRow 33 s2Step40EntryFvFresh=
    some (s2Step40EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786],770⟩,growRow 770 s2Step40EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step40EntryFvBefore s2Step40EntryFvAfter s2Step40EntryFvRow 33 s2Step40EntryFvFresh
    s2Step40EntryFv_distinct s2Step40EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step40EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step40EntryFvRow.payload++s2Step40EntryFvFresh) s2Step40EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step40EntryGvBefore : Arena := s2Step40EntryGAfter
def s2Step40EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step40EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793],771⟩
def s2Step40EntryGvFresh : List Wire := [796]
theorem s2Step40EntryGv_distinct : (s2Step40EntryGvRow.sign::s2Step40EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step40EntryGv_owned : (s2Step40EntryGvRow.sign::s2Step40EntryGvRow.payload).toFinset⊆s2Step40EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step40EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40EntryGv_reserved : s2Step40EntryGvBefore.reserve s2Step40EntryGvFresh.toFinset=some s2Step40EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step40EntryGvFresh,arenaWires]
  · norm_num [s2Step40EntryGvBefore,s2Step40EntryGAfter,s2Step40EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step40EntryGvAfter,s2Step40EntryGvBefore,s2Step40EntryGAfter,s2Step40EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step40EntryGv_checked : planRowResizeLog s2Step40EntryGvBefore s2Step40EntryGvRow 33 s2Step40EntryGvFresh=
    some (s2Step40EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796],771⟩,growRow 771 s2Step40EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step40EntryGvBefore s2Step40EntryGvAfter s2Step40EntryGvRow 33 s2Step40EntryGvFresh
    s2Step40EntryGv_distinct s2Step40EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step40EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step40EntryGvRow.payload++s2Step40EntryGvFresh) s2Step40EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step41EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step41EntryFAfter : Arena := s2Step41EntryFBefore
def s2Step41EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759],768⟩
def s2Step41EntryFFresh : List Wire := []
theorem s2Step41EntryF_distinct : (s2Step41EntryFRow.sign::s2Step41EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step41EntryF_owned : (s2Step41EntryFRow.sign::s2Step41EntryFRow.payload).toFinset⊆s2Step41EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step41EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41EntryF_reserved : s2Step41EntryFBefore.reserve s2Step41EntryFFresh.toFinset=some s2Step41EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step41EntryFFresh,arenaWires]
  · norm_num [s2Step41EntryFBefore,s2Step41EntryFFresh,arenaWires]
  · simp only [s2Step41EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step41EntryF_checked : planRowResizeLog s2Step41EntryFBefore s2Step41EntryFRow 248 s2Step41EntryFFresh=
    some (s2Step41EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759],768⟩,growRow 768 s2Step41EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step41EntryFBefore s2Step41EntryFAfter s2Step41EntryFRow 248 s2Step41EntryFFresh
    s2Step41EntryF_distinct s2Step41EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step41EntryF_reserved
  have rowEq : WindowRow.mk (s2Step41EntryFRow.payload++s2Step41EntryFFresh) s2Step41EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step41EntryGBefore : Arena := s2Step41EntryFBefore
def s2Step41EntryGAfter : Arena := s2Step41EntryFBefore
def s2Step41EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],769⟩
def s2Step41EntryGFresh : List Wire := []
theorem s2Step41EntryG_distinct : (s2Step41EntryGRow.sign::s2Step41EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step41EntryG_owned : (s2Step41EntryGRow.sign::s2Step41EntryGRow.payload).toFinset⊆s2Step41EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step41EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41EntryG_reserved : s2Step41EntryGBefore.reserve s2Step41EntryGFresh.toFinset=some s2Step41EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step41EntryGFresh,arenaWires]
  · norm_num [s2Step41EntryGBefore,s2Step41EntryFBefore,s2Step41EntryGFresh,arenaWires]
  · simp only [s2Step41EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step41EntryG_checked : planRowResizeLog s2Step41EntryGBefore s2Step41EntryGRow 248 s2Step41EntryGFresh=
    some (s2Step41EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],769⟩,growRow 769 s2Step41EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step41EntryGBefore s2Step41EntryGAfter s2Step41EntryGRow 248 s2Step41EntryGFresh
    s2Step41EntryG_distinct s2Step41EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step41EntryG_reserved
  have rowEq : WindowRow.mk (s2Step41EntryGRow.payload++s2Step41EntryGFresh) s2Step41EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step41EntryFvBefore : Arena := s2Step41EntryFBefore
def s2Step41EntryFvAfter : Arena := s2Step41EntryFBefore
def s2Step41EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩
def s2Step41EntryFvFresh : List Wire := []
theorem s2Step41EntryFv_distinct : (s2Step41EntryFvRow.sign::s2Step41EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step41EntryFv_owned : (s2Step41EntryFvRow.sign::s2Step41EntryFvRow.payload).toFinset⊆s2Step41EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step41EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41EntryFv_reserved : s2Step41EntryFvBefore.reserve s2Step41EntryFvFresh.toFinset=some s2Step41EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step41EntryFvFresh,arenaWires]
  · norm_num [s2Step41EntryFvBefore,s2Step41EntryFBefore,s2Step41EntryFvFresh,arenaWires]
  · simp only [s2Step41EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step41EntryFv_checked : planRowResizeLog s2Step41EntryFvBefore s2Step41EntryFvRow 34 s2Step41EntryFvFresh=
    some (s2Step41EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩,growRow 770 s2Step41EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step41EntryFvBefore s2Step41EntryFvAfter s2Step41EntryFvRow 34 s2Step41EntryFvFresh
    s2Step41EntryFv_distinct s2Step41EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step41EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step41EntryFvRow.payload++s2Step41EntryFvFresh) s2Step41EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step41EntryGvBefore : Arena := s2Step41EntryFBefore
def s2Step41EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step41EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796],771⟩
def s2Step41EntryGvFresh : List Wire := [791]
theorem s2Step41EntryGv_distinct : (s2Step41EntryGvRow.sign::s2Step41EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step41EntryGv_owned : (s2Step41EntryGvRow.sign::s2Step41EntryGvRow.payload).toFinset⊆s2Step41EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step41EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41EntryGv_reserved : s2Step41EntryGvBefore.reserve s2Step41EntryGvFresh.toFinset=some s2Step41EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step41EntryGvFresh,arenaWires]
  · norm_num [s2Step41EntryGvBefore,s2Step41EntryFBefore,s2Step41EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step41EntryGvAfter,s2Step41EntryGvBefore,s2Step41EntryFBefore,s2Step41EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step41EntryGv_checked : planRowResizeLog s2Step41EntryGvBefore s2Step41EntryGvRow 34 s2Step41EntryGvFresh=
    some (s2Step41EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 791],771⟩,growRow 771 s2Step41EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step41EntryGvBefore s2Step41EntryGvAfter s2Step41EntryGvRow 34 s2Step41EntryGvFresh
    s2Step41EntryGv_distinct s2Step41EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step41EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step41EntryGvRow.payload++s2Step41EntryGvFresh) s2Step41EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 791],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step42EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step42EntryFAfter : Arena := s2Step42EntryFBefore
def s2Step42EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759],768⟩
def s2Step42EntryFFresh : List Wire := []
theorem s2Step42EntryF_distinct : (s2Step42EntryFRow.sign::s2Step42EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step42EntryF_owned : (s2Step42EntryFRow.sign::s2Step42EntryFRow.payload).toFinset⊆s2Step42EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step42EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42EntryF_reserved : s2Step42EntryFBefore.reserve s2Step42EntryFFresh.toFinset=some s2Step42EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step42EntryFFresh,arenaWires]
  · norm_num [s2Step42EntryFBefore,s2Step42EntryFFresh,arenaWires]
  · simp only [s2Step42EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step42EntryF_checked : planRowResizeLog s2Step42EntryFBefore s2Step42EntryFRow 248 s2Step42EntryFFresh=
    some (s2Step42EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759],768⟩,growRow 768 s2Step42EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step42EntryFBefore s2Step42EntryFAfter s2Step42EntryFRow 248 s2Step42EntryFFresh
    s2Step42EntryF_distinct s2Step42EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step42EntryF_reserved
  have rowEq : WindowRow.mk (s2Step42EntryFRow.payload++s2Step42EntryFFresh) s2Step42EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step42EntryGBefore : Arena := s2Step42EntryFBefore
def s2Step42EntryGAfter : Arena := s2Step42EntryFBefore
def s2Step42EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],769⟩
def s2Step42EntryGFresh : List Wire := []
theorem s2Step42EntryG_distinct : (s2Step42EntryGRow.sign::s2Step42EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step42EntryG_owned : (s2Step42EntryGRow.sign::s2Step42EntryGRow.payload).toFinset⊆s2Step42EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step42EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42EntryG_reserved : s2Step42EntryGBefore.reserve s2Step42EntryGFresh.toFinset=some s2Step42EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step42EntryGFresh,arenaWires]
  · norm_num [s2Step42EntryGBefore,s2Step42EntryFBefore,s2Step42EntryGFresh,arenaWires]
  · simp only [s2Step42EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step42EntryG_checked : planRowResizeLog s2Step42EntryGBefore s2Step42EntryGRow 248 s2Step42EntryGFresh=
    some (s2Step42EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],769⟩,growRow 769 s2Step42EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step42EntryGBefore s2Step42EntryGAfter s2Step42EntryGRow 248 s2Step42EntryGFresh
    s2Step42EntryG_distinct s2Step42EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step42EntryG_reserved
  have rowEq : WindowRow.mk (s2Step42EntryGRow.payload++s2Step42EntryGFresh) s2Step42EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step42EntryFvBefore : Arena := s2Step42EntryFBefore
def s2Step42EntryFvAfter : Arena := s2Step42EntryFBefore
def s2Step42EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩
def s2Step42EntryFvFresh : List Wire := []
theorem s2Step42EntryFv_distinct : (s2Step42EntryFvRow.sign::s2Step42EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step42EntryFv_owned : (s2Step42EntryFvRow.sign::s2Step42EntryFvRow.payload).toFinset⊆s2Step42EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step42EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42EntryFv_reserved : s2Step42EntryFvBefore.reserve s2Step42EntryFvFresh.toFinset=some s2Step42EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step42EntryFvFresh,arenaWires]
  · norm_num [s2Step42EntryFvBefore,s2Step42EntryFBefore,s2Step42EntryFvFresh,arenaWires]
  · simp only [s2Step42EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step42EntryFv_checked : planRowResizeLog s2Step42EntryFvBefore s2Step42EntryFvRow 34 s2Step42EntryFvFresh=
    some (s2Step42EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩,growRow 770 s2Step42EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step42EntryFvBefore s2Step42EntryFvAfter s2Step42EntryFvRow 34 s2Step42EntryFvFresh
    s2Step42EntryFv_distinct s2Step42EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step42EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step42EntryFvRow.payload++s2Step42EntryFvFresh) s2Step42EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step42EntryGvBefore : Arena := s2Step42EntryFBefore
def s2Step42EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step42EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796],771⟩
def s2Step42EntryGvFresh : List Wire := [797]
theorem s2Step42EntryGv_distinct : (s2Step42EntryGvRow.sign::s2Step42EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step42EntryGv_owned : (s2Step42EntryGvRow.sign::s2Step42EntryGvRow.payload).toFinset⊆s2Step42EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step42EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (799≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42EntryGv_reserved : s2Step42EntryGvBefore.reserve s2Step42EntryGvFresh.toFinset=some s2Step42EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step42EntryGvFresh,arenaWires]
  · norm_num [s2Step42EntryGvBefore,s2Step42EntryFBefore,s2Step42EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step42EntryGvAfter,s2Step42EntryGvBefore,s2Step42EntryFBefore,s2Step42EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step42EntryGv_checked : planRowResizeLog s2Step42EntryGvBefore s2Step42EntryGvRow 34 s2Step42EntryGvFresh=
    some (s2Step42EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797],771⟩,growRow 771 s2Step42EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step42EntryGvBefore s2Step42EntryGvAfter s2Step42EntryGvRow 34 s2Step42EntryGvFresh
    s2Step42EntryGv_distinct s2Step42EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step42EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step42EntryGvRow.payload++s2Step42EntryGvFresh) s2Step42EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step43EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step43EntryFAfter : Arena := s2Step43EntryFBefore
def s2Step43EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758],768⟩
def s2Step43EntryFFresh : List Wire := []
theorem s2Step43EntryF_distinct : (s2Step43EntryFRow.sign::s2Step43EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step43EntryF_owned : (s2Step43EntryFRow.sign::s2Step43EntryFRow.payload).toFinset⊆s2Step43EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step43EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43EntryF_reserved : s2Step43EntryFBefore.reserve s2Step43EntryFFresh.toFinset=some s2Step43EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step43EntryFFresh,arenaWires]
  · norm_num [s2Step43EntryFBefore,s2Step43EntryFFresh,arenaWires]
  · simp only [s2Step43EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step43EntryF_checked : planRowResizeLog s2Step43EntryFBefore s2Step43EntryFRow 247 s2Step43EntryFFresh=
    some (s2Step43EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758],768⟩,growRow 768 s2Step43EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step43EntryFBefore s2Step43EntryFAfter s2Step43EntryFRow 247 s2Step43EntryFFresh
    s2Step43EntryF_distinct s2Step43EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step43EntryF_reserved
  have rowEq : WindowRow.mk (s2Step43EntryFRow.payload++s2Step43EntryFFresh) s2Step43EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step43EntryGBefore : Arena := s2Step43EntryFBefore
def s2Step43EntryGAfter : Arena := s2Step43EntryFBefore
def s2Step43EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246],769⟩
def s2Step43EntryGFresh : List Wire := []
theorem s2Step43EntryG_distinct : (s2Step43EntryGRow.sign::s2Step43EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step43EntryG_owned : (s2Step43EntryGRow.sign::s2Step43EntryGRow.payload).toFinset⊆s2Step43EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step43EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43EntryG_reserved : s2Step43EntryGBefore.reserve s2Step43EntryGFresh.toFinset=some s2Step43EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step43EntryGFresh,arenaWires]
  · norm_num [s2Step43EntryGBefore,s2Step43EntryFBefore,s2Step43EntryGFresh,arenaWires]
  · simp only [s2Step43EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step43EntryG_checked : planRowResizeLog s2Step43EntryGBefore s2Step43EntryGRow 247 s2Step43EntryGFresh=
    some (s2Step43EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246],769⟩,growRow 769 s2Step43EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step43EntryGBefore s2Step43EntryGAfter s2Step43EntryGRow 247 s2Step43EntryGFresh
    s2Step43EntryG_distinct s2Step43EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step43EntryG_reserved
  have rowEq : WindowRow.mk (s2Step43EntryGRow.payload++s2Step43EntryGFresh) s2Step43EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step43EntryFvBefore : Arena := s2Step43EntryFBefore
def s2Step43EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step43EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩
def s2Step43EntryFvFresh : List Wire := [791]
theorem s2Step43EntryFv_distinct : (s2Step43EntryFvRow.sign::s2Step43EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step43EntryFv_owned : (s2Step43EntryFvRow.sign::s2Step43EntryFvRow.payload).toFinset⊆s2Step43EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step43EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43EntryFv_reserved : s2Step43EntryFvBefore.reserve s2Step43EntryFvFresh.toFinset=some s2Step43EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step43EntryFvFresh,arenaWires]
  · norm_num [s2Step43EntryFvBefore,s2Step43EntryFBefore,s2Step43EntryFvFresh,arenaWires]
  · ext q
    simp only [s2Step43EntryFvAfter,s2Step43EntryFvBefore,s2Step43EntryFBefore,s2Step43EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step43EntryFv_checked : planRowResizeLog s2Step43EntryFvBefore s2Step43EntryFvRow 35 s2Step43EntryFvFresh=
    some (s2Step43EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 791],770⟩,growRow 770 s2Step43EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step43EntryFvBefore s2Step43EntryFvAfter s2Step43EntryFvRow 35 s2Step43EntryFvFresh
    s2Step43EntryFv_distinct s2Step43EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step43EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step43EntryFvRow.payload++s2Step43EntryFvFresh) s2Step43EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step43EntryGvBefore : Arena := s2Step43EntryFvAfter
def s2Step43EntryGvAfter : Arena := s2Step43EntryFvAfter
def s2Step43EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩
def s2Step43EntryGvFresh : List Wire := []
theorem s2Step43EntryGv_distinct : (s2Step43EntryGvRow.sign::s2Step43EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step43EntryGv_owned : (s2Step43EntryGvRow.sign::s2Step43EntryGvRow.payload).toFinset⊆s2Step43EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step43EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43EntryGv_reserved : s2Step43EntryGvBefore.reserve s2Step43EntryGvFresh.toFinset=some s2Step43EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step43EntryGvFresh,arenaWires]
  · norm_num [s2Step43EntryGvBefore,s2Step43EntryFvAfter,s2Step43EntryGvFresh,arenaWires]
  · simp only [s2Step43EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step43EntryGv_checked : planRowResizeLog s2Step43EntryGvBefore s2Step43EntryGvRow 35 s2Step43EntryGvFresh=
    some (s2Step43EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩,growRow 771 s2Step43EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step43EntryGvBefore s2Step43EntryGvAfter s2Step43EntryGvRow 35 s2Step43EntryGvFresh
    s2Step43EntryGv_distinct s2Step43EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step43EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step43EntryGvRow.payload++s2Step43EntryGvFresh) s2Step43EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step44EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step44EntryFAfter : Arena := s2Step44EntryFBefore
def s2Step44EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757],768⟩
def s2Step44EntryFFresh : List Wire := []
theorem s2Step44EntryF_distinct : (s2Step44EntryFRow.sign::s2Step44EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step44EntryF_owned : (s2Step44EntryFRow.sign::s2Step44EntryFRow.payload).toFinset⊆s2Step44EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step44EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44EntryF_reserved : s2Step44EntryFBefore.reserve s2Step44EntryFFresh.toFinset=some s2Step44EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step44EntryFFresh,arenaWires]
  · norm_num [s2Step44EntryFBefore,s2Step44EntryFFresh,arenaWires]
  · simp only [s2Step44EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step44EntryF_checked : planRowResizeLog s2Step44EntryFBefore s2Step44EntryFRow 246 s2Step44EntryFFresh=
    some (s2Step44EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757],768⟩,growRow 768 s2Step44EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step44EntryFBefore s2Step44EntryFAfter s2Step44EntryFRow 246 s2Step44EntryFFresh
    s2Step44EntryF_distinct s2Step44EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step44EntryF_reserved
  have rowEq : WindowRow.mk (s2Step44EntryFRow.payload++s2Step44EntryFFresh) s2Step44EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step44EntryGBefore : Arena := s2Step44EntryFBefore
def s2Step44EntryGAfter : Arena := s2Step44EntryFBefore
def s2Step44EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245],769⟩
def s2Step44EntryGFresh : List Wire := []
theorem s2Step44EntryG_distinct : (s2Step44EntryGRow.sign::s2Step44EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step44EntryG_owned : (s2Step44EntryGRow.sign::s2Step44EntryGRow.payload).toFinset⊆s2Step44EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step44EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44EntryG_reserved : s2Step44EntryGBefore.reserve s2Step44EntryGFresh.toFinset=some s2Step44EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step44EntryGFresh,arenaWires]
  · norm_num [s2Step44EntryGBefore,s2Step44EntryFBefore,s2Step44EntryGFresh,arenaWires]
  · simp only [s2Step44EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step44EntryG_checked : planRowResizeLog s2Step44EntryGBefore s2Step44EntryGRow 246 s2Step44EntryGFresh=
    some (s2Step44EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245],769⟩,growRow 769 s2Step44EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step44EntryGBefore s2Step44EntryGAfter s2Step44EntryGRow 246 s2Step44EntryGFresh
    s2Step44EntryG_distinct s2Step44EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step44EntryG_reserved
  have rowEq : WindowRow.mk (s2Step44EntryGRow.payload++s2Step44EntryGFresh) s2Step44EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step44EntryFvBefore : Arena := s2Step44EntryFBefore
def s2Step44EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step44EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780],770⟩
def s2Step44EntryFvFresh : List Wire := [799]
theorem s2Step44EntryFv_distinct : (s2Step44EntryFvRow.sign::s2Step44EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step44EntryFv_owned : (s2Step44EntryFvRow.sign::s2Step44EntryFvRow.payload).toFinset⊆s2Step44EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step44EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44EntryFv_reserved : s2Step44EntryFvBefore.reserve s2Step44EntryFvFresh.toFinset=some s2Step44EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step44EntryFvFresh,arenaWires]
  · norm_num [s2Step44EntryFvBefore,s2Step44EntryFBefore,s2Step44EntryFvFresh,arenaWires]
  · ext q
    simp only [s2Step44EntryFvAfter,s2Step44EntryFvBefore,s2Step44EntryFBefore,s2Step44EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step44EntryFv_checked : planRowResizeLog s2Step44EntryFvBefore s2Step44EntryFvRow 35 s2Step44EntryFvFresh=
    some (s2Step44EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799],770⟩,growRow 770 s2Step44EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step44EntryFvBefore s2Step44EntryFvAfter s2Step44EntryFvRow 35 s2Step44EntryFvFresh
    s2Step44EntryFv_distinct s2Step44EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step44EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step44EntryFvRow.payload++s2Step44EntryFvFresh) s2Step44EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step44EntryGvBefore : Arena := s2Step44EntryFvAfter
def s2Step44EntryGvAfter : Arena := s2Step44EntryFvAfter
def s2Step44EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩
def s2Step44EntryGvFresh : List Wire := []
theorem s2Step44EntryGv_distinct : (s2Step44EntryGvRow.sign::s2Step44EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step44EntryGv_owned : (s2Step44EntryGvRow.sign::s2Step44EntryGvRow.payload).toFinset⊆s2Step44EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step44EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44EntryGv_reserved : s2Step44EntryGvBefore.reserve s2Step44EntryGvFresh.toFinset=some s2Step44EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step44EntryGvFresh,arenaWires]
  · norm_num [s2Step44EntryGvBefore,s2Step44EntryFvAfter,s2Step44EntryGvFresh,arenaWires]
  · simp only [s2Step44EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step44EntryGv_checked : planRowResizeLog s2Step44EntryGvBefore s2Step44EntryGvRow 35 s2Step44EntryGvFresh=
    some (s2Step44EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩,growRow 771 s2Step44EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step44EntryGvBefore s2Step44EntryGvAfter s2Step44EntryGvRow 35 s2Step44EntryGvFresh
    s2Step44EntryGv_distinct s2Step44EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step44EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step44EntryGvRow.payload++s2Step44EntryGvFresh) s2Step44EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step45EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step45EntryFAfter : Arena := s2Step45EntryFBefore
def s2Step45EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757],768⟩
def s2Step45EntryFFresh : List Wire := []
theorem s2Step45EntryF_distinct : (s2Step45EntryFRow.sign::s2Step45EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step45EntryF_owned : (s2Step45EntryFRow.sign::s2Step45EntryFRow.payload).toFinset⊆s2Step45EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step45EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45EntryF_reserved : s2Step45EntryFBefore.reserve s2Step45EntryFFresh.toFinset=some s2Step45EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step45EntryFFresh,arenaWires]
  · norm_num [s2Step45EntryFBefore,s2Step45EntryFFresh,arenaWires]
  · simp only [s2Step45EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step45EntryF_checked : planRowResizeLog s2Step45EntryFBefore s2Step45EntryFRow 246 s2Step45EntryFFresh=
    some (s2Step45EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757],768⟩,growRow 768 s2Step45EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step45EntryFBefore s2Step45EntryFAfter s2Step45EntryFRow 246 s2Step45EntryFFresh
    s2Step45EntryF_distinct s2Step45EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step45EntryF_reserved
  have rowEq : WindowRow.mk (s2Step45EntryFRow.payload++s2Step45EntryFFresh) s2Step45EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step45EntryGBefore : Arena := s2Step45EntryFBefore
def s2Step45EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step45EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244],769⟩
def s2Step45EntryGFresh : List Wire := [801]
theorem s2Step45EntryG_distinct : (s2Step45EntryGRow.sign::s2Step45EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step45EntryG_owned : (s2Step45EntryGRow.sign::s2Step45EntryGRow.payload).toFinset⊆s2Step45EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step45EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45EntryG_reserved : s2Step45EntryGBefore.reserve s2Step45EntryGFresh.toFinset=some s2Step45EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step45EntryGFresh,arenaWires]
  · norm_num [s2Step45EntryGBefore,s2Step45EntryFBefore,s2Step45EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step45EntryGAfter,s2Step45EntryGBefore,s2Step45EntryFBefore,s2Step45EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step45EntryG_checked : planRowResizeLog s2Step45EntryGBefore s2Step45EntryGRow 246 s2Step45EntryGFresh=
    some (s2Step45EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 801],769⟩,growRow 769 s2Step45EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step45EntryGBefore s2Step45EntryGAfter s2Step45EntryGRow 246 s2Step45EntryGFresh
    s2Step45EntryG_distinct s2Step45EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step45EntryG_reserved
  have rowEq : WindowRow.mk (s2Step45EntryGRow.payload++s2Step45EntryGFresh) s2Step45EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 801],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step45EntryFvBefore : Arena := s2Step45EntryGAfter
def s2Step45EntryFvAfter : Arena := s2Step45EntryGAfter
def s2Step45EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799],770⟩
def s2Step45EntryFvFresh : List Wire := []
theorem s2Step45EntryFv_distinct : (s2Step45EntryFvRow.sign::s2Step45EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step45EntryFv_owned : (s2Step45EntryFvRow.sign::s2Step45EntryFvRow.payload).toFinset⊆s2Step45EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step45EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45EntryFv_reserved : s2Step45EntryFvBefore.reserve s2Step45EntryFvFresh.toFinset=some s2Step45EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step45EntryFvFresh,arenaWires]
  · norm_num [s2Step45EntryFvBefore,s2Step45EntryGAfter,s2Step45EntryFvFresh,arenaWires]
  · simp only [s2Step45EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step45EntryFv_checked : planRowResizeLog s2Step45EntryFvBefore s2Step45EntryFvRow 35 s2Step45EntryFvFresh=
    some (s2Step45EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799],770⟩,growRow 770 s2Step45EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step45EntryFvBefore s2Step45EntryFvAfter s2Step45EntryFvRow 35 s2Step45EntryFvFresh
    s2Step45EntryFv_distinct s2Step45EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step45EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step45EntryFvRow.payload++s2Step45EntryFvFresh) s2Step45EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step45EntryGvBefore : Arena := s2Step45EntryGAfter
def s2Step45EntryGvAfter : Arena := s2Step45EntryGAfter
def s2Step45EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩
def s2Step45EntryGvFresh : List Wire := []
theorem s2Step45EntryGv_distinct : (s2Step45EntryGvRow.sign::s2Step45EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step45EntryGv_owned : (s2Step45EntryGvRow.sign::s2Step45EntryGvRow.payload).toFinset⊆s2Step45EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step45EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45EntryGv_reserved : s2Step45EntryGvBefore.reserve s2Step45EntryGvFresh.toFinset=some s2Step45EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step45EntryGvFresh,arenaWires]
  · norm_num [s2Step45EntryGvBefore,s2Step45EntryGAfter,s2Step45EntryGvFresh,arenaWires]
  · simp only [s2Step45EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step45EntryGv_checked : planRowResizeLog s2Step45EntryGvBefore s2Step45EntryGvRow 35 s2Step45EntryGvFresh=
    some (s2Step45EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩,growRow 771 s2Step45EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step45EntryGvBefore s2Step45EntryGvAfter s2Step45EntryGvRow 35 s2Step45EntryGvFresh
    s2Step45EntryGv_distinct s2Step45EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step45EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step45EntryGvRow.payload++s2Step45EntryGvFresh) s2Step45EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step46EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step46EntryFAfter : Arena := s2Step46EntryFBefore
def s2Step46EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756],768⟩
def s2Step46EntryFFresh : List Wire := []
theorem s2Step46EntryF_distinct : (s2Step46EntryFRow.sign::s2Step46EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step46EntryF_owned : (s2Step46EntryFRow.sign::s2Step46EntryFRow.payload).toFinset⊆s2Step46EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step46EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46EntryF_reserved : s2Step46EntryFBefore.reserve s2Step46EntryFFresh.toFinset=some s2Step46EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step46EntryFFresh,arenaWires]
  · norm_num [s2Step46EntryFBefore,s2Step46EntryFFresh,arenaWires]
  · simp only [s2Step46EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step46EntryF_checked : planRowResizeLog s2Step46EntryFBefore s2Step46EntryFRow 245 s2Step46EntryFFresh=
    some (s2Step46EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756],768⟩,growRow 768 s2Step46EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step46EntryFBefore s2Step46EntryFAfter s2Step46EntryFRow 245 s2Step46EntryFFresh
    s2Step46EntryF_distinct s2Step46EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step46EntryF_reserved
  have rowEq : WindowRow.mk (s2Step46EntryFRow.payload++s2Step46EntryFFresh) s2Step46EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step46EntryGBefore : Arena := s2Step46EntryFBefore
def s2Step46EntryGAfter : Arena := s2Step46EntryFBefore
def s2Step46EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244],769⟩
def s2Step46EntryGFresh : List Wire := []
theorem s2Step46EntryG_distinct : (s2Step46EntryGRow.sign::s2Step46EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step46EntryG_owned : (s2Step46EntryGRow.sign::s2Step46EntryGRow.payload).toFinset⊆s2Step46EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step46EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46EntryG_reserved : s2Step46EntryGBefore.reserve s2Step46EntryGFresh.toFinset=some s2Step46EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step46EntryGFresh,arenaWires]
  · norm_num [s2Step46EntryGBefore,s2Step46EntryFBefore,s2Step46EntryGFresh,arenaWires]
  · simp only [s2Step46EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step46EntryG_checked : planRowResizeLog s2Step46EntryGBefore s2Step46EntryGRow 245 s2Step46EntryGFresh=
    some (s2Step46EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244],769⟩,growRow 769 s2Step46EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step46EntryGBefore s2Step46EntryGAfter s2Step46EntryGRow 245 s2Step46EntryGFresh
    s2Step46EntryG_distinct s2Step46EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step46EntryG_reserved
  have rowEq : WindowRow.mk (s2Step46EntryGRow.payload++s2Step46EntryGFresh) s2Step46EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step46EntryFvBefore : Arena := s2Step46EntryFBefore
def s2Step46EntryFvAfter : Arena := s2Step46EntryFBefore
def s2Step46EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802],770⟩
def s2Step46EntryFvFresh : List Wire := []
theorem s2Step46EntryFv_distinct : (s2Step46EntryFvRow.sign::s2Step46EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step46EntryFv_owned : (s2Step46EntryFvRow.sign::s2Step46EntryFvRow.payload).toFinset⊆s2Step46EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step46EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46EntryFv_reserved : s2Step46EntryFvBefore.reserve s2Step46EntryFvFresh.toFinset=some s2Step46EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step46EntryFvFresh,arenaWires]
  · norm_num [s2Step46EntryFvBefore,s2Step46EntryFBefore,s2Step46EntryFvFresh,arenaWires]
  · simp only [s2Step46EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step46EntryFv_checked : planRowResizeLog s2Step46EntryFvBefore s2Step46EntryFvRow 36 s2Step46EntryFvFresh=
    some (s2Step46EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802],770⟩,growRow 770 s2Step46EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step46EntryFvBefore s2Step46EntryFvAfter s2Step46EntryFvRow 36 s2Step46EntryFvFresh
    s2Step46EntryFv_distinct s2Step46EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step46EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step46EntryFvRow.payload++s2Step46EntryFvFresh) s2Step46EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step46EntryGvBefore : Arena := s2Step46EntryFBefore
def s2Step46EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step46EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794],771⟩
def s2Step46EntryGvFresh : List Wire := [804]
theorem s2Step46EntryGv_distinct : (s2Step46EntryGvRow.sign::s2Step46EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step46EntryGv_owned : (s2Step46EntryGvRow.sign::s2Step46EntryGvRow.payload).toFinset⊆s2Step46EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step46EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46EntryGv_reserved : s2Step46EntryGvBefore.reserve s2Step46EntryGvFresh.toFinset=some s2Step46EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step46EntryGvFresh,arenaWires]
  · norm_num [s2Step46EntryGvBefore,s2Step46EntryFBefore,s2Step46EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step46EntryGvAfter,s2Step46EntryGvBefore,s2Step46EntryFBefore,s2Step46EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step46EntryGv_checked : planRowResizeLog s2Step46EntryGvBefore s2Step46EntryGvRow 36 s2Step46EntryGvFresh=
    some (s2Step46EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804],771⟩,growRow 771 s2Step46EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step46EntryGvBefore s2Step46EntryGvAfter s2Step46EntryGvRow 36 s2Step46EntryGvFresh
    s2Step46EntryGv_distinct s2Step46EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step46EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step46EntryGvRow.payload++s2Step46EntryGvFresh) s2Step46EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step47EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step47EntryFAfter : Arena := s2Step47EntryFBefore
def s2Step47EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755],768⟩
def s2Step47EntryFFresh : List Wire := []
theorem s2Step47EntryF_distinct : (s2Step47EntryFRow.sign::s2Step47EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step47EntryF_owned : (s2Step47EntryFRow.sign::s2Step47EntryFRow.payload).toFinset⊆s2Step47EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step47EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47EntryF_reserved : s2Step47EntryFBefore.reserve s2Step47EntryFFresh.toFinset=some s2Step47EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step47EntryFFresh,arenaWires]
  · norm_num [s2Step47EntryFBefore,s2Step47EntryFFresh,arenaWires]
  · simp only [s2Step47EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step47EntryF_checked : planRowResizeLog s2Step47EntryFBefore s2Step47EntryFRow 244 s2Step47EntryFFresh=
    some (s2Step47EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755],768⟩,growRow 768 s2Step47EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step47EntryFBefore s2Step47EntryFAfter s2Step47EntryFRow 244 s2Step47EntryFFresh
    s2Step47EntryF_distinct s2Step47EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step47EntryF_reserved
  have rowEq : WindowRow.mk (s2Step47EntryFRow.payload++s2Step47EntryFFresh) s2Step47EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step47EntryGBefore : Arena := s2Step47EntryFBefore
def s2Step47EntryGAfter : Arena := s2Step47EntryFBefore
def s2Step47EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243],769⟩
def s2Step47EntryGFresh : List Wire := []
theorem s2Step47EntryG_distinct : (s2Step47EntryGRow.sign::s2Step47EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step47EntryG_owned : (s2Step47EntryGRow.sign::s2Step47EntryGRow.payload).toFinset⊆s2Step47EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step47EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47EntryG_reserved : s2Step47EntryGBefore.reserve s2Step47EntryGFresh.toFinset=some s2Step47EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step47EntryGFresh,arenaWires]
  · norm_num [s2Step47EntryGBefore,s2Step47EntryFBefore,s2Step47EntryGFresh,arenaWires]
  · simp only [s2Step47EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step47EntryG_checked : planRowResizeLog s2Step47EntryGBefore s2Step47EntryGRow 244 s2Step47EntryGFresh=
    some (s2Step47EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243],769⟩,growRow 769 s2Step47EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step47EntryGBefore s2Step47EntryGAfter s2Step47EntryGRow 244 s2Step47EntryGFresh
    s2Step47EntryG_distinct s2Step47EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step47EntryG_reserved
  have rowEq : WindowRow.mk (s2Step47EntryGRow.payload++s2Step47EntryGFresh) s2Step47EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step47EntryFvBefore : Arena := s2Step47EntryFBefore
def s2Step47EntryFvAfter : Arena := s2Step47EntryFBefore
def s2Step47EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802],770⟩
def s2Step47EntryFvFresh : List Wire := []
theorem s2Step47EntryFv_distinct : (s2Step47EntryFvRow.sign::s2Step47EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step47EntryFv_owned : (s2Step47EntryFvRow.sign::s2Step47EntryFvRow.payload).toFinset⊆s2Step47EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step47EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47EntryFv_reserved : s2Step47EntryFvBefore.reserve s2Step47EntryFvFresh.toFinset=some s2Step47EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step47EntryFvFresh,arenaWires]
  · norm_num [s2Step47EntryFvBefore,s2Step47EntryFBefore,s2Step47EntryFvFresh,arenaWires]
  · simp only [s2Step47EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step47EntryFv_checked : planRowResizeLog s2Step47EntryFvBefore s2Step47EntryFvRow 36 s2Step47EntryFvFresh=
    some (s2Step47EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802],770⟩,growRow 770 s2Step47EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step47EntryFvBefore s2Step47EntryFvAfter s2Step47EntryFvRow 36 s2Step47EntryFvFresh
    s2Step47EntryFv_distinct s2Step47EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step47EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step47EntryFvRow.payload++s2Step47EntryFvFresh) s2Step47EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step47EntryGvBefore : Arena := s2Step47EntryFBefore
def s2Step47EntryGvAfter : Arena := s2Step47EntryFBefore
def s2Step47EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804],771⟩
def s2Step47EntryGvFresh : List Wire := []
theorem s2Step47EntryGv_distinct : (s2Step47EntryGvRow.sign::s2Step47EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step47EntryGv_owned : (s2Step47EntryGvRow.sign::s2Step47EntryGvRow.payload).toFinset⊆s2Step47EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step47EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47EntryGv_reserved : s2Step47EntryGvBefore.reserve s2Step47EntryGvFresh.toFinset=some s2Step47EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step47EntryGvFresh,arenaWires]
  · norm_num [s2Step47EntryGvBefore,s2Step47EntryFBefore,s2Step47EntryGvFresh,arenaWires]
  · simp only [s2Step47EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step47EntryGv_checked : planRowResizeLog s2Step47EntryGvBefore s2Step47EntryGvRow 36 s2Step47EntryGvFresh=
    some (s2Step47EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804],771⟩,growRow 771 s2Step47EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step47EntryGvBefore s2Step47EntryGvAfter s2Step47EntryGvRow 36 s2Step47EntryGvFresh
    s2Step47EntryGv_distinct s2Step47EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step47EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step47EntryGvRow.payload++s2Step47EntryGvFresh) s2Step47EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

end ECDSAAdd.Arithmetic.Paper935
