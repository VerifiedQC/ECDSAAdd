import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk0

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step16EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step16EntryFAfter : Arena := s2Step16EntryFBefore
def s2Step16EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step16EntryFFresh : List Wire := []
theorem s2Step16EntryF_distinct : (s2Step16EntryFRow.sign::s2Step16EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step16EntryF_owned : (s2Step16EntryFRow.sign::s2Step16EntryFRow.payload).toFinset⊆s2Step16EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step16EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16EntryF_reserved : s2Step16EntryFBefore.reserve s2Step16EntryFFresh.toFinset=some s2Step16EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step16EntryFFresh,arenaWires]
  · norm_num [s2Step16EntryFBefore,s2Step16EntryFFresh,arenaWires]
  · simp only [s2Step16EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step16EntryF_checked : planRowResizeLog s2Step16EntryFBefore s2Step16EntryFRow 256 s2Step16EntryFFresh=
    some (s2Step16EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step16EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step16EntryFBefore s2Step16EntryFAfter s2Step16EntryFRow 256 s2Step16EntryFFresh
    s2Step16EntryF_distinct s2Step16EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step16EntryF_reserved
  have rowEq : WindowRow.mk (s2Step16EntryFRow.payload++s2Step16EntryFFresh) s2Step16EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step16EntryGBefore : Arena := s2Step16EntryFBefore
def s2Step16EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step16EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step16EntryGFresh : List Wire := [783]
theorem s2Step16EntryG_distinct : (s2Step16EntryGRow.sign::s2Step16EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step16EntryG_owned : (s2Step16EntryGRow.sign::s2Step16EntryGRow.payload).toFinset⊆s2Step16EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step16EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16EntryG_reserved : s2Step16EntryGBefore.reserve s2Step16EntryGFresh.toFinset=some s2Step16EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step16EntryGFresh,arenaWires]
  · norm_num [s2Step16EntryGBefore,s2Step16EntryFBefore,s2Step16EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step16EntryGAfter,s2Step16EntryGBefore,s2Step16EntryFBefore,s2Step16EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step16EntryG_checked : planRowResizeLog s2Step16EntryGBefore s2Step16EntryGRow 256 s2Step16EntryGFresh=
    some (s2Step16EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩,growRow 769 s2Step16EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step16EntryGBefore s2Step16EntryGAfter s2Step16EntryGRow 256 s2Step16EntryGFresh
    s2Step16EntryG_distinct s2Step16EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step16EntryG_reserved
  have rowEq : WindowRow.mk (s2Step16EntryGRow.payload++s2Step16EntryGFresh) s2Step16EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step16EntryFvBefore : Arena := s2Step16EntryGAfter
def s2Step16EntryFvAfter : Arena := s2Step16EntryGAfter
def s2Step16EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817],770⟩
def s2Step16EntryFvFresh : List Wire := []
theorem s2Step16EntryFv_distinct : (s2Step16EntryFvRow.sign::s2Step16EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step16EntryFv_owned : (s2Step16EntryFvRow.sign::s2Step16EntryFvRow.payload).toFinset⊆s2Step16EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step16EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16EntryFv_reserved : s2Step16EntryFvBefore.reserve s2Step16EntryFvFresh.toFinset=some s2Step16EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step16EntryFvFresh,arenaWires]
  · norm_num [s2Step16EntryFvBefore,s2Step16EntryGAfter,s2Step16EntryFvFresh,arenaWires]
  · simp only [s2Step16EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step16EntryFv_checked : planRowResizeLog s2Step16EntryFvBefore s2Step16EntryFvRow 17 s2Step16EntryFvFresh=
    some (s2Step16EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817],770⟩,growRow 770 s2Step16EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step16EntryFvBefore s2Step16EntryFvAfter s2Step16EntryFvRow 17 s2Step16EntryFvFresh
    s2Step16EntryFv_distinct s2Step16EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step16EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step16EntryFvRow.payload++s2Step16EntryFvFresh) s2Step16EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step16EntryGvBefore : Arena := s2Step16EntryGAfter
def s2Step16EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step16EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811],771⟩
def s2Step16EntryGvFresh : List Wire := [814, 780]
theorem s2Step16EntryGv_distinct : (s2Step16EntryGvRow.sign::s2Step16EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step16EntryGv_owned : (s2Step16EntryGvRow.sign::s2Step16EntryGvRow.payload).toFinset⊆s2Step16EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step16EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16EntryGv_reserved : s2Step16EntryGvBefore.reserve s2Step16EntryGvFresh.toFinset=some s2Step16EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step16EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step16EntryGvBefore,s2Step16EntryGAfter,s2Step16EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step16EntryGvAfter,s2Step16EntryGvBefore,s2Step16EntryGAfter,s2Step16EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step16EntryGv_checked : planRowResizeLog s2Step16EntryGvBefore s2Step16EntryGvRow 17 s2Step16EntryGvFresh=
    some (s2Step16EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 780],771⟩,growRow 771 s2Step16EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step16EntryGvBefore s2Step16EntryGvAfter s2Step16EntryGvRow 17 s2Step16EntryGvFresh
    s2Step16EntryGv_distinct s2Step16EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step16EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step16EntryGvRow.payload++s2Step16EntryGvFresh) s2Step16EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step17EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step17EntryFAfter : Arena := s2Step17EntryFBefore
def s2Step17EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step17EntryFFresh : List Wire := []
theorem s2Step17EntryF_distinct : (s2Step17EntryFRow.sign::s2Step17EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step17EntryF_owned : (s2Step17EntryFRow.sign::s2Step17EntryFRow.payload).toFinset⊆s2Step17EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step17EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17EntryF_reserved : s2Step17EntryFBefore.reserve s2Step17EntryFFresh.toFinset=some s2Step17EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step17EntryFFresh,arenaWires]
  · norm_num [s2Step17EntryFBefore,s2Step17EntryFFresh,arenaWires]
  · simp only [s2Step17EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step17EntryF_checked : planRowResizeLog s2Step17EntryFBefore s2Step17EntryFRow 256 s2Step17EntryFFresh=
    some (s2Step17EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step17EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step17EntryFBefore s2Step17EntryFAfter s2Step17EntryFRow 256 s2Step17EntryFFresh
    s2Step17EntryF_distinct s2Step17EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step17EntryF_reserved
  have rowEq : WindowRow.mk (s2Step17EntryFRow.payload++s2Step17EntryFFresh) s2Step17EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step17EntryGBefore : Arena := s2Step17EntryFBefore
def s2Step17EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step17EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step17EntryGFresh : List Wire := [781]
theorem s2Step17EntryG_distinct : (s2Step17EntryGRow.sign::s2Step17EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step17EntryG_owned : (s2Step17EntryGRow.sign::s2Step17EntryGRow.payload).toFinset⊆s2Step17EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step17EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17EntryG_reserved : s2Step17EntryGBefore.reserve s2Step17EntryGFresh.toFinset=some s2Step17EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step17EntryGFresh,arenaWires]
  · norm_num [s2Step17EntryGBefore,s2Step17EntryFBefore,s2Step17EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step17EntryGAfter,s2Step17EntryGBefore,s2Step17EntryFBefore,s2Step17EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step17EntryG_checked : planRowResizeLog s2Step17EntryGBefore s2Step17EntryGRow 256 s2Step17EntryGFresh=
    some (s2Step17EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩,growRow 769 s2Step17EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step17EntryGBefore s2Step17EntryGAfter s2Step17EntryGRow 256 s2Step17EntryGFresh
    s2Step17EntryG_distinct s2Step17EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step17EntryG_reserved
  have rowEq : WindowRow.mk (s2Step17EntryGRow.payload++s2Step17EntryGFresh) s2Step17EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step17EntryFvBefore : Arena := s2Step17EntryGAfter
def s2Step17EntryFvAfter : Arena := s2Step17EntryGAfter
def s2Step17EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820],770⟩
def s2Step17EntryFvFresh : List Wire := []
theorem s2Step17EntryFv_distinct : (s2Step17EntryFvRow.sign::s2Step17EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step17EntryFv_owned : (s2Step17EntryFvRow.sign::s2Step17EntryFvRow.payload).toFinset⊆s2Step17EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step17EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17EntryFv_reserved : s2Step17EntryFvBefore.reserve s2Step17EntryFvFresh.toFinset=some s2Step17EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step17EntryFvFresh,arenaWires]
  · norm_num [s2Step17EntryFvBefore,s2Step17EntryGAfter,s2Step17EntryFvFresh,arenaWires]
  · simp only [s2Step17EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step17EntryFv_checked : planRowResizeLog s2Step17EntryFvBefore s2Step17EntryFvRow 18 s2Step17EntryFvFresh=
    some (s2Step17EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820],770⟩,growRow 770 s2Step17EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step17EntryFvBefore s2Step17EntryFvAfter s2Step17EntryFvRow 18 s2Step17EntryFvFresh
    s2Step17EntryFv_distinct s2Step17EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step17EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step17EntryFvRow.payload++s2Step17EntryFvFresh) s2Step17EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step17EntryGvBefore : Arena := s2Step17EntryGAfter
def s2Step17EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step17EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814],771⟩
def s2Step17EntryGvFresh : List Wire := [816, 780]
theorem s2Step17EntryGv_distinct : (s2Step17EntryGvRow.sign::s2Step17EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step17EntryGv_owned : (s2Step17EntryGvRow.sign::s2Step17EntryGvRow.payload).toFinset⊆s2Step17EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step17EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17EntryGv_reserved : s2Step17EntryGvBefore.reserve s2Step17EntryGvFresh.toFinset=some s2Step17EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step17EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step17EntryGvBefore,s2Step17EntryGAfter,s2Step17EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step17EntryGvAfter,s2Step17EntryGvBefore,s2Step17EntryGAfter,s2Step17EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step17EntryGv_checked : planRowResizeLog s2Step17EntryGvBefore s2Step17EntryGvRow 18 s2Step17EntryGvFresh=
    some (s2Step17EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 780],771⟩,growRow 771 s2Step17EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step17EntryGvBefore s2Step17EntryGvAfter s2Step17EntryGvRow 18 s2Step17EntryGvFresh
    s2Step17EntryGv_distinct s2Step17EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step17EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step17EntryGvRow.payload++s2Step17EntryGvFresh) s2Step17EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step18EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step18EntryFAfter : Arena := s2Step18EntryFBefore
def s2Step18EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step18EntryFFresh : List Wire := []
theorem s2Step18EntryF_distinct : (s2Step18EntryFRow.sign::s2Step18EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step18EntryF_owned : (s2Step18EntryFRow.sign::s2Step18EntryFRow.payload).toFinset⊆s2Step18EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step18EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18EntryF_reserved : s2Step18EntryFBefore.reserve s2Step18EntryFFresh.toFinset=some s2Step18EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step18EntryFFresh,arenaWires]
  · norm_num [s2Step18EntryFBefore,s2Step18EntryFFresh,arenaWires]
  · simp only [s2Step18EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step18EntryF_checked : planRowResizeLog s2Step18EntryFBefore s2Step18EntryFRow 256 s2Step18EntryFFresh=
    some (s2Step18EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step18EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step18EntryFBefore s2Step18EntryFAfter s2Step18EntryFRow 256 s2Step18EntryFFresh
    s2Step18EntryF_distinct s2Step18EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step18EntryF_reserved
  have rowEq : WindowRow.mk (s2Step18EntryFRow.payload++s2Step18EntryFFresh) s2Step18EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step18EntryGBefore : Arena := s2Step18EntryFBefore
def s2Step18EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step18EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step18EntryGFresh : List Wire := [784]
theorem s2Step18EntryG_distinct : (s2Step18EntryGRow.sign::s2Step18EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step18EntryG_owned : (s2Step18EntryGRow.sign::s2Step18EntryGRow.payload).toFinset⊆s2Step18EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step18EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18EntryG_reserved : s2Step18EntryGBefore.reserve s2Step18EntryGFresh.toFinset=some s2Step18EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step18EntryGFresh,arenaWires]
  · norm_num [s2Step18EntryGBefore,s2Step18EntryFBefore,s2Step18EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step18EntryGAfter,s2Step18EntryGBefore,s2Step18EntryFBefore,s2Step18EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step18EntryG_checked : planRowResizeLog s2Step18EntryGBefore s2Step18EntryGRow 256 s2Step18EntryGFresh=
    some (s2Step18EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩,growRow 769 s2Step18EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step18EntryGBefore s2Step18EntryGAfter s2Step18EntryGRow 256 s2Step18EntryGFresh
    s2Step18EntryG_distinct s2Step18EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step18EntryG_reserved
  have rowEq : WindowRow.mk (s2Step18EntryGRow.payload++s2Step18EntryGFresh) s2Step18EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step18EntryFvBefore : Arena := s2Step18EntryGAfter
def s2Step18EntryFvAfter : Arena := s2Step18EntryGAfter
def s2Step18EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822],770⟩
def s2Step18EntryFvFresh : List Wire := []
theorem s2Step18EntryFv_distinct : (s2Step18EntryFvRow.sign::s2Step18EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step18EntryFv_owned : (s2Step18EntryFvRow.sign::s2Step18EntryFvRow.payload).toFinset⊆s2Step18EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step18EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18EntryFv_reserved : s2Step18EntryFvBefore.reserve s2Step18EntryFvFresh.toFinset=some s2Step18EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step18EntryFvFresh,arenaWires]
  · norm_num [s2Step18EntryFvBefore,s2Step18EntryGAfter,s2Step18EntryFvFresh,arenaWires]
  · simp only [s2Step18EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step18EntryFv_checked : planRowResizeLog s2Step18EntryFvBefore s2Step18EntryFvRow 19 s2Step18EntryFvFresh=
    some (s2Step18EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822],770⟩,growRow 770 s2Step18EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step18EntryFvBefore s2Step18EntryFvAfter s2Step18EntryFvRow 19 s2Step18EntryFvFresh
    s2Step18EntryFv_distinct s2Step18EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step18EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step18EntryFvRow.payload++s2Step18EntryFvFresh) s2Step18EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step18EntryGvBefore : Arena := s2Step18EntryGAfter
def s2Step18EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step18EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816],771⟩
def s2Step18EntryGvFresh : List Wire := [819, 780]
theorem s2Step18EntryGv_distinct : (s2Step18EntryGvRow.sign::s2Step18EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step18EntryGv_owned : (s2Step18EntryGvRow.sign::s2Step18EntryGvRow.payload).toFinset⊆s2Step18EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step18EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18EntryGv_reserved : s2Step18EntryGvBefore.reserve s2Step18EntryGvFresh.toFinset=some s2Step18EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step18EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step18EntryGvBefore,s2Step18EntryGAfter,s2Step18EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step18EntryGvAfter,s2Step18EntryGvBefore,s2Step18EntryGAfter,s2Step18EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step18EntryGv_checked : planRowResizeLog s2Step18EntryGvBefore s2Step18EntryGvRow 19 s2Step18EntryGvFresh=
    some (s2Step18EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 780],771⟩,growRow 771 s2Step18EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step18EntryGvBefore s2Step18EntryGvAfter s2Step18EntryGvRow 19 s2Step18EntryGvFresh
    s2Step18EntryGv_distinct s2Step18EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step18EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step18EntryGvRow.payload++s2Step18EntryGvFresh) s2Step18EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step19EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step19EntryFAfter : Arena := s2Step19EntryFBefore
def s2Step19EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step19EntryFFresh : List Wire := []
theorem s2Step19EntryF_distinct : (s2Step19EntryFRow.sign::s2Step19EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step19EntryF_owned : (s2Step19EntryFRow.sign::s2Step19EntryFRow.payload).toFinset⊆s2Step19EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step19EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19EntryF_reserved : s2Step19EntryFBefore.reserve s2Step19EntryFFresh.toFinset=some s2Step19EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step19EntryFFresh,arenaWires]
  · norm_num [s2Step19EntryFBefore,s2Step19EntryFFresh,arenaWires]
  · simp only [s2Step19EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step19EntryF_checked : planRowResizeLog s2Step19EntryFBefore s2Step19EntryFRow 256 s2Step19EntryFFresh=
    some (s2Step19EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step19EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step19EntryFBefore s2Step19EntryFAfter s2Step19EntryFRow 256 s2Step19EntryFFresh
    s2Step19EntryF_distinct s2Step19EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step19EntryF_reserved
  have rowEq : WindowRow.mk (s2Step19EntryFRow.payload++s2Step19EntryFFresh) s2Step19EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step19EntryGBefore : Arena := s2Step19EntryFBefore
def s2Step19EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step19EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step19EntryGFresh : List Wire := [782]
theorem s2Step19EntryG_distinct : (s2Step19EntryGRow.sign::s2Step19EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step19EntryG_owned : (s2Step19EntryGRow.sign::s2Step19EntryGRow.payload).toFinset⊆s2Step19EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step19EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19EntryG_reserved : s2Step19EntryGBefore.reserve s2Step19EntryGFresh.toFinset=some s2Step19EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step19EntryGFresh,arenaWires]
  · norm_num [s2Step19EntryGBefore,s2Step19EntryFBefore,s2Step19EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step19EntryGAfter,s2Step19EntryGBefore,s2Step19EntryFBefore,s2Step19EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step19EntryG_checked : planRowResizeLog s2Step19EntryGBefore s2Step19EntryGRow 256 s2Step19EntryGFresh=
    some (s2Step19EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩,growRow 769 s2Step19EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step19EntryGBefore s2Step19EntryGAfter s2Step19EntryGRow 256 s2Step19EntryGFresh
    s2Step19EntryG_distinct s2Step19EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step19EntryG_reserved
  have rowEq : WindowRow.mk (s2Step19EntryGRow.payload++s2Step19EntryGFresh) s2Step19EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step19EntryFvBefore : Arena := s2Step19EntryGAfter
def s2Step19EntryFvAfter : Arena := s2Step19EntryGAfter
def s2Step19EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825],770⟩
def s2Step19EntryFvFresh : List Wire := []
theorem s2Step19EntryFv_distinct : (s2Step19EntryFvRow.sign::s2Step19EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step19EntryFv_owned : (s2Step19EntryFvRow.sign::s2Step19EntryFvRow.payload).toFinset⊆s2Step19EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step19EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19EntryFv_reserved : s2Step19EntryFvBefore.reserve s2Step19EntryFvFresh.toFinset=some s2Step19EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step19EntryFvFresh,arenaWires]
  · norm_num [s2Step19EntryFvBefore,s2Step19EntryGAfter,s2Step19EntryFvFresh,arenaWires]
  · simp only [s2Step19EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step19EntryFv_checked : planRowResizeLog s2Step19EntryFvBefore s2Step19EntryFvRow 20 s2Step19EntryFvFresh=
    some (s2Step19EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825],770⟩,growRow 770 s2Step19EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step19EntryFvBefore s2Step19EntryFvAfter s2Step19EntryFvRow 20 s2Step19EntryFvFresh
    s2Step19EntryFv_distinct s2Step19EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step19EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step19EntryFvRow.payload++s2Step19EntryFvFresh) s2Step19EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step19EntryGvBefore : Arena := s2Step19EntryGAfter
def s2Step19EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step19EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819],771⟩
def s2Step19EntryGvFresh : List Wire := [821, 780]
theorem s2Step19EntryGv_distinct : (s2Step19EntryGvRow.sign::s2Step19EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step19EntryGv_owned : (s2Step19EntryGvRow.sign::s2Step19EntryGvRow.payload).toFinset⊆s2Step19EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step19EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19EntryGv_reserved : s2Step19EntryGvBefore.reserve s2Step19EntryGvFresh.toFinset=some s2Step19EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step19EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step19EntryGvBefore,s2Step19EntryGAfter,s2Step19EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step19EntryGvAfter,s2Step19EntryGvBefore,s2Step19EntryGAfter,s2Step19EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step19EntryGv_checked : planRowResizeLog s2Step19EntryGvBefore s2Step19EntryGvRow 20 s2Step19EntryGvFresh=
    some (s2Step19EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 780],771⟩,growRow 771 s2Step19EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step19EntryGvBefore s2Step19EntryGvAfter s2Step19EntryGvRow 20 s2Step19EntryGvFresh
    s2Step19EntryGv_distinct s2Step19EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step19EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step19EntryGvRow.payload++s2Step19EntryGvFresh) s2Step19EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step20EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step20EntryFAfter : Arena := s2Step20EntryFBefore
def s2Step20EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step20EntryFFresh : List Wire := []
theorem s2Step20EntryF_distinct : (s2Step20EntryFRow.sign::s2Step20EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step20EntryF_owned : (s2Step20EntryFRow.sign::s2Step20EntryFRow.payload).toFinset⊆s2Step20EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step20EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20EntryF_reserved : s2Step20EntryFBefore.reserve s2Step20EntryFFresh.toFinset=some s2Step20EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step20EntryFFresh,arenaWires]
  · norm_num [s2Step20EntryFBefore,s2Step20EntryFFresh,arenaWires]
  · simp only [s2Step20EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step20EntryF_checked : planRowResizeLog s2Step20EntryFBefore s2Step20EntryFRow 256 s2Step20EntryFFresh=
    some (s2Step20EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step20EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step20EntryFBefore s2Step20EntryFAfter s2Step20EntryFRow 256 s2Step20EntryFFresh
    s2Step20EntryF_distinct s2Step20EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step20EntryF_reserved
  have rowEq : WindowRow.mk (s2Step20EntryFRow.payload++s2Step20EntryFFresh) s2Step20EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step20EntryGBefore : Arena := s2Step20EntryFBefore
def s2Step20EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step20EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step20EntryGFresh : List Wire := [783]
theorem s2Step20EntryG_distinct : (s2Step20EntryGRow.sign::s2Step20EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step20EntryG_owned : (s2Step20EntryGRow.sign::s2Step20EntryGRow.payload).toFinset⊆s2Step20EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step20EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20EntryG_reserved : s2Step20EntryGBefore.reserve s2Step20EntryGFresh.toFinset=some s2Step20EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step20EntryGFresh,arenaWires]
  · norm_num [s2Step20EntryGBefore,s2Step20EntryFBefore,s2Step20EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step20EntryGAfter,s2Step20EntryGBefore,s2Step20EntryFBefore,s2Step20EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step20EntryG_checked : planRowResizeLog s2Step20EntryGBefore s2Step20EntryGRow 256 s2Step20EntryGFresh=
    some (s2Step20EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩,growRow 769 s2Step20EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step20EntryGBefore s2Step20EntryGAfter s2Step20EntryGRow 256 s2Step20EntryGFresh
    s2Step20EntryG_distinct s2Step20EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step20EntryG_reserved
  have rowEq : WindowRow.mk (s2Step20EntryGRow.payload++s2Step20EntryGFresh) s2Step20EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step20EntryFvBefore : Arena := s2Step20EntryGAfter
def s2Step20EntryFvAfter : Arena := s2Step20EntryGAfter
def s2Step20EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827],770⟩
def s2Step20EntryFvFresh : List Wire := []
theorem s2Step20EntryFv_distinct : (s2Step20EntryFvRow.sign::s2Step20EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step20EntryFv_owned : (s2Step20EntryFvRow.sign::s2Step20EntryFvRow.payload).toFinset⊆s2Step20EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step20EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20EntryFv_reserved : s2Step20EntryFvBefore.reserve s2Step20EntryFvFresh.toFinset=some s2Step20EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step20EntryFvFresh,arenaWires]
  · norm_num [s2Step20EntryFvBefore,s2Step20EntryGAfter,s2Step20EntryFvFresh,arenaWires]
  · simp only [s2Step20EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step20EntryFv_checked : planRowResizeLog s2Step20EntryFvBefore s2Step20EntryFvRow 21 s2Step20EntryFvFresh=
    some (s2Step20EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827],770⟩,growRow 770 s2Step20EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step20EntryFvBefore s2Step20EntryFvAfter s2Step20EntryFvRow 21 s2Step20EntryFvFresh
    s2Step20EntryFv_distinct s2Step20EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step20EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step20EntryFvRow.payload++s2Step20EntryFvFresh) s2Step20EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step20EntryGvBefore : Arena := s2Step20EntryGAfter
def s2Step20EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step20EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821],771⟩
def s2Step20EntryGvFresh : List Wire := [824, 780]
theorem s2Step20EntryGv_distinct : (s2Step20EntryGvRow.sign::s2Step20EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step20EntryGv_owned : (s2Step20EntryGvRow.sign::s2Step20EntryGvRow.payload).toFinset⊆s2Step20EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step20EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20EntryGv_reserved : s2Step20EntryGvBefore.reserve s2Step20EntryGvFresh.toFinset=some s2Step20EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step20EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step20EntryGvBefore,s2Step20EntryGAfter,s2Step20EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step20EntryGvAfter,s2Step20EntryGvBefore,s2Step20EntryGAfter,s2Step20EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step20EntryGv_checked : planRowResizeLog s2Step20EntryGvBefore s2Step20EntryGvRow 21 s2Step20EntryGvFresh=
    some (s2Step20EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 780],771⟩,growRow 771 s2Step20EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step20EntryGvBefore s2Step20EntryGvAfter s2Step20EntryGvRow 21 s2Step20EntryGvFresh
    s2Step20EntryGv_distinct s2Step20EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step20EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step20EntryGvRow.payload++s2Step20EntryGvFresh) s2Step20EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step21EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step21EntryFAfter : Arena := s2Step21EntryFBefore
def s2Step21EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step21EntryFFresh : List Wire := []
theorem s2Step21EntryF_distinct : (s2Step21EntryFRow.sign::s2Step21EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step21EntryF_owned : (s2Step21EntryFRow.sign::s2Step21EntryFRow.payload).toFinset⊆s2Step21EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step21EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21EntryF_reserved : s2Step21EntryFBefore.reserve s2Step21EntryFFresh.toFinset=some s2Step21EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step21EntryFFresh,arenaWires]
  · norm_num [s2Step21EntryFBefore,s2Step21EntryFFresh,arenaWires]
  · simp only [s2Step21EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step21EntryF_checked : planRowResizeLog s2Step21EntryFBefore s2Step21EntryFRow 256 s2Step21EntryFFresh=
    some (s2Step21EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step21EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step21EntryFBefore s2Step21EntryFAfter s2Step21EntryFRow 256 s2Step21EntryFFresh
    s2Step21EntryF_distinct s2Step21EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step21EntryF_reserved
  have rowEq : WindowRow.mk (s2Step21EntryFRow.payload++s2Step21EntryFFresh) s2Step21EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step21EntryGBefore : Arena := s2Step21EntryFBefore
def s2Step21EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step21EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step21EntryGFresh : List Wire := [781]
theorem s2Step21EntryG_distinct : (s2Step21EntryGRow.sign::s2Step21EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step21EntryG_owned : (s2Step21EntryGRow.sign::s2Step21EntryGRow.payload).toFinset⊆s2Step21EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step21EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21EntryG_reserved : s2Step21EntryGBefore.reserve s2Step21EntryGFresh.toFinset=some s2Step21EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step21EntryGFresh,arenaWires]
  · norm_num [s2Step21EntryGBefore,s2Step21EntryFBefore,s2Step21EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step21EntryGAfter,s2Step21EntryGBefore,s2Step21EntryFBefore,s2Step21EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step21EntryG_checked : planRowResizeLog s2Step21EntryGBefore s2Step21EntryGRow 256 s2Step21EntryGFresh=
    some (s2Step21EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩,growRow 769 s2Step21EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step21EntryGBefore s2Step21EntryGAfter s2Step21EntryGRow 256 s2Step21EntryGFresh
    s2Step21EntryG_distinct s2Step21EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step21EntryG_reserved
  have rowEq : WindowRow.mk (s2Step21EntryGRow.payload++s2Step21EntryGFresh) s2Step21EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step21EntryFvBefore : Arena := s2Step21EntryGAfter
def s2Step21EntryFvAfter : Arena := s2Step21EntryGAfter
def s2Step21EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830],770⟩
def s2Step21EntryFvFresh : List Wire := []
theorem s2Step21EntryFv_distinct : (s2Step21EntryFvRow.sign::s2Step21EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step21EntryFv_owned : (s2Step21EntryFvRow.sign::s2Step21EntryFvRow.payload).toFinset⊆s2Step21EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step21EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21EntryFv_reserved : s2Step21EntryFvBefore.reserve s2Step21EntryFvFresh.toFinset=some s2Step21EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step21EntryFvFresh,arenaWires]
  · norm_num [s2Step21EntryFvBefore,s2Step21EntryGAfter,s2Step21EntryFvFresh,arenaWires]
  · simp only [s2Step21EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step21EntryFv_checked : planRowResizeLog s2Step21EntryFvBefore s2Step21EntryFvRow 22 s2Step21EntryFvFresh=
    some (s2Step21EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830],770⟩,growRow 770 s2Step21EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step21EntryFvBefore s2Step21EntryFvAfter s2Step21EntryFvRow 22 s2Step21EntryFvFresh
    s2Step21EntryFv_distinct s2Step21EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step21EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step21EntryFvRow.payload++s2Step21EntryFvFresh) s2Step21EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step21EntryGvBefore : Arena := s2Step21EntryGAfter
def s2Step21EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step21EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824],771⟩
def s2Step21EntryGvFresh : List Wire := [826, 780]
theorem s2Step21EntryGv_distinct : (s2Step21EntryGvRow.sign::s2Step21EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step21EntryGv_owned : (s2Step21EntryGvRow.sign::s2Step21EntryGvRow.payload).toFinset⊆s2Step21EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step21EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21EntryGv_reserved : s2Step21EntryGvBefore.reserve s2Step21EntryGvFresh.toFinset=some s2Step21EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step21EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step21EntryGvBefore,s2Step21EntryGAfter,s2Step21EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step21EntryGvAfter,s2Step21EntryGvBefore,s2Step21EntryGAfter,s2Step21EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step21EntryGv_checked : planRowResizeLog s2Step21EntryGvBefore s2Step21EntryGvRow 22 s2Step21EntryGvFresh=
    some (s2Step21EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 780],771⟩,growRow 771 s2Step21EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step21EntryGvBefore s2Step21EntryGvAfter s2Step21EntryGvRow 22 s2Step21EntryGvFresh
    s2Step21EntryGv_distinct s2Step21EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step21EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step21EntryGvRow.payload++s2Step21EntryGvFresh) s2Step21EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step22EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step22EntryFAfter : Arena := s2Step22EntryFBefore
def s2Step22EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step22EntryFFresh : List Wire := []
theorem s2Step22EntryF_distinct : (s2Step22EntryFRow.sign::s2Step22EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step22EntryF_owned : (s2Step22EntryFRow.sign::s2Step22EntryFRow.payload).toFinset⊆s2Step22EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step22EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22EntryF_reserved : s2Step22EntryFBefore.reserve s2Step22EntryFFresh.toFinset=some s2Step22EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step22EntryFFresh,arenaWires]
  · norm_num [s2Step22EntryFBefore,s2Step22EntryFFresh,arenaWires]
  · simp only [s2Step22EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step22EntryF_checked : planRowResizeLog s2Step22EntryFBefore s2Step22EntryFRow 256 s2Step22EntryFFresh=
    some (s2Step22EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step22EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step22EntryFBefore s2Step22EntryFAfter s2Step22EntryFRow 256 s2Step22EntryFFresh
    s2Step22EntryF_distinct s2Step22EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step22EntryF_reserved
  have rowEq : WindowRow.mk (s2Step22EntryFRow.payload++s2Step22EntryFFresh) s2Step22EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step22EntryGBefore : Arena := s2Step22EntryFBefore
def s2Step22EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step22EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step22EntryGFresh : List Wire := [784]
theorem s2Step22EntryG_distinct : (s2Step22EntryGRow.sign::s2Step22EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step22EntryG_owned : (s2Step22EntryGRow.sign::s2Step22EntryGRow.payload).toFinset⊆s2Step22EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step22EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22EntryG_reserved : s2Step22EntryGBefore.reserve s2Step22EntryGFresh.toFinset=some s2Step22EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step22EntryGFresh,arenaWires]
  · norm_num [s2Step22EntryGBefore,s2Step22EntryFBefore,s2Step22EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step22EntryGAfter,s2Step22EntryGBefore,s2Step22EntryFBefore,s2Step22EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step22EntryG_checked : planRowResizeLog s2Step22EntryGBefore s2Step22EntryGRow 256 s2Step22EntryGFresh=
    some (s2Step22EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩,growRow 769 s2Step22EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step22EntryGBefore s2Step22EntryGAfter s2Step22EntryGRow 256 s2Step22EntryGFresh
    s2Step22EntryG_distinct s2Step22EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step22EntryG_reserved
  have rowEq : WindowRow.mk (s2Step22EntryGRow.payload++s2Step22EntryGFresh) s2Step22EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step22EntryFvBefore : Arena := s2Step22EntryGAfter
def s2Step22EntryFvAfter : Arena := s2Step22EntryGAfter
def s2Step22EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832],770⟩
def s2Step22EntryFvFresh : List Wire := []
theorem s2Step22EntryFv_distinct : (s2Step22EntryFvRow.sign::s2Step22EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step22EntryFv_owned : (s2Step22EntryFvRow.sign::s2Step22EntryFvRow.payload).toFinset⊆s2Step22EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step22EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22EntryFv_reserved : s2Step22EntryFvBefore.reserve s2Step22EntryFvFresh.toFinset=some s2Step22EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step22EntryFvFresh,arenaWires]
  · norm_num [s2Step22EntryFvBefore,s2Step22EntryGAfter,s2Step22EntryFvFresh,arenaWires]
  · simp only [s2Step22EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step22EntryFv_checked : planRowResizeLog s2Step22EntryFvBefore s2Step22EntryFvRow 23 s2Step22EntryFvFresh=
    some (s2Step22EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832],770⟩,growRow 770 s2Step22EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step22EntryFvBefore s2Step22EntryFvAfter s2Step22EntryFvRow 23 s2Step22EntryFvFresh
    s2Step22EntryFv_distinct s2Step22EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step22EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step22EntryFvRow.payload++s2Step22EntryFvFresh) s2Step22EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step22EntryGvBefore : Arena := s2Step22EntryGAfter
def s2Step22EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step22EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826],771⟩
def s2Step22EntryGvFresh : List Wire := [829, 780]
theorem s2Step22EntryGv_distinct : (s2Step22EntryGvRow.sign::s2Step22EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step22EntryGv_owned : (s2Step22EntryGvRow.sign::s2Step22EntryGvRow.payload).toFinset⊆s2Step22EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step22EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22EntryGv_reserved : s2Step22EntryGvBefore.reserve s2Step22EntryGvFresh.toFinset=some s2Step22EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step22EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step22EntryGvBefore,s2Step22EntryGAfter,s2Step22EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step22EntryGvAfter,s2Step22EntryGvBefore,s2Step22EntryGAfter,s2Step22EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step22EntryGv_checked : planRowResizeLog s2Step22EntryGvBefore s2Step22EntryGvRow 23 s2Step22EntryGvFresh=
    some (s2Step22EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 780],771⟩,growRow 771 s2Step22EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step22EntryGvBefore s2Step22EntryGvAfter s2Step22EntryGvRow 23 s2Step22EntryGvFresh
    s2Step22EntryGv_distinct s2Step22EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step22EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step22EntryGvRow.payload++s2Step22EntryGvFresh) s2Step22EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step23EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step23EntryFAfter : Arena := s2Step23EntryFBefore
def s2Step23EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step23EntryFFresh : List Wire := []
theorem s2Step23EntryF_distinct : (s2Step23EntryFRow.sign::s2Step23EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step23EntryF_owned : (s2Step23EntryFRow.sign::s2Step23EntryFRow.payload).toFinset⊆s2Step23EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step23EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23EntryF_reserved : s2Step23EntryFBefore.reserve s2Step23EntryFFresh.toFinset=some s2Step23EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step23EntryFFresh,arenaWires]
  · norm_num [s2Step23EntryFBefore,s2Step23EntryFFresh,arenaWires]
  · simp only [s2Step23EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step23EntryF_checked : planRowResizeLog s2Step23EntryFBefore s2Step23EntryFRow 256 s2Step23EntryFFresh=
    some (s2Step23EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step23EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step23EntryFBefore s2Step23EntryFAfter s2Step23EntryFRow 256 s2Step23EntryFFresh
    s2Step23EntryF_distinct s2Step23EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step23EntryF_reserved
  have rowEq : WindowRow.mk (s2Step23EntryFRow.payload++s2Step23EntryFFresh) s2Step23EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step23EntryGBefore : Arena := s2Step23EntryFBefore
def s2Step23EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step23EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step23EntryGFresh : List Wire := [782]
theorem s2Step23EntryG_distinct : (s2Step23EntryGRow.sign::s2Step23EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step23EntryG_owned : (s2Step23EntryGRow.sign::s2Step23EntryGRow.payload).toFinset⊆s2Step23EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step23EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23EntryG_reserved : s2Step23EntryGBefore.reserve s2Step23EntryGFresh.toFinset=some s2Step23EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step23EntryGFresh,arenaWires]
  · norm_num [s2Step23EntryGBefore,s2Step23EntryFBefore,s2Step23EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step23EntryGAfter,s2Step23EntryGBefore,s2Step23EntryFBefore,s2Step23EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step23EntryG_checked : planRowResizeLog s2Step23EntryGBefore s2Step23EntryGRow 256 s2Step23EntryGFresh=
    some (s2Step23EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩,growRow 769 s2Step23EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step23EntryGBefore s2Step23EntryGAfter s2Step23EntryGRow 256 s2Step23EntryGFresh
    s2Step23EntryG_distinct s2Step23EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step23EntryG_reserved
  have rowEq : WindowRow.mk (s2Step23EntryGRow.payload++s2Step23EntryGFresh) s2Step23EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step23EntryFvBefore : Arena := s2Step23EntryGAfter
def s2Step23EntryFvAfter : Arena := s2Step23EntryGAfter
def s2Step23EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835],770⟩
def s2Step23EntryFvFresh : List Wire := []
theorem s2Step23EntryFv_distinct : (s2Step23EntryFvRow.sign::s2Step23EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step23EntryFv_owned : (s2Step23EntryFvRow.sign::s2Step23EntryFvRow.payload).toFinset⊆s2Step23EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step23EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23EntryFv_reserved : s2Step23EntryFvBefore.reserve s2Step23EntryFvFresh.toFinset=some s2Step23EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step23EntryFvFresh,arenaWires]
  · norm_num [s2Step23EntryFvBefore,s2Step23EntryGAfter,s2Step23EntryFvFresh,arenaWires]
  · simp only [s2Step23EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step23EntryFv_checked : planRowResizeLog s2Step23EntryFvBefore s2Step23EntryFvRow 24 s2Step23EntryFvFresh=
    some (s2Step23EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835],770⟩,growRow 770 s2Step23EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step23EntryFvBefore s2Step23EntryFvAfter s2Step23EntryFvRow 24 s2Step23EntryFvFresh
    s2Step23EntryFv_distinct s2Step23EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step23EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step23EntryFvRow.payload++s2Step23EntryFvFresh) s2Step23EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step23EntryGvBefore : Arena := s2Step23EntryGAfter
def s2Step23EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step23EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829],771⟩
def s2Step23EntryGvFresh : List Wire := [831, 780]
theorem s2Step23EntryGv_distinct : (s2Step23EntryGvRow.sign::s2Step23EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step23EntryGv_owned : (s2Step23EntryGvRow.sign::s2Step23EntryGvRow.payload).toFinset⊆s2Step23EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step23EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23EntryGv_reserved : s2Step23EntryGvBefore.reserve s2Step23EntryGvFresh.toFinset=some s2Step23EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step23EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step23EntryGvBefore,s2Step23EntryGAfter,s2Step23EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step23EntryGvAfter,s2Step23EntryGvBefore,s2Step23EntryGAfter,s2Step23EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step23EntryGv_checked : planRowResizeLog s2Step23EntryGvBefore s2Step23EntryGvRow 24 s2Step23EntryGvFresh=
    some (s2Step23EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 780],771⟩,growRow 771 s2Step23EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step23EntryGvBefore s2Step23EntryGvAfter s2Step23EntryGvRow 24 s2Step23EntryGvFresh
    s2Step23EntryGv_distinct s2Step23EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step23EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step23EntryGvRow.payload++s2Step23EntryGvFresh) s2Step23EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step24EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step24EntryFAfter : Arena := s2Step24EntryFBefore
def s2Step24EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step24EntryFFresh : List Wire := []
theorem s2Step24EntryF_distinct : (s2Step24EntryFRow.sign::s2Step24EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step24EntryF_owned : (s2Step24EntryFRow.sign::s2Step24EntryFRow.payload).toFinset⊆s2Step24EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step24EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24EntryF_reserved : s2Step24EntryFBefore.reserve s2Step24EntryFFresh.toFinset=some s2Step24EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step24EntryFFresh,arenaWires]
  · norm_num [s2Step24EntryFBefore,s2Step24EntryFFresh,arenaWires]
  · simp only [s2Step24EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step24EntryF_checked : planRowResizeLog s2Step24EntryFBefore s2Step24EntryFRow 256 s2Step24EntryFFresh=
    some (s2Step24EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step24EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step24EntryFBefore s2Step24EntryFAfter s2Step24EntryFRow 256 s2Step24EntryFFresh
    s2Step24EntryF_distinct s2Step24EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step24EntryF_reserved
  have rowEq : WindowRow.mk (s2Step24EntryFRow.payload++s2Step24EntryFFresh) s2Step24EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step24EntryGBefore : Arena := s2Step24EntryFBefore
def s2Step24EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step24EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step24EntryGFresh : List Wire := [783]
theorem s2Step24EntryG_distinct : (s2Step24EntryGRow.sign::s2Step24EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step24EntryG_owned : (s2Step24EntryGRow.sign::s2Step24EntryGRow.payload).toFinset⊆s2Step24EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step24EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24EntryG_reserved : s2Step24EntryGBefore.reserve s2Step24EntryGFresh.toFinset=some s2Step24EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step24EntryGFresh,arenaWires]
  · norm_num [s2Step24EntryGBefore,s2Step24EntryFBefore,s2Step24EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step24EntryGAfter,s2Step24EntryGBefore,s2Step24EntryFBefore,s2Step24EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step24EntryG_checked : planRowResizeLog s2Step24EntryGBefore s2Step24EntryGRow 256 s2Step24EntryGFresh=
    some (s2Step24EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩,growRow 769 s2Step24EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step24EntryGBefore s2Step24EntryGAfter s2Step24EntryGRow 256 s2Step24EntryGFresh
    s2Step24EntryG_distinct s2Step24EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step24EntryG_reserved
  have rowEq : WindowRow.mk (s2Step24EntryGRow.payload++s2Step24EntryGFresh) s2Step24EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step24EntryFvBefore : Arena := s2Step24EntryGAfter
def s2Step24EntryFvAfter : Arena := s2Step24EntryGAfter
def s2Step24EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837],770⟩
def s2Step24EntryFvFresh : List Wire := []
theorem s2Step24EntryFv_distinct : (s2Step24EntryFvRow.sign::s2Step24EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step24EntryFv_owned : (s2Step24EntryFvRow.sign::s2Step24EntryFvRow.payload).toFinset⊆s2Step24EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step24EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24EntryFv_reserved : s2Step24EntryFvBefore.reserve s2Step24EntryFvFresh.toFinset=some s2Step24EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step24EntryFvFresh,arenaWires]
  · norm_num [s2Step24EntryFvBefore,s2Step24EntryGAfter,s2Step24EntryFvFresh,arenaWires]
  · simp only [s2Step24EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step24EntryFv_checked : planRowResizeLog s2Step24EntryFvBefore s2Step24EntryFvRow 25 s2Step24EntryFvFresh=
    some (s2Step24EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837],770⟩,growRow 770 s2Step24EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step24EntryFvBefore s2Step24EntryFvAfter s2Step24EntryFvRow 25 s2Step24EntryFvFresh
    s2Step24EntryFv_distinct s2Step24EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step24EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step24EntryFvRow.payload++s2Step24EntryFvFresh) s2Step24EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step24EntryGvBefore : Arena := s2Step24EntryGAfter
def s2Step24EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step24EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831],771⟩
def s2Step24EntryGvFresh : List Wire := [834, 780]
theorem s2Step24EntryGv_distinct : (s2Step24EntryGvRow.sign::s2Step24EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step24EntryGv_owned : (s2Step24EntryGvRow.sign::s2Step24EntryGvRow.payload).toFinset⊆s2Step24EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step24EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24EntryGv_reserved : s2Step24EntryGvBefore.reserve s2Step24EntryGvFresh.toFinset=some s2Step24EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step24EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step24EntryGvBefore,s2Step24EntryGAfter,s2Step24EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step24EntryGvAfter,s2Step24EntryGvBefore,s2Step24EntryGAfter,s2Step24EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step24EntryGv_checked : planRowResizeLog s2Step24EntryGvBefore s2Step24EntryGvRow 25 s2Step24EntryGvFresh=
    some (s2Step24EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 780],771⟩,growRow 771 s2Step24EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step24EntryGvBefore s2Step24EntryGvAfter s2Step24EntryGvRow 25 s2Step24EntryGvFresh
    s2Step24EntryGv_distinct s2Step24EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step24EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step24EntryGvRow.payload++s2Step24EntryGvFresh) s2Step24EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step25EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step25EntryFAfter : Arena := s2Step25EntryFBefore
def s2Step25EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766],768⟩
def s2Step25EntryFFresh : List Wire := []
theorem s2Step25EntryF_distinct : (s2Step25EntryFRow.sign::s2Step25EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step25EntryF_owned : (s2Step25EntryFRow.sign::s2Step25EntryFRow.payload).toFinset⊆s2Step25EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step25EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25EntryF_reserved : s2Step25EntryFBefore.reserve s2Step25EntryFFresh.toFinset=some s2Step25EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step25EntryFFresh,arenaWires]
  · norm_num [s2Step25EntryFBefore,s2Step25EntryFFresh,arenaWires]
  · simp only [s2Step25EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step25EntryF_checked : planRowResizeLog s2Step25EntryFBefore s2Step25EntryFRow 255 s2Step25EntryFFresh=
    some (s2Step25EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766],768⟩,growRow 768 s2Step25EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step25EntryFBefore s2Step25EntryFAfter s2Step25EntryFRow 255 s2Step25EntryFFresh
    s2Step25EntryF_distinct s2Step25EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step25EntryF_reserved
  have rowEq : WindowRow.mk (s2Step25EntryFRow.payload++s2Step25EntryFFresh) s2Step25EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step25EntryGBefore : Arena := s2Step25EntryFBefore
def s2Step25EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step25EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253],769⟩
def s2Step25EntryGFresh : List Wire := [781]
theorem s2Step25EntryG_distinct : (s2Step25EntryGRow.sign::s2Step25EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step25EntryG_owned : (s2Step25EntryGRow.sign::s2Step25EntryGRow.payload).toFinset⊆s2Step25EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step25EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25EntryG_reserved : s2Step25EntryGBefore.reserve s2Step25EntryGFresh.toFinset=some s2Step25EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step25EntryGFresh,arenaWires]
  · norm_num [s2Step25EntryGBefore,s2Step25EntryFBefore,s2Step25EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step25EntryGAfter,s2Step25EntryGBefore,s2Step25EntryFBefore,s2Step25EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step25EntryG_checked : planRowResizeLog s2Step25EntryGBefore s2Step25EntryGRow 255 s2Step25EntryGFresh=
    some (s2Step25EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 781],769⟩,growRow 769 s2Step25EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step25EntryGBefore s2Step25EntryGAfter s2Step25EntryGRow 255 s2Step25EntryGFresh
    s2Step25EntryG_distinct s2Step25EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step25EntryG_reserved
  have rowEq : WindowRow.mk (s2Step25EntryGRow.payload++s2Step25EntryGFresh) s2Step25EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step25EntryFvBefore : Arena := s2Step25EntryGAfter
def s2Step25EntryFvAfter : Arena := s2Step25EntryGAfter
def s2Step25EntryFvRow : WindowRow := ⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837],770⟩
def s2Step25EntryFvFresh : List Wire := []
theorem s2Step25EntryFv_distinct : (s2Step25EntryFvRow.sign::s2Step25EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step25EntryFv_owned : (s2Step25EntryFvRow.sign::s2Step25EntryFvRow.payload).toFinset⊆s2Step25EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step25EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25EntryFv_reserved : s2Step25EntryFvBefore.reserve s2Step25EntryFvFresh.toFinset=some s2Step25EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step25EntryFvFresh,arenaWires]
  · norm_num [s2Step25EntryFvBefore,s2Step25EntryGAfter,s2Step25EntryFvFresh,arenaWires]
  · simp only [s2Step25EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step25EntryFv_checked : planRowResizeLog s2Step25EntryFvBefore s2Step25EntryFvRow 25 s2Step25EntryFvFresh=
    some (s2Step25EntryFvAfter,⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837],770⟩,growRow 770 s2Step25EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step25EntryFvBefore s2Step25EntryFvAfter s2Step25EntryFvRow 25 s2Step25EntryFvFresh
    s2Step25EntryFv_distinct s2Step25EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step25EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step25EntryFvRow.payload++s2Step25EntryFvFresh) s2Step25EntryFvRow.sign=⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step25EntryGvBefore : Arena := s2Step25EntryGAfter
def s2Step25EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step25EntryGvRow : WindowRow := ⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834],771⟩
def s2Step25EntryGvFresh : List Wire := [836]
theorem s2Step25EntryGv_distinct : (s2Step25EntryGvRow.sign::s2Step25EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step25EntryGv_owned : (s2Step25EntryGvRow.sign::s2Step25EntryGvRow.payload).toFinset⊆s2Step25EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step25EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (786≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25EntryGv_reserved : s2Step25EntryGvBefore.reserve s2Step25EntryGvFresh.toFinset=some s2Step25EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step25EntryGvFresh,arenaWires]
  · norm_num [s2Step25EntryGvBefore,s2Step25EntryGAfter,s2Step25EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step25EntryGvAfter,s2Step25EntryGvBefore,s2Step25EntryGAfter,s2Step25EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step25EntryGv_checked : planRowResizeLog s2Step25EntryGvBefore s2Step25EntryGvRow 25 s2Step25EntryGvFresh=
    some (s2Step25EntryGvAfter,⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836],771⟩,growRow 771 s2Step25EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step25EntryGvBefore s2Step25EntryGvAfter s2Step25EntryGvRow 25 s2Step25EntryGvFresh
    s2Step25EntryGv_distinct s2Step25EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step25EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step25EntryGvRow.payload++s2Step25EntryGvFresh) s2Step25EntryGvRow.sign=⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step26EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step26EntryFAfter : Arena := s2Step26EntryFBefore
def s2Step26EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766],768⟩
def s2Step26EntryFFresh : List Wire := []
theorem s2Step26EntryF_distinct : (s2Step26EntryFRow.sign::s2Step26EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step26EntryF_owned : (s2Step26EntryFRow.sign::s2Step26EntryFRow.payload).toFinset⊆s2Step26EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step26EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26EntryF_reserved : s2Step26EntryFBefore.reserve s2Step26EntryFFresh.toFinset=some s2Step26EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step26EntryFFresh,arenaWires]
  · norm_num [s2Step26EntryFBefore,s2Step26EntryFFresh,arenaWires]
  · simp only [s2Step26EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step26EntryF_checked : planRowResizeLog s2Step26EntryFBefore s2Step26EntryFRow 255 s2Step26EntryFFresh=
    some (s2Step26EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766],768⟩,growRow 768 s2Step26EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step26EntryFBefore s2Step26EntryFAfter s2Step26EntryFRow 255 s2Step26EntryFFresh
    s2Step26EntryF_distinct s2Step26EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step26EntryF_reserved
  have rowEq : WindowRow.mk (s2Step26EntryFRow.payload++s2Step26EntryFFresh) s2Step26EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step26EntryGBefore : Arena := s2Step26EntryFBefore
def s2Step26EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step26EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253],769⟩
def s2Step26EntryGFresh : List Wire := [785]
theorem s2Step26EntryG_distinct : (s2Step26EntryGRow.sign::s2Step26EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step26EntryG_owned : (s2Step26EntryGRow.sign::s2Step26EntryGRow.payload).toFinset⊆s2Step26EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step26EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26EntryG_reserved : s2Step26EntryGBefore.reserve s2Step26EntryGFresh.toFinset=some s2Step26EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step26EntryGFresh,arenaWires]
  · norm_num [s2Step26EntryGBefore,s2Step26EntryFBefore,s2Step26EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step26EntryGAfter,s2Step26EntryGBefore,s2Step26EntryFBefore,s2Step26EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step26EntryG_checked : planRowResizeLog s2Step26EntryGBefore s2Step26EntryGRow 255 s2Step26EntryGFresh=
    some (s2Step26EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 785],769⟩,growRow 769 s2Step26EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step26EntryGBefore s2Step26EntryGAfter s2Step26EntryGRow 255 s2Step26EntryGFresh
    s2Step26EntryG_distinct s2Step26EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step26EntryG_reserved
  have rowEq : WindowRow.mk (s2Step26EntryGRow.payload++s2Step26EntryGFresh) s2Step26EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 785],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step26EntryFvBefore : Arena := s2Step26EntryGAfter
def s2Step26EntryFvAfter : Arena := s2Step26EntryGAfter
def s2Step26EntryFvRow : WindowRow := ⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784],770⟩
def s2Step26EntryFvFresh : List Wire := []
theorem s2Step26EntryFv_distinct : (s2Step26EntryFvRow.sign::s2Step26EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step26EntryFv_owned : (s2Step26EntryFvRow.sign::s2Step26EntryFvRow.payload).toFinset⊆s2Step26EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step26EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26EntryFv_reserved : s2Step26EntryFvBefore.reserve s2Step26EntryFvFresh.toFinset=some s2Step26EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step26EntryFvFresh,arenaWires]
  · norm_num [s2Step26EntryFvBefore,s2Step26EntryGAfter,s2Step26EntryFvFresh,arenaWires]
  · simp only [s2Step26EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step26EntryFv_checked : planRowResizeLog s2Step26EntryFvBefore s2Step26EntryFvRow 26 s2Step26EntryFvFresh=
    some (s2Step26EntryFvAfter,⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784],770⟩,growRow 770 s2Step26EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step26EntryFvBefore s2Step26EntryFvAfter s2Step26EntryFvRow 26 s2Step26EntryFvFresh
    s2Step26EntryFv_distinct s2Step26EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step26EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step26EntryFvRow.payload++s2Step26EntryFvFresh) s2Step26EntryFvRow.sign=⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step26EntryGvBefore : Arena := s2Step26EntryGAfter
def s2Step26EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step26EntryGvRow : WindowRow := ⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836],771⟩
def s2Step26EntryGvFresh : List Wire := [779]
theorem s2Step26EntryGv_distinct : (s2Step26EntryGvRow.sign::s2Step26EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step26EntryGv_owned : (s2Step26EntryGvRow.sign::s2Step26EntryGvRow.payload).toFinset⊆s2Step26EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step26EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26EntryGv_reserved : s2Step26EntryGvBefore.reserve s2Step26EntryGvFresh.toFinset=some s2Step26EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step26EntryGvFresh,arenaWires]
  · norm_num [s2Step26EntryGvBefore,s2Step26EntryGAfter,s2Step26EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step26EntryGvAfter,s2Step26EntryGvBefore,s2Step26EntryGAfter,s2Step26EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step26EntryGv_checked : planRowResizeLog s2Step26EntryGvBefore s2Step26EntryGvRow 26 s2Step26EntryGvFresh=
    some (s2Step26EntryGvAfter,⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 779],771⟩,growRow 771 s2Step26EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step26EntryGvBefore s2Step26EntryGvAfter s2Step26EntryGvRow 26 s2Step26EntryGvFresh
    s2Step26EntryGv_distinct s2Step26EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step26EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step26EntryGvRow.payload++s2Step26EntryGvFresh) s2Step26EntryGvRow.sign=⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 779],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step27EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step27EntryFAfter : Arena := s2Step27EntryFBefore
def s2Step27EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766],768⟩
def s2Step27EntryFFresh : List Wire := []
theorem s2Step27EntryF_distinct : (s2Step27EntryFRow.sign::s2Step27EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step27EntryF_owned : (s2Step27EntryFRow.sign::s2Step27EntryFRow.payload).toFinset⊆s2Step27EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step27EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27EntryF_reserved : s2Step27EntryFBefore.reserve s2Step27EntryFFresh.toFinset=some s2Step27EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step27EntryFFresh,arenaWires]
  · norm_num [s2Step27EntryFBefore,s2Step27EntryFFresh,arenaWires]
  · simp only [s2Step27EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step27EntryF_checked : planRowResizeLog s2Step27EntryFBefore s2Step27EntryFRow 255 s2Step27EntryFFresh=
    some (s2Step27EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766],768⟩,growRow 768 s2Step27EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step27EntryFBefore s2Step27EntryFAfter s2Step27EntryFRow 255 s2Step27EntryFFresh
    s2Step27EntryF_distinct s2Step27EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step27EntryF_reserved
  have rowEq : WindowRow.mk (s2Step27EntryFRow.payload++s2Step27EntryFFresh) s2Step27EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step27EntryGBefore : Arena := s2Step27EntryFBefore
def s2Step27EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<840) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step27EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253],769⟩
def s2Step27EntryGFresh : List Wire := [839]
theorem s2Step27EntryG_distinct : (s2Step27EntryGRow.sign::s2Step27EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step27EntryG_owned : (s2Step27EntryGRow.sign::s2Step27EntryGRow.payload).toFinset⊆s2Step27EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step27EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27EntryG_reserved : s2Step27EntryGBefore.reserve s2Step27EntryGFresh.toFinset=some s2Step27EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step27EntryGFresh,arenaWires]
  · norm_num [s2Step27EntryGBefore,s2Step27EntryFBefore,s2Step27EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step27EntryGAfter,s2Step27EntryGBefore,s2Step27EntryFBefore,s2Step27EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step27EntryG_checked : planRowResizeLog s2Step27EntryGBefore s2Step27EntryGRow 255 s2Step27EntryGFresh=
    some (s2Step27EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 839],769⟩,growRow 769 s2Step27EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step27EntryGBefore s2Step27EntryGAfter s2Step27EntryGRow 255 s2Step27EntryGFresh
    s2Step27EntryG_distinct s2Step27EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step27EntryG_reserved
  have rowEq : WindowRow.mk (s2Step27EntryGRow.payload++s2Step27EntryGFresh) s2Step27EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 839],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step27EntryFvBefore : Arena := s2Step27EntryGAfter
def s2Step27EntryFvAfter : Arena := s2Step27EntryGAfter
def s2Step27EntryFvRow : WindowRow := ⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782],770⟩
def s2Step27EntryFvFresh : List Wire := []
theorem s2Step27EntryFv_distinct : (s2Step27EntryFvRow.sign::s2Step27EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step27EntryFv_owned : (s2Step27EntryFvRow.sign::s2Step27EntryFvRow.payload).toFinset⊆s2Step27EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step27EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<840) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27EntryFv_reserved : s2Step27EntryFvBefore.reserve s2Step27EntryFvFresh.toFinset=some s2Step27EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step27EntryFvFresh,arenaWires]
  · norm_num [s2Step27EntryFvBefore,s2Step27EntryGAfter,s2Step27EntryFvFresh,arenaWires]
  · simp only [s2Step27EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step27EntryFv_checked : planRowResizeLog s2Step27EntryFvBefore s2Step27EntryFvRow 27 s2Step27EntryFvFresh=
    some (s2Step27EntryFvAfter,⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782],770⟩,growRow 770 s2Step27EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step27EntryFvBefore s2Step27EntryFvAfter s2Step27EntryFvRow 27 s2Step27EntryFvFresh
    s2Step27EntryFv_distinct s2Step27EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step27EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step27EntryFvRow.payload++s2Step27EntryFvFresh) s2Step27EntryFvRow.sign=⟨[255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step27EntryGvBefore : Arena := s2Step27EntryGAfter
def s2Step27EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step27EntryGvRow : WindowRow := ⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836],771⟩
def s2Step27EntryGvFresh : List Wire := [840, 779]
theorem s2Step27EntryGv_distinct : (s2Step27EntryGvRow.sign::s2Step27EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step27EntryGv_owned : (s2Step27EntryGvRow.sign::s2Step27EntryGvRow.payload).toFinset⊆s2Step27EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step27EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<840) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27EntryGv_reserved : s2Step27EntryGvBefore.reserve s2Step27EntryGvFresh.toFinset=some s2Step27EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step27EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step27EntryGvBefore,s2Step27EntryGAfter,s2Step27EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step27EntryGvAfter,s2Step27EntryGvBefore,s2Step27EntryGAfter,s2Step27EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step27EntryGv_checked : planRowResizeLog s2Step27EntryGvBefore s2Step27EntryGvRow 27 s2Step27EntryGvFresh=
    some (s2Step27EntryGvAfter,⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 779],771⟩,growRow 771 s2Step27EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step27EntryGvBefore s2Step27EntryGvAfter s2Step27EntryGvRow 27 s2Step27EntryGvFresh
    s2Step27EntryGv_distinct s2Step27EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step27EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step27EntryGvRow.payload++s2Step27EntryGvFresh) s2Step27EntryGvRow.sign=⟨[767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 779],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step28EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step28EntryFAfter : Arena := s2Step28EntryFBefore
def s2Step28EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765],768⟩
def s2Step28EntryFFresh : List Wire := []
theorem s2Step28EntryF_distinct : (s2Step28EntryFRow.sign::s2Step28EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step28EntryF_owned : (s2Step28EntryFRow.sign::s2Step28EntryFRow.payload).toFinset⊆s2Step28EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step28EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28EntryF_reserved : s2Step28EntryFBefore.reserve s2Step28EntryFFresh.toFinset=some s2Step28EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step28EntryFFresh,arenaWires]
  · norm_num [s2Step28EntryFBefore,s2Step28EntryFFresh,arenaWires]
  · simp only [s2Step28EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step28EntryF_checked : planRowResizeLog s2Step28EntryFBefore s2Step28EntryFRow 254 s2Step28EntryFFresh=
    some (s2Step28EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765],768⟩,growRow 768 s2Step28EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step28EntryFBefore s2Step28EntryFAfter s2Step28EntryFRow 254 s2Step28EntryFFresh
    s2Step28EntryF_distinct s2Step28EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step28EntryF_reserved
  have rowEq : WindowRow.mk (s2Step28EntryFRow.payload++s2Step28EntryFFresh) s2Step28EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step28EntryGBefore : Arena := s2Step28EntryFBefore
def s2Step28EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step28EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252],769⟩
def s2Step28EntryGFresh : List Wire := [780]
theorem s2Step28EntryG_distinct : (s2Step28EntryGRow.sign::s2Step28EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step28EntryG_owned : (s2Step28EntryGRow.sign::s2Step28EntryGRow.payload).toFinset⊆s2Step28EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step28EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28EntryG_reserved : s2Step28EntryGBefore.reserve s2Step28EntryGFresh.toFinset=some s2Step28EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step28EntryGFresh,arenaWires]
  · norm_num [s2Step28EntryGBefore,s2Step28EntryFBefore,s2Step28EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step28EntryGAfter,s2Step28EntryGBefore,s2Step28EntryFBefore,s2Step28EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step28EntryG_checked : planRowResizeLog s2Step28EntryGBefore s2Step28EntryGRow 254 s2Step28EntryGFresh=
    some (s2Step28EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 780],769⟩,growRow 769 s2Step28EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step28EntryGBefore s2Step28EntryGAfter s2Step28EntryGRow 254 s2Step28EntryGFresh
    s2Step28EntryG_distinct s2Step28EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step28EntryG_reserved
  have rowEq : WindowRow.mk (s2Step28EntryGRow.payload++s2Step28EntryGFresh) s2Step28EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 780],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step28EntryFvBefore : Arena := s2Step28EntryGAfter
def s2Step28EntryFvAfter : Arena := s2Step28EntryGAfter
def s2Step28EntryFvRow : WindowRow := ⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842],770⟩
def s2Step28EntryFvFresh : List Wire := []
theorem s2Step28EntryFv_distinct : (s2Step28EntryFvRow.sign::s2Step28EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step28EntryFv_owned : (s2Step28EntryFvRow.sign::s2Step28EntryFvRow.payload).toFinset⊆s2Step28EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step28EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28EntryFv_reserved : s2Step28EntryFvBefore.reserve s2Step28EntryFvFresh.toFinset=some s2Step28EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step28EntryFvFresh,arenaWires]
  · norm_num [s2Step28EntryFvBefore,s2Step28EntryGAfter,s2Step28EntryFvFresh,arenaWires]
  · simp only [s2Step28EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step28EntryFv_checked : planRowResizeLog s2Step28EntryFvBefore s2Step28EntryFvRow 28 s2Step28EntryFvFresh=
    some (s2Step28EntryFvAfter,⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842],770⟩,growRow 770 s2Step28EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step28EntryFvBefore s2Step28EntryFvAfter s2Step28EntryFvRow 28 s2Step28EntryFvFresh
    s2Step28EntryFv_distinct s2Step28EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step28EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step28EntryFvRow.payload++s2Step28EntryFvFresh) s2Step28EntryFvRow.sign=⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step28EntryGvBefore : Arena := s2Step28EntryGAfter
def s2Step28EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step28EntryGvRow : WindowRow := ⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840],771⟩
def s2Step28EntryGvFresh : List Wire := [783, 778]
theorem s2Step28EntryGv_distinct : (s2Step28EntryGvRow.sign::s2Step28EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step28EntryGv_owned : (s2Step28EntryGvRow.sign::s2Step28EntryGvRow.payload).toFinset⊆s2Step28EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step28EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28EntryGv_reserved : s2Step28EntryGvBefore.reserve s2Step28EntryGvFresh.toFinset=some s2Step28EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step28EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step28EntryGvBefore,s2Step28EntryGAfter,s2Step28EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step28EntryGvAfter,s2Step28EntryGvBefore,s2Step28EntryGAfter,s2Step28EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step28EntryGv_checked : planRowResizeLog s2Step28EntryGvBefore s2Step28EntryGvRow 28 s2Step28EntryGvFresh=
    some (s2Step28EntryGvAfter,⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778],771⟩,growRow 771 s2Step28EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step28EntryGvBefore s2Step28EntryGvAfter s2Step28EntryGvRow 28 s2Step28EntryGvFresh
    s2Step28EntryGv_distinct s2Step28EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step28EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step28EntryGvRow.payload++s2Step28EntryGvFresh) s2Step28EntryGvRow.sign=⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step29EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step29EntryFAfter : Arena := s2Step29EntryFBefore
def s2Step29EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765],768⟩
def s2Step29EntryFFresh : List Wire := []
theorem s2Step29EntryF_distinct : (s2Step29EntryFRow.sign::s2Step29EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step29EntryF_owned : (s2Step29EntryFRow.sign::s2Step29EntryFRow.payload).toFinset⊆s2Step29EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step29EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29EntryF_reserved : s2Step29EntryFBefore.reserve s2Step29EntryFFresh.toFinset=some s2Step29EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step29EntryFFresh,arenaWires]
  · norm_num [s2Step29EntryFBefore,s2Step29EntryFFresh,arenaWires]
  · simp only [s2Step29EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step29EntryF_checked : planRowResizeLog s2Step29EntryFBefore s2Step29EntryFRow 254 s2Step29EntryFFresh=
    some (s2Step29EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765],768⟩,growRow 768 s2Step29EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step29EntryFBefore s2Step29EntryFAfter s2Step29EntryFRow 254 s2Step29EntryFFresh
    s2Step29EntryF_distinct s2Step29EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step29EntryF_reserved
  have rowEq : WindowRow.mk (s2Step29EntryFRow.payload++s2Step29EntryFFresh) s2Step29EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step29EntryGBefore : Arena := s2Step29EntryFBefore
def s2Step29EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step29EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252],769⟩
def s2Step29EntryGFresh : List Wire := [779]
theorem s2Step29EntryG_distinct : (s2Step29EntryGRow.sign::s2Step29EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step29EntryG_owned : (s2Step29EntryGRow.sign::s2Step29EntryGRow.payload).toFinset⊆s2Step29EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step29EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29EntryG_reserved : s2Step29EntryGBefore.reserve s2Step29EntryGFresh.toFinset=some s2Step29EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step29EntryGFresh,arenaWires]
  · norm_num [s2Step29EntryGBefore,s2Step29EntryFBefore,s2Step29EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step29EntryGAfter,s2Step29EntryGBefore,s2Step29EntryFBefore,s2Step29EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step29EntryG_checked : planRowResizeLog s2Step29EntryGBefore s2Step29EntryGRow 254 s2Step29EntryGFresh=
    some (s2Step29EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 779],769⟩,growRow 769 s2Step29EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step29EntryGBefore s2Step29EntryGAfter s2Step29EntryGRow 254 s2Step29EntryGFresh
    s2Step29EntryG_distinct s2Step29EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step29EntryG_reserved
  have rowEq : WindowRow.mk (s2Step29EntryGRow.payload++s2Step29EntryGFresh) s2Step29EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 779],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step29EntryFvBefore : Arena := s2Step29EntryGAfter
def s2Step29EntryFvAfter : Arena := s2Step29EntryGAfter
def s2Step29EntryFvRow : WindowRow := ⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842],770⟩
def s2Step29EntryFvFresh : List Wire := []
theorem s2Step29EntryFv_distinct : (s2Step29EntryFvRow.sign::s2Step29EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step29EntryFv_owned : (s2Step29EntryFvRow.sign::s2Step29EntryFvRow.payload).toFinset⊆s2Step29EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step29EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29EntryFv_reserved : s2Step29EntryFvBefore.reserve s2Step29EntryFvFresh.toFinset=some s2Step29EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step29EntryFvFresh,arenaWires]
  · norm_num [s2Step29EntryFvBefore,s2Step29EntryGAfter,s2Step29EntryFvFresh,arenaWires]
  · simp only [s2Step29EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step29EntryFv_checked : planRowResizeLog s2Step29EntryFvBefore s2Step29EntryFvRow 28 s2Step29EntryFvFresh=
    some (s2Step29EntryFvAfter,⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842],770⟩,growRow 770 s2Step29EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step29EntryFvBefore s2Step29EntryFvAfter s2Step29EntryFvRow 28 s2Step29EntryFvFresh
    s2Step29EntryFv_distinct s2Step29EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step29EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step29EntryFvRow.payload++s2Step29EntryFvFresh) s2Step29EntryFvRow.sign=⟨[255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step29EntryGvBefore : Arena := s2Step29EntryGAfter
def s2Step29EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step29EntryGvRow : WindowRow := ⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783],771⟩
def s2Step29EntryGvFresh : List Wire := [787]
theorem s2Step29EntryGv_distinct : (s2Step29EntryGvRow.sign::s2Step29EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step29EntryGv_owned : (s2Step29EntryGvRow.sign::s2Step29EntryGvRow.payload).toFinset⊆s2Step29EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step29EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29EntryGv_reserved : s2Step29EntryGvBefore.reserve s2Step29EntryGvFresh.toFinset=some s2Step29EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step29EntryGvFresh,arenaWires]
  · norm_num [s2Step29EntryGvBefore,s2Step29EntryGAfter,s2Step29EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step29EntryGvAfter,s2Step29EntryGvBefore,s2Step29EntryGAfter,s2Step29EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step29EntryGv_checked : planRowResizeLog s2Step29EntryGvBefore s2Step29EntryGvRow 28 s2Step29EntryGvFresh=
    some (s2Step29EntryGvAfter,⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 787],771⟩,growRow 771 s2Step29EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step29EntryGvBefore s2Step29EntryGvAfter s2Step29EntryGvRow 28 s2Step29EntryGvFresh
    s2Step29EntryGv_distinct s2Step29EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step29EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step29EntryGvRow.payload++s2Step29EntryGvFresh) s2Step29EntryGvRow.sign=⟨[767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 787],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step30EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step30EntryFAfter : Arena := s2Step30EntryFBefore
def s2Step30EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764],768⟩
def s2Step30EntryFFresh : List Wire := []
theorem s2Step30EntryF_distinct : (s2Step30EntryFRow.sign::s2Step30EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step30EntryF_owned : (s2Step30EntryFRow.sign::s2Step30EntryFRow.payload).toFinset⊆s2Step30EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step30EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30EntryF_reserved : s2Step30EntryFBefore.reserve s2Step30EntryFFresh.toFinset=some s2Step30EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step30EntryFFresh,arenaWires]
  · norm_num [s2Step30EntryFBefore,s2Step30EntryFFresh,arenaWires]
  · simp only [s2Step30EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step30EntryF_checked : planRowResizeLog s2Step30EntryFBefore s2Step30EntryFRow 253 s2Step30EntryFFresh=
    some (s2Step30EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764],768⟩,growRow 768 s2Step30EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step30EntryFBefore s2Step30EntryFAfter s2Step30EntryFRow 253 s2Step30EntryFFresh
    s2Step30EntryF_distinct s2Step30EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step30EntryF_reserved
  have rowEq : WindowRow.mk (s2Step30EntryFRow.payload++s2Step30EntryFFresh) s2Step30EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step30EntryGBefore : Arena := s2Step30EntryFBefore
def s2Step30EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step30EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251],769⟩
def s2Step30EntryGFresh : List Wire := [839]
theorem s2Step30EntryG_distinct : (s2Step30EntryGRow.sign::s2Step30EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step30EntryG_owned : (s2Step30EntryGRow.sign::s2Step30EntryGRow.payload).toFinset⊆s2Step30EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step30EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30EntryG_reserved : s2Step30EntryGBefore.reserve s2Step30EntryGFresh.toFinset=some s2Step30EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step30EntryGFresh,arenaWires]
  · norm_num [s2Step30EntryGBefore,s2Step30EntryFBefore,s2Step30EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step30EntryGAfter,s2Step30EntryGBefore,s2Step30EntryFBefore,s2Step30EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step30EntryG_checked : planRowResizeLog s2Step30EntryGBefore s2Step30EntryGRow 253 s2Step30EntryGFresh=
    some (s2Step30EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 839],769⟩,growRow 769 s2Step30EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step30EntryGBefore s2Step30EntryGAfter s2Step30EntryGRow 253 s2Step30EntryGFresh
    s2Step30EntryG_distinct s2Step30EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step30EntryG_reserved
  have rowEq : WindowRow.mk (s2Step30EntryGRow.payload++s2Step30EntryGFresh) s2Step30EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 839],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step30EntryFvBefore : Arena := s2Step30EntryGAfter
def s2Step30EntryFvAfter : Arena := s2Step30EntryGAfter
def s2Step30EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩
def s2Step30EntryFvFresh : List Wire := []
theorem s2Step30EntryFv_distinct : (s2Step30EntryFvRow.sign::s2Step30EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step30EntryFv_owned : (s2Step30EntryFvRow.sign::s2Step30EntryFvRow.payload).toFinset⊆s2Step30EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step30EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30EntryFv_reserved : s2Step30EntryFvBefore.reserve s2Step30EntryFvFresh.toFinset=some s2Step30EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step30EntryFvFresh,arenaWires]
  · norm_num [s2Step30EntryFvBefore,s2Step30EntryGAfter,s2Step30EntryFvFresh,arenaWires]
  · simp only [s2Step30EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step30EntryFv_checked : planRowResizeLog s2Step30EntryFvBefore s2Step30EntryFvRow 29 s2Step30EntryFvFresh=
    some (s2Step30EntryFvAfter,⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩,growRow 770 s2Step30EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step30EntryFvBefore s2Step30EntryFvAfter s2Step30EntryFvRow 29 s2Step30EntryFvFresh
    s2Step30EntryFv_distinct s2Step30EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step30EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step30EntryFvRow.payload++s2Step30EntryFvFresh) s2Step30EntryFvRow.sign=⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step30EntryGvBefore : Arena := s2Step30EntryGAfter
def s2Step30EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step30EntryGvRow : WindowRow := ⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783],771⟩
def s2Step30EntryGvFresh : List Wire := [778, 786]
theorem s2Step30EntryGv_distinct : (s2Step30EntryGvRow.sign::s2Step30EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step30EntryGv_owned : (s2Step30EntryGvRow.sign::s2Step30EntryGvRow.payload).toFinset⊆s2Step30EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step30EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30EntryGv_reserved : s2Step30EntryGvBefore.reserve s2Step30EntryGvFresh.toFinset=some s2Step30EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step30EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step30EntryGvBefore,s2Step30EntryGAfter,s2Step30EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step30EntryGvAfter,s2Step30EntryGvBefore,s2Step30EntryGAfter,s2Step30EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step30EntryGv_checked : planRowResizeLog s2Step30EntryGvBefore s2Step30EntryGvRow 29 s2Step30EntryGvFresh=
    some (s2Step30EntryGvAfter,⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 786],771⟩,growRow 771 s2Step30EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step30EntryGvBefore s2Step30EntryGvAfter s2Step30EntryGvRow 29 s2Step30EntryGvFresh
    s2Step30EntryGv_distinct s2Step30EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step30EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step30EntryGvRow.payload++s2Step30EntryGvFresh) s2Step30EntryGvRow.sign=⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 786],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step31EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step31EntryFAfter : Arena := s2Step31EntryFBefore
def s2Step31EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764],768⟩
def s2Step31EntryFFresh : List Wire := []
theorem s2Step31EntryF_distinct : (s2Step31EntryFRow.sign::s2Step31EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step31EntryF_owned : (s2Step31EntryFRow.sign::s2Step31EntryFRow.payload).toFinset⊆s2Step31EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step31EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31EntryF_reserved : s2Step31EntryFBefore.reserve s2Step31EntryFFresh.toFinset=some s2Step31EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step31EntryFFresh,arenaWires]
  · norm_num [s2Step31EntryFBefore,s2Step31EntryFFresh,arenaWires]
  · simp only [s2Step31EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step31EntryF_checked : planRowResizeLog s2Step31EntryFBefore s2Step31EntryFRow 253 s2Step31EntryFFresh=
    some (s2Step31EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764],768⟩,growRow 768 s2Step31EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step31EntryFBefore s2Step31EntryFAfter s2Step31EntryFRow 253 s2Step31EntryFFresh
    s2Step31EntryF_distinct s2Step31EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step31EntryF_reserved
  have rowEq : WindowRow.mk (s2Step31EntryFRow.payload++s2Step31EntryFFresh) s2Step31EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step31EntryGBefore : Arena := s2Step31EntryFBefore
def s2Step31EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step31EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251],769⟩
def s2Step31EntryGFresh : List Wire := [787]
theorem s2Step31EntryG_distinct : (s2Step31EntryGRow.sign::s2Step31EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step31EntryG_owned : (s2Step31EntryGRow.sign::s2Step31EntryGRow.payload).toFinset⊆s2Step31EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step31EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31EntryG_reserved : s2Step31EntryGBefore.reserve s2Step31EntryGFresh.toFinset=some s2Step31EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step31EntryGFresh,arenaWires]
  · norm_num [s2Step31EntryGBefore,s2Step31EntryFBefore,s2Step31EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step31EntryGAfter,s2Step31EntryGBefore,s2Step31EntryFBefore,s2Step31EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step31EntryG_checked : planRowResizeLog s2Step31EntryGBefore s2Step31EntryGRow 253 s2Step31EntryGFresh=
    some (s2Step31EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 787],769⟩,growRow 769 s2Step31EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step31EntryGBefore s2Step31EntryGAfter s2Step31EntryGRow 253 s2Step31EntryGFresh
    s2Step31EntryG_distinct s2Step31EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step31EntryG_reserved
  have rowEq : WindowRow.mk (s2Step31EntryGRow.payload++s2Step31EntryGFresh) s2Step31EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 787],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step31EntryFvBefore : Arena := s2Step31EntryGAfter
def s2Step31EntryFvAfter : Arena := s2Step31EntryGAfter
def s2Step31EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩
def s2Step31EntryFvFresh : List Wire := []
theorem s2Step31EntryFv_distinct : (s2Step31EntryFvRow.sign::s2Step31EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step31EntryFv_owned : (s2Step31EntryFvRow.sign::s2Step31EntryFvRow.payload).toFinset⊆s2Step31EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step31EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31EntryFv_reserved : s2Step31EntryFvBefore.reserve s2Step31EntryFvFresh.toFinset=some s2Step31EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step31EntryFvFresh,arenaWires]
  · norm_num [s2Step31EntryFvBefore,s2Step31EntryGAfter,s2Step31EntryFvFresh,arenaWires]
  · simp only [s2Step31EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step31EntryFv_checked : planRowResizeLog s2Step31EntryFvBefore s2Step31EntryFvRow 29 s2Step31EntryFvFresh=
    some (s2Step31EntryFvAfter,⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩,growRow 770 s2Step31EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step31EntryFvBefore s2Step31EntryFvAfter s2Step31EntryFvRow 29 s2Step31EntryFvFresh
    s2Step31EntryFv_distinct s2Step31EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step31EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step31EntryFvRow.payload++s2Step31EntryFvFresh) s2Step31EntryFvRow.sign=⟨[255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step31EntryGvBefore : Arena := s2Step31EntryGAfter
def s2Step31EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step31EntryGvRow : WindowRow := ⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778],771⟩
def s2Step31EntryGvFresh : List Wire := [789]
theorem s2Step31EntryGv_distinct : (s2Step31EntryGvRow.sign::s2Step31EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step31EntryGv_owned : (s2Step31EntryGvRow.sign::s2Step31EntryGvRow.payload).toFinset⊆s2Step31EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step31EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31EntryGv_reserved : s2Step31EntryGvBefore.reserve s2Step31EntryGvFresh.toFinset=some s2Step31EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step31EntryGvFresh,arenaWires]
  · norm_num [s2Step31EntryGvBefore,s2Step31EntryGAfter,s2Step31EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step31EntryGvAfter,s2Step31EntryGvBefore,s2Step31EntryGAfter,s2Step31EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step31EntryGv_checked : planRowResizeLog s2Step31EntryGvBefore s2Step31EntryGvRow 29 s2Step31EntryGvFresh=
    some (s2Step31EntryGvAfter,⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 789],771⟩,growRow 771 s2Step31EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step31EntryGvBefore s2Step31EntryGvAfter s2Step31EntryGvRow 29 s2Step31EntryGvFresh
    s2Step31EntryGv_distinct s2Step31EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step31EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step31EntryGvRow.payload++s2Step31EntryGvFresh) s2Step31EntryGvRow.sign=⟨[767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 789],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

end ECDSAAdd.Arithmetic.Paper935
