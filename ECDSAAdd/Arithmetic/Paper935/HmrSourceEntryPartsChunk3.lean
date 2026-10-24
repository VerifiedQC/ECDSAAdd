import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk2

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step48EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step48EntryFAfter : Arena := s2Step48EntryFBefore
def s2Step48EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755],768⟩
def s2Step48EntryFFresh : List Wire := []
theorem s2Step48EntryF_distinct : (s2Step48EntryFRow.sign::s2Step48EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step48EntryF_owned : (s2Step48EntryFRow.sign::s2Step48EntryFRow.payload).toFinset⊆s2Step48EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step48EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48EntryF_reserved : s2Step48EntryFBefore.reserve s2Step48EntryFFresh.toFinset=some s2Step48EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step48EntryFFresh,arenaWires]
  · norm_num [s2Step48EntryFBefore,s2Step48EntryFFresh,arenaWires]
  · simp only [s2Step48EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step48EntryF_checked : planRowResizeLog s2Step48EntryFBefore s2Step48EntryFRow 244 s2Step48EntryFFresh=
    some (s2Step48EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755],768⟩,growRow 768 s2Step48EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step48EntryFBefore s2Step48EntryFAfter s2Step48EntryFRow 244 s2Step48EntryFFresh
    s2Step48EntryF_distinct s2Step48EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step48EntryF_reserved
  have rowEq : WindowRow.mk (s2Step48EntryFRow.payload++s2Step48EntryFFresh) s2Step48EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step48EntryGBefore : Arena := s2Step48EntryFBefore
def s2Step48EntryGAfter : Arena := s2Step48EntryFBefore
def s2Step48EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243],769⟩
def s2Step48EntryGFresh : List Wire := []
theorem s2Step48EntryG_distinct : (s2Step48EntryGRow.sign::s2Step48EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step48EntryG_owned : (s2Step48EntryGRow.sign::s2Step48EntryGRow.payload).toFinset⊆s2Step48EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step48EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48EntryG_reserved : s2Step48EntryGBefore.reserve s2Step48EntryGFresh.toFinset=some s2Step48EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step48EntryGFresh,arenaWires]
  · norm_num [s2Step48EntryGBefore,s2Step48EntryFBefore,s2Step48EntryGFresh,arenaWires]
  · simp only [s2Step48EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step48EntryG_checked : planRowResizeLog s2Step48EntryGBefore s2Step48EntryGRow 244 s2Step48EntryGFresh=
    some (s2Step48EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243],769⟩,growRow 769 s2Step48EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step48EntryGBefore s2Step48EntryGAfter s2Step48EntryGRow 244 s2Step48EntryGFresh
    s2Step48EntryG_distinct s2Step48EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step48EntryG_reserved
  have rowEq : WindowRow.mk (s2Step48EntryGRow.payload++s2Step48EntryGFresh) s2Step48EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step48EntryFvBefore : Arena := s2Step48EntryFBefore
def s2Step48EntryFvAfter : Arena := s2Step48EntryFBefore
def s2Step48EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩
def s2Step48EntryFvFresh : List Wire := []
theorem s2Step48EntryFv_distinct : (s2Step48EntryFvRow.sign::s2Step48EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step48EntryFv_owned : (s2Step48EntryFvRow.sign::s2Step48EntryFvRow.payload).toFinset⊆s2Step48EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step48EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48EntryFv_reserved : s2Step48EntryFvBefore.reserve s2Step48EntryFvFresh.toFinset=some s2Step48EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step48EntryFvFresh,arenaWires]
  · norm_num [s2Step48EntryFvBefore,s2Step48EntryFBefore,s2Step48EntryFvFresh,arenaWires]
  · simp only [s2Step48EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step48EntryFv_checked : planRowResizeLog s2Step48EntryFvBefore s2Step48EntryFvRow 37 s2Step48EntryFvFresh=
    some (s2Step48EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩,growRow 770 s2Step48EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step48EntryFvBefore s2Step48EntryFvAfter s2Step48EntryFvRow 37 s2Step48EntryFvFresh
    s2Step48EntryFv_distinct s2Step48EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step48EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step48EntryFvRow.payload++s2Step48EntryFvFresh) s2Step48EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step48EntryGvBefore : Arena := s2Step48EntryFBefore
def s2Step48EntryGvAfter : Arena := s2Step48EntryFBefore
def s2Step48EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩
def s2Step48EntryGvFresh : List Wire := []
theorem s2Step48EntryGv_distinct : (s2Step48EntryGvRow.sign::s2Step48EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step48EntryGv_owned : (s2Step48EntryGvRow.sign::s2Step48EntryGvRow.payload).toFinset⊆s2Step48EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step48EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48EntryGv_reserved : s2Step48EntryGvBefore.reserve s2Step48EntryGvFresh.toFinset=some s2Step48EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step48EntryGvFresh,arenaWires]
  · norm_num [s2Step48EntryGvBefore,s2Step48EntryFBefore,s2Step48EntryGvFresh,arenaWires]
  · simp only [s2Step48EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step48EntryGv_checked : planRowResizeLog s2Step48EntryGvBefore s2Step48EntryGvRow 37 s2Step48EntryGvFresh=
    some (s2Step48EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩,growRow 771 s2Step48EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step48EntryGvBefore s2Step48EntryGvAfter s2Step48EntryGvRow 37 s2Step48EntryGvFresh
    s2Step48EntryGv_distinct s2Step48EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step48EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step48EntryGvRow.payload++s2Step48EntryGvFresh) s2Step48EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step49EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step49EntryFAfter : Arena := s2Step49EntryFBefore
def s2Step49EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755],768⟩
def s2Step49EntryFFresh : List Wire := []
theorem s2Step49EntryF_distinct : (s2Step49EntryFRow.sign::s2Step49EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step49EntryF_owned : (s2Step49EntryFRow.sign::s2Step49EntryFRow.payload).toFinset⊆s2Step49EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step49EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49EntryF_reserved : s2Step49EntryFBefore.reserve s2Step49EntryFFresh.toFinset=some s2Step49EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step49EntryFFresh,arenaWires]
  · norm_num [s2Step49EntryFBefore,s2Step49EntryFFresh,arenaWires]
  · simp only [s2Step49EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step49EntryF_checked : planRowResizeLog s2Step49EntryFBefore s2Step49EntryFRow 244 s2Step49EntryFFresh=
    some (s2Step49EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755],768⟩,growRow 768 s2Step49EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step49EntryFBefore s2Step49EntryFAfter s2Step49EntryFRow 244 s2Step49EntryFFresh
    s2Step49EntryF_distinct s2Step49EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step49EntryF_reserved
  have rowEq : WindowRow.mk (s2Step49EntryFRow.payload++s2Step49EntryFFresh) s2Step49EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step49EntryGBefore : Arena := s2Step49EntryFBefore
def s2Step49EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step49EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242],769⟩
def s2Step49EntryGFresh : List Wire := [803]
theorem s2Step49EntryG_distinct : (s2Step49EntryGRow.sign::s2Step49EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step49EntryG_owned : (s2Step49EntryGRow.sign::s2Step49EntryGRow.payload).toFinset⊆s2Step49EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step49EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49EntryG_reserved : s2Step49EntryGBefore.reserve s2Step49EntryGFresh.toFinset=some s2Step49EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step49EntryGFresh,arenaWires]
  · norm_num [s2Step49EntryGBefore,s2Step49EntryFBefore,s2Step49EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step49EntryGAfter,s2Step49EntryGBefore,s2Step49EntryFBefore,s2Step49EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step49EntryG_checked : planRowResizeLog s2Step49EntryGBefore s2Step49EntryGRow 244 s2Step49EntryGFresh=
    some (s2Step49EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 803],769⟩,growRow 769 s2Step49EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step49EntryGBefore s2Step49EntryGAfter s2Step49EntryGRow 244 s2Step49EntryGFresh
    s2Step49EntryG_distinct s2Step49EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step49EntryG_reserved
  have rowEq : WindowRow.mk (s2Step49EntryGRow.payload++s2Step49EntryGFresh) s2Step49EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 803],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step49EntryFvBefore : Arena := s2Step49EntryGAfter
def s2Step49EntryFvAfter : Arena := s2Step49EntryGAfter
def s2Step49EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩
def s2Step49EntryFvFresh : List Wire := []
theorem s2Step49EntryFv_distinct : (s2Step49EntryFvRow.sign::s2Step49EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step49EntryFv_owned : (s2Step49EntryFvRow.sign::s2Step49EntryFvRow.payload).toFinset⊆s2Step49EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step49EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49EntryFv_reserved : s2Step49EntryFvBefore.reserve s2Step49EntryFvFresh.toFinset=some s2Step49EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step49EntryFvFresh,arenaWires]
  · norm_num [s2Step49EntryFvBefore,s2Step49EntryGAfter,s2Step49EntryFvFresh,arenaWires]
  · simp only [s2Step49EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step49EntryFv_checked : planRowResizeLog s2Step49EntryFvBefore s2Step49EntryFvRow 37 s2Step49EntryFvFresh=
    some (s2Step49EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩,growRow 770 s2Step49EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step49EntryFvBefore s2Step49EntryFvAfter s2Step49EntryFvRow 37 s2Step49EntryFvFresh
    s2Step49EntryFv_distinct s2Step49EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step49EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step49EntryFvRow.payload++s2Step49EntryFvFresh) s2Step49EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step49EntryGvBefore : Arena := s2Step49EntryGAfter
def s2Step49EntryGvAfter : Arena := s2Step49EntryGAfter
def s2Step49EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩
def s2Step49EntryGvFresh : List Wire := []
theorem s2Step49EntryGv_distinct : (s2Step49EntryGvRow.sign::s2Step49EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step49EntryGv_owned : (s2Step49EntryGvRow.sign::s2Step49EntryGvRow.payload).toFinset⊆s2Step49EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step49EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49EntryGv_reserved : s2Step49EntryGvBefore.reserve s2Step49EntryGvFresh.toFinset=some s2Step49EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step49EntryGvFresh,arenaWires]
  · norm_num [s2Step49EntryGvBefore,s2Step49EntryGAfter,s2Step49EntryGvFresh,arenaWires]
  · simp only [s2Step49EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step49EntryGv_checked : planRowResizeLog s2Step49EntryGvBefore s2Step49EntryGvRow 37 s2Step49EntryGvFresh=
    some (s2Step49EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩,growRow 771 s2Step49EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step49EntryGvBefore s2Step49EntryGvAfter s2Step49EntryGvRow 37 s2Step49EntryGvFresh
    s2Step49EntryGv_distinct s2Step49EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step49EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step49EntryGvRow.payload++s2Step49EntryGvFresh) s2Step49EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step50EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step50EntryFAfter : Arena := s2Step50EntryFBefore
def s2Step50EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754],768⟩
def s2Step50EntryFFresh : List Wire := []
theorem s2Step50EntryF_distinct : (s2Step50EntryFRow.sign::s2Step50EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step50EntryF_owned : (s2Step50EntryFRow.sign::s2Step50EntryFRow.payload).toFinset⊆s2Step50EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step50EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50EntryF_reserved : s2Step50EntryFBefore.reserve s2Step50EntryFFresh.toFinset=some s2Step50EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step50EntryFFresh,arenaWires]
  · norm_num [s2Step50EntryFBefore,s2Step50EntryFFresh,arenaWires]
  · simp only [s2Step50EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step50EntryF_checked : planRowResizeLog s2Step50EntryFBefore s2Step50EntryFRow 243 s2Step50EntryFFresh=
    some (s2Step50EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754],768⟩,growRow 768 s2Step50EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step50EntryFBefore s2Step50EntryFAfter s2Step50EntryFRow 243 s2Step50EntryFFresh
    s2Step50EntryF_distinct s2Step50EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step50EntryF_reserved
  have rowEq : WindowRow.mk (s2Step50EntryFRow.payload++s2Step50EntryFFresh) s2Step50EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step50EntryGBefore : Arena := s2Step50EntryFBefore
def s2Step50EntryGAfter : Arena := s2Step50EntryFBefore
def s2Step50EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242],769⟩
def s2Step50EntryGFresh : List Wire := []
theorem s2Step50EntryG_distinct : (s2Step50EntryGRow.sign::s2Step50EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step50EntryG_owned : (s2Step50EntryGRow.sign::s2Step50EntryGRow.payload).toFinset⊆s2Step50EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step50EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50EntryG_reserved : s2Step50EntryGBefore.reserve s2Step50EntryGFresh.toFinset=some s2Step50EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step50EntryGFresh,arenaWires]
  · norm_num [s2Step50EntryGBefore,s2Step50EntryFBefore,s2Step50EntryGFresh,arenaWires]
  · simp only [s2Step50EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step50EntryG_checked : planRowResizeLog s2Step50EntryGBefore s2Step50EntryGRow 243 s2Step50EntryGFresh=
    some (s2Step50EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242],769⟩,growRow 769 s2Step50EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step50EntryGBefore s2Step50EntryGAfter s2Step50EntryGRow 243 s2Step50EntryGFresh
    s2Step50EntryG_distinct s2Step50EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step50EntryG_reserved
  have rowEq : WindowRow.mk (s2Step50EntryGRow.payload++s2Step50EntryGFresh) s2Step50EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step50EntryFvBefore : Arena := s2Step50EntryFBefore
def s2Step50EntryFvAfter : Arena := s2Step50EntryFBefore
def s2Step50EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806],770⟩
def s2Step50EntryFvFresh : List Wire := []
theorem s2Step50EntryFv_distinct : (s2Step50EntryFvRow.sign::s2Step50EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step50EntryFv_owned : (s2Step50EntryFvRow.sign::s2Step50EntryFvRow.payload).toFinset⊆s2Step50EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step50EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50EntryFv_reserved : s2Step50EntryFvBefore.reserve s2Step50EntryFvFresh.toFinset=some s2Step50EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step50EntryFvFresh,arenaWires]
  · norm_num [s2Step50EntryFvBefore,s2Step50EntryFBefore,s2Step50EntryFvFresh,arenaWires]
  · simp only [s2Step50EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step50EntryFv_checked : planRowResizeLog s2Step50EntryFvBefore s2Step50EntryFvRow 38 s2Step50EntryFvFresh=
    some (s2Step50EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806],770⟩,growRow 770 s2Step50EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step50EntryFvBefore s2Step50EntryFvAfter s2Step50EntryFvRow 38 s2Step50EntryFvFresh
    s2Step50EntryFv_distinct s2Step50EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step50EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step50EntryFvRow.payload++s2Step50EntryFvFresh) s2Step50EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step50EntryGvBefore : Arena := s2Step50EntryFBefore
def s2Step50EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step50EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩
def s2Step50EntryGvFresh : List Wire := [808]
theorem s2Step50EntryGv_distinct : (s2Step50EntryGvRow.sign::s2Step50EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step50EntryGv_owned : (s2Step50EntryGvRow.sign::s2Step50EntryGvRow.payload).toFinset⊆s2Step50EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step50EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50EntryGv_reserved : s2Step50EntryGvBefore.reserve s2Step50EntryGvFresh.toFinset=some s2Step50EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step50EntryGvFresh,arenaWires]
  · norm_num [s2Step50EntryGvBefore,s2Step50EntryFBefore,s2Step50EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step50EntryGvAfter,s2Step50EntryGvBefore,s2Step50EntryFBefore,s2Step50EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step50EntryGv_checked : planRowResizeLog s2Step50EntryGvBefore s2Step50EntryGvRow 38 s2Step50EntryGvFresh=
    some (s2Step50EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 808],771⟩,growRow 771 s2Step50EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step50EntryGvBefore s2Step50EntryGvAfter s2Step50EntryGvRow 38 s2Step50EntryGvFresh
    s2Step50EntryGv_distinct s2Step50EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step50EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step50EntryGvRow.payload++s2Step50EntryGvFresh) s2Step50EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 808],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step51EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step51EntryFAfter : Arena := s2Step51EntryFBefore
def s2Step51EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754],768⟩
def s2Step51EntryFFresh : List Wire := []
theorem s2Step51EntryF_distinct : (s2Step51EntryFRow.sign::s2Step51EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step51EntryF_owned : (s2Step51EntryFRow.sign::s2Step51EntryFRow.payload).toFinset⊆s2Step51EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step51EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51EntryF_reserved : s2Step51EntryFBefore.reserve s2Step51EntryFFresh.toFinset=some s2Step51EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step51EntryFFresh,arenaWires]
  · norm_num [s2Step51EntryFBefore,s2Step51EntryFFresh,arenaWires]
  · simp only [s2Step51EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step51EntryF_checked : planRowResizeLog s2Step51EntryFBefore s2Step51EntryFRow 243 s2Step51EntryFFresh=
    some (s2Step51EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754],768⟩,growRow 768 s2Step51EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step51EntryFBefore s2Step51EntryFAfter s2Step51EntryFRow 243 s2Step51EntryFFresh
    s2Step51EntryF_distinct s2Step51EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step51EntryF_reserved
  have rowEq : WindowRow.mk (s2Step51EntryFRow.payload++s2Step51EntryFFresh) s2Step51EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step51EntryGBefore : Arena := s2Step51EntryFBefore
def s2Step51EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step51EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241],769⟩
def s2Step51EntryGFresh : List Wire := [807]
theorem s2Step51EntryG_distinct : (s2Step51EntryGRow.sign::s2Step51EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step51EntryG_owned : (s2Step51EntryGRow.sign::s2Step51EntryGRow.payload).toFinset⊆s2Step51EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step51EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51EntryG_reserved : s2Step51EntryGBefore.reserve s2Step51EntryGFresh.toFinset=some s2Step51EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step51EntryGFresh,arenaWires]
  · norm_num [s2Step51EntryGBefore,s2Step51EntryFBefore,s2Step51EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step51EntryGAfter,s2Step51EntryGBefore,s2Step51EntryFBefore,s2Step51EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step51EntryG_checked : planRowResizeLog s2Step51EntryGBefore s2Step51EntryGRow 243 s2Step51EntryGFresh=
    some (s2Step51EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 807],769⟩,growRow 769 s2Step51EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step51EntryGBefore s2Step51EntryGAfter s2Step51EntryGRow 243 s2Step51EntryGFresh
    s2Step51EntryG_distinct s2Step51EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step51EntryG_reserved
  have rowEq : WindowRow.mk (s2Step51EntryGRow.payload++s2Step51EntryGFresh) s2Step51EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 807],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step51EntryFvBefore : Arena := s2Step51EntryGAfter
def s2Step51EntryFvAfter : Arena := s2Step51EntryGAfter
def s2Step51EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806],770⟩
def s2Step51EntryFvFresh : List Wire := []
theorem s2Step51EntryFv_distinct : (s2Step51EntryFvRow.sign::s2Step51EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step51EntryFv_owned : (s2Step51EntryFvRow.sign::s2Step51EntryFvRow.payload).toFinset⊆s2Step51EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step51EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51EntryFv_reserved : s2Step51EntryFvBefore.reserve s2Step51EntryFvFresh.toFinset=some s2Step51EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step51EntryFvFresh,arenaWires]
  · norm_num [s2Step51EntryFvBefore,s2Step51EntryGAfter,s2Step51EntryFvFresh,arenaWires]
  · simp only [s2Step51EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step51EntryFv_checked : planRowResizeLog s2Step51EntryFvBefore s2Step51EntryFvRow 38 s2Step51EntryFvFresh=
    some (s2Step51EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806],770⟩,growRow 770 s2Step51EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step51EntryFvBefore s2Step51EntryFvAfter s2Step51EntryFvRow 38 s2Step51EntryFvFresh
    s2Step51EntryFv_distinct s2Step51EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step51EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step51EntryFvRow.payload++s2Step51EntryFvFresh) s2Step51EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step51EntryGvBefore : Arena := s2Step51EntryGAfter
def s2Step51EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step51EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801],771⟩
def s2Step51EntryGvFresh : List Wire := [798]
theorem s2Step51EntryGv_distinct : (s2Step51EntryGvRow.sign::s2Step51EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step51EntryGv_owned : (s2Step51EntryGvRow.sign::s2Step51EntryGvRow.payload).toFinset⊆s2Step51EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step51EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51EntryGv_reserved : s2Step51EntryGvBefore.reserve s2Step51EntryGvFresh.toFinset=some s2Step51EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step51EntryGvFresh,arenaWires]
  · norm_num [s2Step51EntryGvBefore,s2Step51EntryGAfter,s2Step51EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step51EntryGvAfter,s2Step51EntryGvBefore,s2Step51EntryGAfter,s2Step51EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step51EntryGv_checked : planRowResizeLog s2Step51EntryGvBefore s2Step51EntryGvRow 38 s2Step51EntryGvFresh=
    some (s2Step51EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798],771⟩,growRow 771 s2Step51EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step51EntryGvBefore s2Step51EntryGvAfter s2Step51EntryGvRow 38 s2Step51EntryGvFresh
    s2Step51EntryGv_distinct s2Step51EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step51EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step51EntryGvRow.payload++s2Step51EntryGvFresh) s2Step51EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step52EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step52EntryFAfter : Arena := s2Step52EntryFBefore
def s2Step52EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753],768⟩
def s2Step52EntryFFresh : List Wire := []
theorem s2Step52EntryF_distinct : (s2Step52EntryFRow.sign::s2Step52EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step52EntryF_owned : (s2Step52EntryFRow.sign::s2Step52EntryFRow.payload).toFinset⊆s2Step52EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step52EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52EntryF_reserved : s2Step52EntryFBefore.reserve s2Step52EntryFFresh.toFinset=some s2Step52EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step52EntryFFresh,arenaWires]
  · norm_num [s2Step52EntryFBefore,s2Step52EntryFFresh,arenaWires]
  · simp only [s2Step52EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step52EntryF_checked : planRowResizeLog s2Step52EntryFBefore s2Step52EntryFRow 242 s2Step52EntryFFresh=
    some (s2Step52EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753],768⟩,growRow 768 s2Step52EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step52EntryFBefore s2Step52EntryFAfter s2Step52EntryFRow 242 s2Step52EntryFFresh
    s2Step52EntryF_distinct s2Step52EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step52EntryF_reserved
  have rowEq : WindowRow.mk (s2Step52EntryFRow.payload++s2Step52EntryFFresh) s2Step52EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step52EntryGBefore : Arena := s2Step52EntryFBefore
def s2Step52EntryGAfter : Arena := s2Step52EntryFBefore
def s2Step52EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241],769⟩
def s2Step52EntryGFresh : List Wire := []
theorem s2Step52EntryG_distinct : (s2Step52EntryGRow.sign::s2Step52EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step52EntryG_owned : (s2Step52EntryGRow.sign::s2Step52EntryGRow.payload).toFinset⊆s2Step52EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step52EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52EntryG_reserved : s2Step52EntryGBefore.reserve s2Step52EntryGFresh.toFinset=some s2Step52EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step52EntryGFresh,arenaWires]
  · norm_num [s2Step52EntryGBefore,s2Step52EntryFBefore,s2Step52EntryGFresh,arenaWires]
  · simp only [s2Step52EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step52EntryG_checked : planRowResizeLog s2Step52EntryGBefore s2Step52EntryGRow 242 s2Step52EntryGFresh=
    some (s2Step52EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241],769⟩,growRow 769 s2Step52EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step52EntryGBefore s2Step52EntryGAfter s2Step52EntryGRow 242 s2Step52EntryGFresh
    s2Step52EntryG_distinct s2Step52EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step52EntryG_reserved
  have rowEq : WindowRow.mk (s2Step52EntryGRow.payload++s2Step52EntryGFresh) s2Step52EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step52EntryFvBefore : Arena := s2Step52EntryFBefore
def s2Step52EntryFvAfter : Arena := s2Step52EntryFBefore
def s2Step52EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805],770⟩
def s2Step52EntryFvFresh : List Wire := []
theorem s2Step52EntryFv_distinct : (s2Step52EntryFvRow.sign::s2Step52EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step52EntryFv_owned : (s2Step52EntryFvRow.sign::s2Step52EntryFvRow.payload).toFinset⊆s2Step52EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step52EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52EntryFv_reserved : s2Step52EntryFvBefore.reserve s2Step52EntryFvFresh.toFinset=some s2Step52EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step52EntryFvFresh,arenaWires]
  · norm_num [s2Step52EntryFvBefore,s2Step52EntryFBefore,s2Step52EntryFvFresh,arenaWires]
  · simp only [s2Step52EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step52EntryFv_checked : planRowResizeLog s2Step52EntryFvBefore s2Step52EntryFvRow 39 s2Step52EntryFvFresh=
    some (s2Step52EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805],770⟩,growRow 770 s2Step52EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step52EntryFvBefore s2Step52EntryFvAfter s2Step52EntryFvRow 39 s2Step52EntryFvFresh
    s2Step52EntryFv_distinct s2Step52EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step52EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step52EntryFvRow.payload++s2Step52EntryFvFresh) s2Step52EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step52EntryGvBefore : Arena := s2Step52EntryFBefore
def s2Step52EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step52EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798],771⟩
def s2Step52EntryGvFresh : List Wire := [808]
theorem s2Step52EntryGv_distinct : (s2Step52EntryGvRow.sign::s2Step52EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step52EntryGv_owned : (s2Step52EntryGvRow.sign::s2Step52EntryGvRow.payload).toFinset⊆s2Step52EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step52EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52EntryGv_reserved : s2Step52EntryGvBefore.reserve s2Step52EntryGvFresh.toFinset=some s2Step52EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step52EntryGvFresh,arenaWires]
  · norm_num [s2Step52EntryGvBefore,s2Step52EntryFBefore,s2Step52EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step52EntryGvAfter,s2Step52EntryGvBefore,s2Step52EntryFBefore,s2Step52EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step52EntryGv_checked : planRowResizeLog s2Step52EntryGvBefore s2Step52EntryGvRow 39 s2Step52EntryGvFresh=
    some (s2Step52EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 808],771⟩,growRow 771 s2Step52EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step52EntryGvBefore s2Step52EntryGvAfter s2Step52EntryGvRow 39 s2Step52EntryGvFresh
    s2Step52EntryGv_distinct s2Step52EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step52EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step52EntryGvRow.payload++s2Step52EntryGvFresh) s2Step52EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 808],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step53EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step53EntryFAfter : Arena := s2Step53EntryFBefore
def s2Step53EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752],768⟩
def s2Step53EntryFFresh : List Wire := []
theorem s2Step53EntryF_distinct : (s2Step53EntryFRow.sign::s2Step53EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step53EntryF_owned : (s2Step53EntryFRow.sign::s2Step53EntryFRow.payload).toFinset⊆s2Step53EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step53EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53EntryF_reserved : s2Step53EntryFBefore.reserve s2Step53EntryFFresh.toFinset=some s2Step53EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step53EntryFFresh,arenaWires]
  · norm_num [s2Step53EntryFBefore,s2Step53EntryFFresh,arenaWires]
  · simp only [s2Step53EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step53EntryF_checked : planRowResizeLog s2Step53EntryFBefore s2Step53EntryFRow 241 s2Step53EntryFFresh=
    some (s2Step53EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752],768⟩,growRow 768 s2Step53EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step53EntryFBefore s2Step53EntryFAfter s2Step53EntryFRow 241 s2Step53EntryFFresh
    s2Step53EntryF_distinct s2Step53EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step53EntryF_reserved
  have rowEq : WindowRow.mk (s2Step53EntryFRow.payload++s2Step53EntryFFresh) s2Step53EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step53EntryGBefore : Arena := s2Step53EntryFBefore
def s2Step53EntryGAfter : Arena := s2Step53EntryFBefore
def s2Step53EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240],769⟩
def s2Step53EntryGFresh : List Wire := []
theorem s2Step53EntryG_distinct : (s2Step53EntryGRow.sign::s2Step53EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step53EntryG_owned : (s2Step53EntryGRow.sign::s2Step53EntryGRow.payload).toFinset⊆s2Step53EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step53EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53EntryG_reserved : s2Step53EntryGBefore.reserve s2Step53EntryGFresh.toFinset=some s2Step53EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step53EntryGFresh,arenaWires]
  · norm_num [s2Step53EntryGBefore,s2Step53EntryFBefore,s2Step53EntryGFresh,arenaWires]
  · simp only [s2Step53EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step53EntryG_checked : planRowResizeLog s2Step53EntryGBefore s2Step53EntryGRow 241 s2Step53EntryGFresh=
    some (s2Step53EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240],769⟩,growRow 769 s2Step53EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step53EntryGBefore s2Step53EntryGAfter s2Step53EntryGRow 241 s2Step53EntryGFresh
    s2Step53EntryG_distinct s2Step53EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step53EntryG_reserved
  have rowEq : WindowRow.mk (s2Step53EntryGRow.payload++s2Step53EntryGFresh) s2Step53EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step53EntryFvBefore : Arena := s2Step53EntryFBefore
def s2Step53EntryFvAfter : Arena := s2Step53EntryFBefore
def s2Step53EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805],770⟩
def s2Step53EntryFvFresh : List Wire := []
theorem s2Step53EntryFv_distinct : (s2Step53EntryFvRow.sign::s2Step53EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step53EntryFv_owned : (s2Step53EntryFvRow.sign::s2Step53EntryFvRow.payload).toFinset⊆s2Step53EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step53EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53EntryFv_reserved : s2Step53EntryFvBefore.reserve s2Step53EntryFvFresh.toFinset=some s2Step53EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step53EntryFvFresh,arenaWires]
  · norm_num [s2Step53EntryFvBefore,s2Step53EntryFBefore,s2Step53EntryFvFresh,arenaWires]
  · simp only [s2Step53EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step53EntryFv_checked : planRowResizeLog s2Step53EntryFvBefore s2Step53EntryFvRow 39 s2Step53EntryFvFresh=
    some (s2Step53EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805],770⟩,growRow 770 s2Step53EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step53EntryFvBefore s2Step53EntryFvAfter s2Step53EntryFvRow 39 s2Step53EntryFvFresh
    s2Step53EntryFv_distinct s2Step53EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step53EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step53EntryFvRow.payload++s2Step53EntryFvFresh) s2Step53EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step53EntryGvBefore : Arena := s2Step53EntryFBefore
def s2Step53EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step53EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798],771⟩
def s2Step53EntryGvFresh : List Wire := [809]
theorem s2Step53EntryGv_distinct : (s2Step53EntryGvRow.sign::s2Step53EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step53EntryGv_owned : (s2Step53EntryGvRow.sign::s2Step53EntryGvRow.payload).toFinset⊆s2Step53EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step53EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53EntryGv_reserved : s2Step53EntryGvBefore.reserve s2Step53EntryGvFresh.toFinset=some s2Step53EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step53EntryGvFresh,arenaWires]
  · norm_num [s2Step53EntryGvBefore,s2Step53EntryFBefore,s2Step53EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step53EntryGvAfter,s2Step53EntryGvBefore,s2Step53EntryFBefore,s2Step53EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step53EntryGv_checked : planRowResizeLog s2Step53EntryGvBefore s2Step53EntryGvRow 39 s2Step53EntryGvFresh=
    some (s2Step53EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809],771⟩,growRow 771 s2Step53EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step53EntryGvBefore s2Step53EntryGvAfter s2Step53EntryGvRow 39 s2Step53EntryGvFresh
    s2Step53EntryGv_distinct s2Step53EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step53EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step53EntryGvRow.payload++s2Step53EntryGvFresh) s2Step53EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step54EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step54EntryFAfter : Arena := s2Step54EntryFBefore
def s2Step54EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752],768⟩
def s2Step54EntryFFresh : List Wire := []
theorem s2Step54EntryF_distinct : (s2Step54EntryFRow.sign::s2Step54EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step54EntryF_owned : (s2Step54EntryFRow.sign::s2Step54EntryFRow.payload).toFinset⊆s2Step54EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step54EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54EntryF_reserved : s2Step54EntryFBefore.reserve s2Step54EntryFFresh.toFinset=some s2Step54EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step54EntryFFresh,arenaWires]
  · norm_num [s2Step54EntryFBefore,s2Step54EntryFFresh,arenaWires]
  · simp only [s2Step54EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step54EntryF_checked : planRowResizeLog s2Step54EntryFBefore s2Step54EntryFRow 241 s2Step54EntryFFresh=
    some (s2Step54EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752],768⟩,growRow 768 s2Step54EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step54EntryFBefore s2Step54EntryFAfter s2Step54EntryFRow 241 s2Step54EntryFFresh
    s2Step54EntryF_distinct s2Step54EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step54EntryF_reserved
  have rowEq : WindowRow.mk (s2Step54EntryFRow.payload++s2Step54EntryFFresh) s2Step54EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step54EntryGBefore : Arena := s2Step54EntryFBefore
def s2Step54EntryGAfter : Arena := s2Step54EntryFBefore
def s2Step54EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240],769⟩
def s2Step54EntryGFresh : List Wire := []
theorem s2Step54EntryG_distinct : (s2Step54EntryGRow.sign::s2Step54EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step54EntryG_owned : (s2Step54EntryGRow.sign::s2Step54EntryGRow.payload).toFinset⊆s2Step54EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step54EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54EntryG_reserved : s2Step54EntryGBefore.reserve s2Step54EntryGFresh.toFinset=some s2Step54EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step54EntryGFresh,arenaWires]
  · norm_num [s2Step54EntryGBefore,s2Step54EntryFBefore,s2Step54EntryGFresh,arenaWires]
  · simp only [s2Step54EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step54EntryG_checked : planRowResizeLog s2Step54EntryGBefore s2Step54EntryGRow 241 s2Step54EntryGFresh=
    some (s2Step54EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240],769⟩,growRow 769 s2Step54EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step54EntryGBefore s2Step54EntryGAfter s2Step54EntryGRow 241 s2Step54EntryGFresh
    s2Step54EntryG_distinct s2Step54EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step54EntryG_reserved
  have rowEq : WindowRow.mk (s2Step54EntryGRow.payload++s2Step54EntryGFresh) s2Step54EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step54EntryFvBefore : Arena := s2Step54EntryFBefore
def s2Step54EntryFvAfter : Arena := s2Step54EntryFBefore
def s2Step54EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803],770⟩
def s2Step54EntryFvFresh : List Wire := []
theorem s2Step54EntryFv_distinct : (s2Step54EntryFvRow.sign::s2Step54EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step54EntryFv_owned : (s2Step54EntryFvRow.sign::s2Step54EntryFvRow.payload).toFinset⊆s2Step54EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step54EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54EntryFv_reserved : s2Step54EntryFvBefore.reserve s2Step54EntryFvFresh.toFinset=some s2Step54EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step54EntryFvFresh,arenaWires]
  · norm_num [s2Step54EntryFvBefore,s2Step54EntryFBefore,s2Step54EntryFvFresh,arenaWires]
  · simp only [s2Step54EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step54EntryFv_checked : planRowResizeLog s2Step54EntryFvBefore s2Step54EntryFvRow 40 s2Step54EntryFvFresh=
    some (s2Step54EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803],770⟩,growRow 770 s2Step54EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step54EntryFvBefore s2Step54EntryFvAfter s2Step54EntryFvRow 40 s2Step54EntryFvFresh
    s2Step54EntryFv_distinct s2Step54EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step54EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step54EntryFvRow.payload++s2Step54EntryFvFresh) s2Step54EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step54EntryGvBefore : Arena := s2Step54EntryFBefore
def s2Step54EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step54EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809],771⟩
def s2Step54EntryGvFresh : List Wire := [811]
theorem s2Step54EntryGv_distinct : (s2Step54EntryGvRow.sign::s2Step54EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step54EntryGv_owned : (s2Step54EntryGvRow.sign::s2Step54EntryGvRow.payload).toFinset⊆s2Step54EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step54EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54EntryGv_reserved : s2Step54EntryGvBefore.reserve s2Step54EntryGvFresh.toFinset=some s2Step54EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step54EntryGvFresh,arenaWires]
  · norm_num [s2Step54EntryGvBefore,s2Step54EntryFBefore,s2Step54EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step54EntryGvAfter,s2Step54EntryGvBefore,s2Step54EntryFBefore,s2Step54EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step54EntryGv_checked : planRowResizeLog s2Step54EntryGvBefore s2Step54EntryGvRow 40 s2Step54EntryGvFresh=
    some (s2Step54EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811],771⟩,growRow 771 s2Step54EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step54EntryGvBefore s2Step54EntryGvAfter s2Step54EntryGvRow 40 s2Step54EntryGvFresh
    s2Step54EntryGv_distinct s2Step54EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step54EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step54EntryGvRow.payload++s2Step54EntryGvFresh) s2Step54EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step55EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step55EntryFAfter : Arena := s2Step55EntryFBefore
def s2Step55EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752],768⟩
def s2Step55EntryFFresh : List Wire := []
theorem s2Step55EntryF_distinct : (s2Step55EntryFRow.sign::s2Step55EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step55EntryF_owned : (s2Step55EntryFRow.sign::s2Step55EntryFRow.payload).toFinset⊆s2Step55EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step55EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55EntryF_reserved : s2Step55EntryFBefore.reserve s2Step55EntryFFresh.toFinset=some s2Step55EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step55EntryFFresh,arenaWires]
  · norm_num [s2Step55EntryFBefore,s2Step55EntryFFresh,arenaWires]
  · simp only [s2Step55EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step55EntryF_checked : planRowResizeLog s2Step55EntryFBefore s2Step55EntryFRow 241 s2Step55EntryFFresh=
    some (s2Step55EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752],768⟩,growRow 768 s2Step55EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step55EntryFBefore s2Step55EntryFAfter s2Step55EntryFRow 241 s2Step55EntryFFresh
    s2Step55EntryF_distinct s2Step55EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step55EntryF_reserved
  have rowEq : WindowRow.mk (s2Step55EntryFRow.payload++s2Step55EntryFFresh) s2Step55EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step55EntryGBefore : Arena := s2Step55EntryFBefore
def s2Step55EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step55EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239],769⟩
def s2Step55EntryGFresh : List Wire := [807]
theorem s2Step55EntryG_distinct : (s2Step55EntryGRow.sign::s2Step55EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step55EntryG_owned : (s2Step55EntryGRow.sign::s2Step55EntryGRow.payload).toFinset⊆s2Step55EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step55EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55EntryG_reserved : s2Step55EntryGBefore.reserve s2Step55EntryGFresh.toFinset=some s2Step55EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step55EntryGFresh,arenaWires]
  · norm_num [s2Step55EntryGBefore,s2Step55EntryFBefore,s2Step55EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step55EntryGAfter,s2Step55EntryGBefore,s2Step55EntryFBefore,s2Step55EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step55EntryG_checked : planRowResizeLog s2Step55EntryGBefore s2Step55EntryGRow 241 s2Step55EntryGFresh=
    some (s2Step55EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 807],769⟩,growRow 769 s2Step55EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step55EntryGBefore s2Step55EntryGAfter s2Step55EntryGRow 241 s2Step55EntryGFresh
    s2Step55EntryG_distinct s2Step55EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step55EntryG_reserved
  have rowEq : WindowRow.mk (s2Step55EntryGRow.payload++s2Step55EntryGFresh) s2Step55EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 807],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step55EntryFvBefore : Arena := s2Step55EntryGAfter
def s2Step55EntryFvAfter : Arena := s2Step55EntryGAfter
def s2Step55EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 790],770⟩
def s2Step55EntryFvFresh : List Wire := []
theorem s2Step55EntryFv_distinct : (s2Step55EntryFvRow.sign::s2Step55EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step55EntryFv_owned : (s2Step55EntryFvRow.sign::s2Step55EntryFvRow.payload).toFinset⊆s2Step55EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step55EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55EntryFv_reserved : s2Step55EntryFvBefore.reserve s2Step55EntryFvFresh.toFinset=some s2Step55EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step55EntryFvFresh,arenaWires]
  · norm_num [s2Step55EntryFvBefore,s2Step55EntryGAfter,s2Step55EntryFvFresh,arenaWires]
  · simp only [s2Step55EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step55EntryFv_checked : planRowResizeLog s2Step55EntryFvBefore s2Step55EntryFvRow 41 s2Step55EntryFvFresh=
    some (s2Step55EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 790],770⟩,growRow 770 s2Step55EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step55EntryFvBefore s2Step55EntryFvAfter s2Step55EntryFvRow 41 s2Step55EntryFvFresh
    s2Step55EntryFv_distinct s2Step55EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step55EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step55EntryFvRow.payload++s2Step55EntryFvFresh) s2Step55EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step55EntryGvBefore : Arena := s2Step55EntryGAfter
def s2Step55EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step55EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811],771⟩
def s2Step55EntryGvFresh : List Wire := [810]
theorem s2Step55EntryGv_distinct : (s2Step55EntryGvRow.sign::s2Step55EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step55EntryGv_owned : (s2Step55EntryGvRow.sign::s2Step55EntryGvRow.payload).toFinset⊆s2Step55EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step55EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55EntryGv_reserved : s2Step55EntryGvBefore.reserve s2Step55EntryGvFresh.toFinset=some s2Step55EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step55EntryGvFresh,arenaWires]
  · norm_num [s2Step55EntryGvBefore,s2Step55EntryGAfter,s2Step55EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step55EntryGvAfter,s2Step55EntryGvBefore,s2Step55EntryGAfter,s2Step55EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step55EntryGv_checked : planRowResizeLog s2Step55EntryGvBefore s2Step55EntryGvRow 41 s2Step55EntryGvFresh=
    some (s2Step55EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩,growRow 771 s2Step55EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step55EntryGvBefore s2Step55EntryGvAfter s2Step55EntryGvRow 41 s2Step55EntryGvFresh
    s2Step55EntryGv_distinct s2Step55EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step55EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step55EntryGvRow.payload++s2Step55EntryGvFresh) s2Step55EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step56EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step56EntryFAfter : Arena := s2Step56EntryFBefore
def s2Step56EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751],768⟩
def s2Step56EntryFFresh : List Wire := []
theorem s2Step56EntryF_distinct : (s2Step56EntryFRow.sign::s2Step56EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step56EntryF_owned : (s2Step56EntryFRow.sign::s2Step56EntryFRow.payload).toFinset⊆s2Step56EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step56EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56EntryF_reserved : s2Step56EntryFBefore.reserve s2Step56EntryFFresh.toFinset=some s2Step56EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step56EntryFFresh,arenaWires]
  · norm_num [s2Step56EntryFBefore,s2Step56EntryFFresh,arenaWires]
  · simp only [s2Step56EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step56EntryF_checked : planRowResizeLog s2Step56EntryFBefore s2Step56EntryFRow 240 s2Step56EntryFFresh=
    some (s2Step56EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751],768⟩,growRow 768 s2Step56EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step56EntryFBefore s2Step56EntryFAfter s2Step56EntryFRow 240 s2Step56EntryFFresh
    s2Step56EntryF_distinct s2Step56EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step56EntryF_reserved
  have rowEq : WindowRow.mk (s2Step56EntryFRow.payload++s2Step56EntryFFresh) s2Step56EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step56EntryGBefore : Arena := s2Step56EntryFBefore
def s2Step56EntryGAfter : Arena := s2Step56EntryFBefore
def s2Step56EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239],769⟩
def s2Step56EntryGFresh : List Wire := []
theorem s2Step56EntryG_distinct : (s2Step56EntryGRow.sign::s2Step56EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step56EntryG_owned : (s2Step56EntryGRow.sign::s2Step56EntryGRow.payload).toFinset⊆s2Step56EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step56EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56EntryG_reserved : s2Step56EntryGBefore.reserve s2Step56EntryGFresh.toFinset=some s2Step56EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step56EntryGFresh,arenaWires]
  · norm_num [s2Step56EntryGBefore,s2Step56EntryFBefore,s2Step56EntryGFresh,arenaWires]
  · simp only [s2Step56EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step56EntryG_checked : planRowResizeLog s2Step56EntryGBefore s2Step56EntryGRow 240 s2Step56EntryGFresh=
    some (s2Step56EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239],769⟩,growRow 769 s2Step56EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step56EntryGBefore s2Step56EntryGAfter s2Step56EntryGRow 240 s2Step56EntryGFresh
    s2Step56EntryG_distinct s2Step56EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step56EntryG_reserved
  have rowEq : WindowRow.mk (s2Step56EntryGRow.payload++s2Step56EntryGFresh) s2Step56EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step56EntryFvBefore : Arena := s2Step56EntryFBefore
def s2Step56EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step56EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803],770⟩
def s2Step56EntryFvFresh : List Wire := [787]
theorem s2Step56EntryFv_distinct : (s2Step56EntryFvRow.sign::s2Step56EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step56EntryFv_owned : (s2Step56EntryFvRow.sign::s2Step56EntryFvRow.payload).toFinset⊆s2Step56EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step56EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56EntryFv_reserved : s2Step56EntryFvBefore.reserve s2Step56EntryFvFresh.toFinset=some s2Step56EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step56EntryFvFresh,arenaWires]
  · norm_num [s2Step56EntryFvBefore,s2Step56EntryFBefore,s2Step56EntryFvFresh,arenaWires]
  · ext q
    simp only [s2Step56EntryFvAfter,s2Step56EntryFvBefore,s2Step56EntryFBefore,s2Step56EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step56EntryFv_checked : planRowResizeLog s2Step56EntryFvBefore s2Step56EntryFvRow 41 s2Step56EntryFvFresh=
    some (s2Step56EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787],770⟩,growRow 770 s2Step56EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step56EntryFvBefore s2Step56EntryFvAfter s2Step56EntryFvRow 41 s2Step56EntryFvFresh
    s2Step56EntryFv_distinct s2Step56EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step56EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step56EntryFvRow.payload++s2Step56EntryFvFresh) s2Step56EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step56EntryGvBefore : Arena := s2Step56EntryFvAfter
def s2Step56EntryGvAfter : Arena := s2Step56EntryFvAfter
def s2Step56EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩
def s2Step56EntryGvFresh : List Wire := []
theorem s2Step56EntryGv_distinct : (s2Step56EntryGvRow.sign::s2Step56EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step56EntryGv_owned : (s2Step56EntryGvRow.sign::s2Step56EntryGvRow.payload).toFinset⊆s2Step56EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step56EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56EntryGv_reserved : s2Step56EntryGvBefore.reserve s2Step56EntryGvFresh.toFinset=some s2Step56EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step56EntryGvFresh,arenaWires]
  · norm_num [s2Step56EntryGvBefore,s2Step56EntryFvAfter,s2Step56EntryGvFresh,arenaWires]
  · simp only [s2Step56EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step56EntryGv_checked : planRowResizeLog s2Step56EntryGvBefore s2Step56EntryGvRow 41 s2Step56EntryGvFresh=
    some (s2Step56EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩,growRow 771 s2Step56EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step56EntryGvBefore s2Step56EntryGvAfter s2Step56EntryGvRow 41 s2Step56EntryGvFresh
    s2Step56EntryGv_distinct s2Step56EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step56EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step56EntryGvRow.payload++s2Step56EntryGvFresh) s2Step56EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step57EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step57EntryFAfter : Arena := s2Step57EntryFBefore
def s2Step57EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751],768⟩
def s2Step57EntryFFresh : List Wire := []
theorem s2Step57EntryF_distinct : (s2Step57EntryFRow.sign::s2Step57EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step57EntryF_owned : (s2Step57EntryFRow.sign::s2Step57EntryFRow.payload).toFinset⊆s2Step57EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step57EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57EntryF_reserved : s2Step57EntryFBefore.reserve s2Step57EntryFFresh.toFinset=some s2Step57EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step57EntryFFresh,arenaWires]
  · norm_num [s2Step57EntryFBefore,s2Step57EntryFFresh,arenaWires]
  · simp only [s2Step57EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step57EntryF_checked : planRowResizeLog s2Step57EntryFBefore s2Step57EntryFRow 240 s2Step57EntryFFresh=
    some (s2Step57EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751],768⟩,growRow 768 s2Step57EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step57EntryFBefore s2Step57EntryFAfter s2Step57EntryFRow 240 s2Step57EntryFFresh
    s2Step57EntryF_distinct s2Step57EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step57EntryF_reserved
  have rowEq : WindowRow.mk (s2Step57EntryFRow.payload++s2Step57EntryFFresh) s2Step57EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step57EntryGBefore : Arena := s2Step57EntryFBefore
def s2Step57EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step57EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238],769⟩
def s2Step57EntryGFresh : List Wire := [814]
theorem s2Step57EntryG_distinct : (s2Step57EntryGRow.sign::s2Step57EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step57EntryG_owned : (s2Step57EntryGRow.sign::s2Step57EntryGRow.payload).toFinset⊆s2Step57EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step57EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57EntryG_reserved : s2Step57EntryGBefore.reserve s2Step57EntryGFresh.toFinset=some s2Step57EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step57EntryGFresh,arenaWires]
  · norm_num [s2Step57EntryGBefore,s2Step57EntryFBefore,s2Step57EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step57EntryGAfter,s2Step57EntryGBefore,s2Step57EntryFBefore,s2Step57EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step57EntryG_checked : planRowResizeLog s2Step57EntryGBefore s2Step57EntryGRow 240 s2Step57EntryGFresh=
    some (s2Step57EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 814],769⟩,growRow 769 s2Step57EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step57EntryGBefore s2Step57EntryGAfter s2Step57EntryGRow 240 s2Step57EntryGFresh
    s2Step57EntryG_distinct s2Step57EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step57EntryG_reserved
  have rowEq : WindowRow.mk (s2Step57EntryGRow.payload++s2Step57EntryGFresh) s2Step57EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 814],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step57EntryFvBefore : Arena := s2Step57EntryGAfter
def s2Step57EntryFvAfter : Arena := s2Step57EntryGAfter
def s2Step57EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787],770⟩
def s2Step57EntryFvFresh : List Wire := []
theorem s2Step57EntryFv_distinct : (s2Step57EntryFvRow.sign::s2Step57EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step57EntryFv_owned : (s2Step57EntryFvRow.sign::s2Step57EntryFvRow.payload).toFinset⊆s2Step57EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step57EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57EntryFv_reserved : s2Step57EntryFvBefore.reserve s2Step57EntryFvFresh.toFinset=some s2Step57EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step57EntryFvFresh,arenaWires]
  · norm_num [s2Step57EntryFvBefore,s2Step57EntryGAfter,s2Step57EntryFvFresh,arenaWires]
  · simp only [s2Step57EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step57EntryFv_checked : planRowResizeLog s2Step57EntryFvBefore s2Step57EntryFvRow 41 s2Step57EntryFvFresh=
    some (s2Step57EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787],770⟩,growRow 770 s2Step57EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step57EntryFvBefore s2Step57EntryFvAfter s2Step57EntryFvRow 41 s2Step57EntryFvFresh
    s2Step57EntryFv_distinct s2Step57EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step57EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step57EntryFvRow.payload++s2Step57EntryFvFresh) s2Step57EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step57EntryGvBefore : Arena := s2Step57EntryGAfter
def s2Step57EntryGvAfter : Arena := s2Step57EntryGAfter
def s2Step57EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩
def s2Step57EntryGvFresh : List Wire := []
theorem s2Step57EntryGv_distinct : (s2Step57EntryGvRow.sign::s2Step57EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step57EntryGv_owned : (s2Step57EntryGvRow.sign::s2Step57EntryGvRow.payload).toFinset⊆s2Step57EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step57EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57EntryGv_reserved : s2Step57EntryGvBefore.reserve s2Step57EntryGvFresh.toFinset=some s2Step57EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step57EntryGvFresh,arenaWires]
  · norm_num [s2Step57EntryGvBefore,s2Step57EntryGAfter,s2Step57EntryGvFresh,arenaWires]
  · simp only [s2Step57EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step57EntryGv_checked : planRowResizeLog s2Step57EntryGvBefore s2Step57EntryGvRow 41 s2Step57EntryGvFresh=
    some (s2Step57EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩,growRow 771 s2Step57EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step57EntryGvBefore s2Step57EntryGvAfter s2Step57EntryGvRow 41 s2Step57EntryGvFresh
    s2Step57EntryGv_distinct s2Step57EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step57EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step57EntryGvRow.payload++s2Step57EntryGvFresh) s2Step57EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step58EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step58EntryFAfter : Arena := s2Step58EntryFBefore
def s2Step58EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩
def s2Step58EntryFFresh : List Wire := []
theorem s2Step58EntryF_distinct : (s2Step58EntryFRow.sign::s2Step58EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step58EntryF_owned : (s2Step58EntryFRow.sign::s2Step58EntryFRow.payload).toFinset⊆s2Step58EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step58EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58EntryF_reserved : s2Step58EntryFBefore.reserve s2Step58EntryFFresh.toFinset=some s2Step58EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step58EntryFFresh,arenaWires]
  · norm_num [s2Step58EntryFBefore,s2Step58EntryFFresh,arenaWires]
  · simp only [s2Step58EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step58EntryF_checked : planRowResizeLog s2Step58EntryFBefore s2Step58EntryFRow 239 s2Step58EntryFFresh=
    some (s2Step58EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩,growRow 768 s2Step58EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step58EntryFBefore s2Step58EntryFAfter s2Step58EntryFRow 239 s2Step58EntryFFresh
    s2Step58EntryF_distinct s2Step58EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step58EntryF_reserved
  have rowEq : WindowRow.mk (s2Step58EntryFRow.payload++s2Step58EntryFFresh) s2Step58EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step58EntryGBefore : Arena := s2Step58EntryFBefore
def s2Step58EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step58EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237],769⟩
def s2Step58EntryGFresh : List Wire := [817]
theorem s2Step58EntryG_distinct : (s2Step58EntryGRow.sign::s2Step58EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step58EntryG_owned : (s2Step58EntryGRow.sign::s2Step58EntryGRow.payload).toFinset⊆s2Step58EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step58EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58EntryG_reserved : s2Step58EntryGBefore.reserve s2Step58EntryGFresh.toFinset=some s2Step58EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step58EntryGFresh,arenaWires]
  · norm_num [s2Step58EntryGBefore,s2Step58EntryFBefore,s2Step58EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step58EntryGAfter,s2Step58EntryGBefore,s2Step58EntryFBefore,s2Step58EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step58EntryG_checked : planRowResizeLog s2Step58EntryGBefore s2Step58EntryGRow 239 s2Step58EntryGFresh=
    some (s2Step58EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 817],769⟩,growRow 769 s2Step58EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step58EntryGBefore s2Step58EntryGAfter s2Step58EntryGRow 239 s2Step58EntryGFresh
    s2Step58EntryG_distinct s2Step58EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step58EntryG_reserved
  have rowEq : WindowRow.mk (s2Step58EntryGRow.payload++s2Step58EntryGFresh) s2Step58EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 817],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step58EntryFvBefore : Arena := s2Step58EntryGAfter
def s2Step58EntryFvAfter : Arena := s2Step58EntryGAfter
def s2Step58EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787],770⟩
def s2Step58EntryFvFresh : List Wire := []
theorem s2Step58EntryFv_distinct : (s2Step58EntryFvRow.sign::s2Step58EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step58EntryFv_owned : (s2Step58EntryFvRow.sign::s2Step58EntryFvRow.payload).toFinset⊆s2Step58EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step58EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58EntryFv_reserved : s2Step58EntryFvBefore.reserve s2Step58EntryFvFresh.toFinset=some s2Step58EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step58EntryFvFresh,arenaWires]
  · norm_num [s2Step58EntryFvBefore,s2Step58EntryGAfter,s2Step58EntryFvFresh,arenaWires]
  · simp only [s2Step58EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step58EntryFv_checked : planRowResizeLog s2Step58EntryFvBefore s2Step58EntryFvRow 41 s2Step58EntryFvFresh=
    some (s2Step58EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787],770⟩,growRow 770 s2Step58EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step58EntryFvBefore s2Step58EntryFvAfter s2Step58EntryFvRow 41 s2Step58EntryFvFresh
    s2Step58EntryFv_distinct s2Step58EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step58EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step58EntryFvRow.payload++s2Step58EntryFvFresh) s2Step58EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step58EntryGvBefore : Arena := s2Step58EntryGAfter
def s2Step58EntryGvAfter : Arena := s2Step58EntryGAfter
def s2Step58EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩
def s2Step58EntryGvFresh : List Wire := []
theorem s2Step58EntryGv_distinct : (s2Step58EntryGvRow.sign::s2Step58EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step58EntryGv_owned : (s2Step58EntryGvRow.sign::s2Step58EntryGvRow.payload).toFinset⊆s2Step58EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step58EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58EntryGv_reserved : s2Step58EntryGvBefore.reserve s2Step58EntryGvFresh.toFinset=some s2Step58EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step58EntryGvFresh,arenaWires]
  · norm_num [s2Step58EntryGvBefore,s2Step58EntryGAfter,s2Step58EntryGvFresh,arenaWires]
  · simp only [s2Step58EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step58EntryGv_checked : planRowResizeLog s2Step58EntryGvBefore s2Step58EntryGvRow 41 s2Step58EntryGvFresh=
    some (s2Step58EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩,growRow 771 s2Step58EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step58EntryGvBefore s2Step58EntryGvAfter s2Step58EntryGvRow 41 s2Step58EntryGvFresh
    s2Step58EntryGv_distinct s2Step58EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step58EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step58EntryGvRow.payload++s2Step58EntryGvFresh) s2Step58EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step59EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step59EntryFAfter : Arena := s2Step59EntryFBefore
def s2Step59EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩
def s2Step59EntryFFresh : List Wire := []
theorem s2Step59EntryF_distinct : (s2Step59EntryFRow.sign::s2Step59EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step59EntryF_owned : (s2Step59EntryFRow.sign::s2Step59EntryFRow.payload).toFinset⊆s2Step59EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step59EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59EntryF_reserved : s2Step59EntryFBefore.reserve s2Step59EntryFFresh.toFinset=some s2Step59EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step59EntryFFresh,arenaWires]
  · norm_num [s2Step59EntryFBefore,s2Step59EntryFFresh,arenaWires]
  · simp only [s2Step59EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step59EntryF_checked : planRowResizeLog s2Step59EntryFBefore s2Step59EntryFRow 239 s2Step59EntryFFresh=
    some (s2Step59EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩,growRow 768 s2Step59EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step59EntryFBefore s2Step59EntryFAfter s2Step59EntryFRow 239 s2Step59EntryFFresh
    s2Step59EntryF_distinct s2Step59EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step59EntryF_reserved
  have rowEq : WindowRow.mk (s2Step59EntryFRow.payload++s2Step59EntryFFresh) s2Step59EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step59EntryGBefore : Arena := s2Step59EntryFBefore
def s2Step59EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step59EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237],769⟩
def s2Step59EntryGFresh : List Wire := [816]
theorem s2Step59EntryG_distinct : (s2Step59EntryGRow.sign::s2Step59EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step59EntryG_owned : (s2Step59EntryGRow.sign::s2Step59EntryGRow.payload).toFinset⊆s2Step59EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step59EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59EntryG_reserved : s2Step59EntryGBefore.reserve s2Step59EntryGFresh.toFinset=some s2Step59EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step59EntryGFresh,arenaWires]
  · norm_num [s2Step59EntryGBefore,s2Step59EntryFBefore,s2Step59EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step59EntryGAfter,s2Step59EntryGBefore,s2Step59EntryFBefore,s2Step59EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step59EntryG_checked : planRowResizeLog s2Step59EntryGBefore s2Step59EntryGRow 239 s2Step59EntryGFresh=
    some (s2Step59EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 816],769⟩,growRow 769 s2Step59EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step59EntryGBefore s2Step59EntryGAfter s2Step59EntryGRow 239 s2Step59EntryGFresh
    s2Step59EntryG_distinct s2Step59EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step59EntryG_reserved
  have rowEq : WindowRow.mk (s2Step59EntryGRow.payload++s2Step59EntryGFresh) s2Step59EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 816],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step59EntryFvBefore : Arena := s2Step59EntryGAfter
def s2Step59EntryFvAfter : Arena := s2Step59EntryGAfter
def s2Step59EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808],770⟩
def s2Step59EntryFvFresh : List Wire := []
theorem s2Step59EntryFv_distinct : (s2Step59EntryFvRow.sign::s2Step59EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step59EntryFv_owned : (s2Step59EntryFvRow.sign::s2Step59EntryFvRow.payload).toFinset⊆s2Step59EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step59EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59EntryFv_reserved : s2Step59EntryFvBefore.reserve s2Step59EntryFvFresh.toFinset=some s2Step59EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step59EntryFvFresh,arenaWires]
  · norm_num [s2Step59EntryFvBefore,s2Step59EntryGAfter,s2Step59EntryFvFresh,arenaWires]
  · simp only [s2Step59EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step59EntryFv_checked : planRowResizeLog s2Step59EntryFvBefore s2Step59EntryFvRow 42 s2Step59EntryFvFresh=
    some (s2Step59EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808],770⟩,growRow 770 s2Step59EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step59EntryFvBefore s2Step59EntryFvAfter s2Step59EntryFvRow 42 s2Step59EntryFvFresh
    s2Step59EntryFv_distinct s2Step59EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step59EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step59EntryFvRow.payload++s2Step59EntryFvFresh) s2Step59EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step59EntryGvBefore : Arena := s2Step59EntryGAfter
def s2Step59EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step59EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810],771⟩
def s2Step59EntryGvFresh : List Wire := [815]
theorem s2Step59EntryGv_distinct : (s2Step59EntryGvRow.sign::s2Step59EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step59EntryGv_owned : (s2Step59EntryGvRow.sign::s2Step59EntryGvRow.payload).toFinset⊆s2Step59EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step59EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59EntryGv_reserved : s2Step59EntryGvBefore.reserve s2Step59EntryGvFresh.toFinset=some s2Step59EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step59EntryGvFresh,arenaWires]
  · norm_num [s2Step59EntryGvBefore,s2Step59EntryGAfter,s2Step59EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step59EntryGvAfter,s2Step59EntryGvBefore,s2Step59EntryGAfter,s2Step59EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step59EntryGv_checked : planRowResizeLog s2Step59EntryGvBefore s2Step59EntryGvRow 42 s2Step59EntryGvFresh=
    some (s2Step59EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815],771⟩,growRow 771 s2Step59EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step59EntryGvBefore s2Step59EntryGvAfter s2Step59EntryGvRow 42 s2Step59EntryGvFresh
    s2Step59EntryGv_distinct s2Step59EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step59EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step59EntryGvRow.payload++s2Step59EntryGvFresh) s2Step59EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step60EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step60EntryFAfter : Arena := s2Step60EntryFBefore
def s2Step60EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩
def s2Step60EntryFFresh : List Wire := []
theorem s2Step60EntryF_distinct : (s2Step60EntryFRow.sign::s2Step60EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step60EntryF_owned : (s2Step60EntryFRow.sign::s2Step60EntryFRow.payload).toFinset⊆s2Step60EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step60EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60EntryF_reserved : s2Step60EntryFBefore.reserve s2Step60EntryFFresh.toFinset=some s2Step60EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step60EntryFFresh,arenaWires]
  · norm_num [s2Step60EntryFBefore,s2Step60EntryFFresh,arenaWires]
  · simp only [s2Step60EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step60EntryF_checked : planRowResizeLog s2Step60EntryFBefore s2Step60EntryFRow 239 s2Step60EntryFFresh=
    some (s2Step60EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩,growRow 768 s2Step60EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step60EntryFBefore s2Step60EntryFAfter s2Step60EntryFRow 239 s2Step60EntryFFresh
    s2Step60EntryF_distinct s2Step60EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step60EntryF_reserved
  have rowEq : WindowRow.mk (s2Step60EntryFRow.payload++s2Step60EntryFFresh) s2Step60EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step60EntryGBefore : Arena := s2Step60EntryFBefore
def s2Step60EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step60EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237],769⟩
def s2Step60EntryGFresh : List Wire := [790]
theorem s2Step60EntryG_distinct : (s2Step60EntryGRow.sign::s2Step60EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step60EntryG_owned : (s2Step60EntryGRow.sign::s2Step60EntryGRow.payload).toFinset⊆s2Step60EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step60EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60EntryG_reserved : s2Step60EntryGBefore.reserve s2Step60EntryGFresh.toFinset=some s2Step60EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step60EntryGFresh,arenaWires]
  · norm_num [s2Step60EntryGBefore,s2Step60EntryFBefore,s2Step60EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step60EntryGAfter,s2Step60EntryGBefore,s2Step60EntryFBefore,s2Step60EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step60EntryG_checked : planRowResizeLog s2Step60EntryGBefore s2Step60EntryGRow 239 s2Step60EntryGFresh=
    some (s2Step60EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 790],769⟩,growRow 769 s2Step60EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step60EntryGBefore s2Step60EntryGAfter s2Step60EntryGRow 239 s2Step60EntryGFresh
    s2Step60EntryG_distinct s2Step60EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step60EntryG_reserved
  have rowEq : WindowRow.mk (s2Step60EntryGRow.payload++s2Step60EntryGFresh) s2Step60EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 790],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step60EntryFvBefore : Arena := s2Step60EntryGAfter
def s2Step60EntryFvAfter : Arena := s2Step60EntryGAfter
def s2Step60EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800],770⟩
def s2Step60EntryFvFresh : List Wire := []
theorem s2Step60EntryFv_distinct : (s2Step60EntryFvRow.sign::s2Step60EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step60EntryFv_owned : (s2Step60EntryFvRow.sign::s2Step60EntryFvRow.payload).toFinset⊆s2Step60EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step60EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60EntryFv_reserved : s2Step60EntryFvBefore.reserve s2Step60EntryFvFresh.toFinset=some s2Step60EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step60EntryFvFresh,arenaWires]
  · norm_num [s2Step60EntryFvBefore,s2Step60EntryGAfter,s2Step60EntryFvFresh,arenaWires]
  · simp only [s2Step60EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step60EntryFv_checked : planRowResizeLog s2Step60EntryFvBefore s2Step60EntryFvRow 43 s2Step60EntryFvFresh=
    some (s2Step60EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800],770⟩,growRow 770 s2Step60EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step60EntryFvBefore s2Step60EntryFvAfter s2Step60EntryFvRow 43 s2Step60EntryFvFresh
    s2Step60EntryFv_distinct s2Step60EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step60EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step60EntryFvRow.payload++s2Step60EntryFvFresh) s2Step60EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step60EntryGvBefore : Arena := s2Step60EntryGAfter
def s2Step60EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step60EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815],771⟩
def s2Step60EntryGvFresh : List Wire := [792]
theorem s2Step60EntryGv_distinct : (s2Step60EntryGvRow.sign::s2Step60EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step60EntryGv_owned : (s2Step60EntryGvRow.sign::s2Step60EntryGvRow.payload).toFinset⊆s2Step60EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step60EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60EntryGv_reserved : s2Step60EntryGvBefore.reserve s2Step60EntryGvFresh.toFinset=some s2Step60EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step60EntryGvFresh,arenaWires]
  · norm_num [s2Step60EntryGvBefore,s2Step60EntryGAfter,s2Step60EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step60EntryGvAfter,s2Step60EntryGvBefore,s2Step60EntryGAfter,s2Step60EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step60EntryGv_checked : planRowResizeLog s2Step60EntryGvBefore s2Step60EntryGvRow 43 s2Step60EntryGvFresh=
    some (s2Step60EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792],771⟩,growRow 771 s2Step60EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step60EntryGvBefore s2Step60EntryGvAfter s2Step60EntryGvRow 43 s2Step60EntryGvFresh
    s2Step60EntryGv_distinct s2Step60EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step60EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step60EntryGvRow.payload++s2Step60EntryGvFresh) s2Step60EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step61EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step61EntryFAfter : Arena := s2Step61EntryFBefore
def s2Step61EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩
def s2Step61EntryFFresh : List Wire := []
theorem s2Step61EntryF_distinct : (s2Step61EntryFRow.sign::s2Step61EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step61EntryF_owned : (s2Step61EntryFRow.sign::s2Step61EntryFRow.payload).toFinset⊆s2Step61EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step61EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61EntryF_reserved : s2Step61EntryFBefore.reserve s2Step61EntryFFresh.toFinset=some s2Step61EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step61EntryFFresh,arenaWires]
  · norm_num [s2Step61EntryFBefore,s2Step61EntryFFresh,arenaWires]
  · simp only [s2Step61EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step61EntryF_checked : planRowResizeLog s2Step61EntryFBefore s2Step61EntryFRow 239 s2Step61EntryFFresh=
    some (s2Step61EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩,growRow 768 s2Step61EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step61EntryFBefore s2Step61EntryFAfter s2Step61EntryFRow 239 s2Step61EntryFFresh
    s2Step61EntryF_distinct s2Step61EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step61EntryF_reserved
  have rowEq : WindowRow.mk (s2Step61EntryFRow.payload++s2Step61EntryFFresh) s2Step61EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step61EntryGBefore : Arena := s2Step61EntryFBefore
def s2Step61EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step61EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],769⟩
def s2Step61EntryGFresh : List Wire := [820, 814]
theorem s2Step61EntryG_distinct : (s2Step61EntryGRow.sign::s2Step61EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step61EntryG_owned : (s2Step61EntryGRow.sign::s2Step61EntryGRow.payload).toFinset⊆s2Step61EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step61EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61EntryG_reserved : s2Step61EntryGBefore.reserve s2Step61EntryGFresh.toFinset=some s2Step61EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step61EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step61EntryGBefore,s2Step61EntryFBefore,s2Step61EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step61EntryGAfter,s2Step61EntryGBefore,s2Step61EntryFBefore,s2Step61EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step61EntryG_checked : planRowResizeLog s2Step61EntryGBefore s2Step61EntryGRow 239 s2Step61EntryGFresh=
    some (s2Step61EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 820, 814],769⟩,growRow 769 s2Step61EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step61EntryGBefore s2Step61EntryGAfter s2Step61EntryGRow 239 s2Step61EntryGFresh
    s2Step61EntryG_distinct s2Step61EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step61EntryG_reserved
  have rowEq : WindowRow.mk (s2Step61EntryGRow.payload++s2Step61EntryGFresh) s2Step61EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 820, 814],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step61EntryFvBefore : Arena := s2Step61EntryGAfter
def s2Step61EntryFvAfter : Arena := s2Step61EntryGAfter
def s2Step61EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812],770⟩
def s2Step61EntryFvFresh : List Wire := []
theorem s2Step61EntryFv_distinct : (s2Step61EntryFvRow.sign::s2Step61EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step61EntryFv_owned : (s2Step61EntryFvRow.sign::s2Step61EntryFvRow.payload).toFinset⊆s2Step61EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step61EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61EntryFv_reserved : s2Step61EntryFvBefore.reserve s2Step61EntryFvFresh.toFinset=some s2Step61EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step61EntryFvFresh,arenaWires]
  · norm_num [s2Step61EntryFvBefore,s2Step61EntryGAfter,s2Step61EntryFvFresh,arenaWires]
  · simp only [s2Step61EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step61EntryFv_checked : planRowResizeLog s2Step61EntryFvBefore s2Step61EntryFvRow 44 s2Step61EntryFvFresh=
    some (s2Step61EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812],770⟩,growRow 770 s2Step61EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step61EntryFvBefore s2Step61EntryFvAfter s2Step61EntryFvRow 44 s2Step61EntryFvFresh
    s2Step61EntryFv_distinct s2Step61EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step61EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step61EntryFvRow.payload++s2Step61EntryFvFresh) s2Step61EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step61EntryGvBefore : Arena := s2Step61EntryGAfter
def s2Step61EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step61EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792],771⟩
def s2Step61EntryGvFresh : List Wire := [822]
theorem s2Step61EntryGv_distinct : (s2Step61EntryGvRow.sign::s2Step61EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step61EntryGv_owned : (s2Step61EntryGvRow.sign::s2Step61EntryGvRow.payload).toFinset⊆s2Step61EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step61EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61EntryGv_reserved : s2Step61EntryGvBefore.reserve s2Step61EntryGvFresh.toFinset=some s2Step61EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step61EntryGvFresh,arenaWires]
  · norm_num [s2Step61EntryGvBefore,s2Step61EntryGAfter,s2Step61EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step61EntryGvAfter,s2Step61EntryGvBefore,s2Step61EntryGAfter,s2Step61EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step61EntryGv_checked : planRowResizeLog s2Step61EntryGvBefore s2Step61EntryGvRow 44 s2Step61EntryGvFresh=
    some (s2Step61EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 822],771⟩,growRow 771 s2Step61EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step61EntryGvBefore s2Step61EntryGvAfter s2Step61EntryGvRow 44 s2Step61EntryGvFresh
    s2Step61EntryGv_distinct s2Step61EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step61EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step61EntryGvRow.payload++s2Step61EntryGvFresh) s2Step61EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 822],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step62EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step62EntryFAfter : Arena := s2Step62EntryFBefore
def s2Step62EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749],768⟩
def s2Step62EntryFFresh : List Wire := []
theorem s2Step62EntryF_distinct : (s2Step62EntryFRow.sign::s2Step62EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step62EntryF_owned : (s2Step62EntryFRow.sign::s2Step62EntryFRow.payload).toFinset⊆s2Step62EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step62EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62EntryF_reserved : s2Step62EntryFBefore.reserve s2Step62EntryFFresh.toFinset=some s2Step62EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step62EntryFFresh,arenaWires]
  · norm_num [s2Step62EntryFBefore,s2Step62EntryFFresh,arenaWires]
  · simp only [s2Step62EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step62EntryF_checked : planRowResizeLog s2Step62EntryFBefore s2Step62EntryFRow 238 s2Step62EntryFFresh=
    some (s2Step62EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749],768⟩,growRow 768 s2Step62EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step62EntryFBefore s2Step62EntryFAfter s2Step62EntryFRow 238 s2Step62EntryFFresh
    s2Step62EntryF_distinct s2Step62EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step62EntryF_reserved
  have rowEq : WindowRow.mk (s2Step62EntryFRow.payload++s2Step62EntryFFresh) s2Step62EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step62EntryGBefore : Arena := s2Step62EntryFBefore
def s2Step62EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step62EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],769⟩
def s2Step62EntryGFresh : List Wire := [817]
theorem s2Step62EntryG_distinct : (s2Step62EntryGRow.sign::s2Step62EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step62EntryG_owned : (s2Step62EntryGRow.sign::s2Step62EntryGRow.payload).toFinset⊆s2Step62EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step62EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62EntryG_reserved : s2Step62EntryGBefore.reserve s2Step62EntryGFresh.toFinset=some s2Step62EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step62EntryGFresh,arenaWires]
  · norm_num [s2Step62EntryGBefore,s2Step62EntryFBefore,s2Step62EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step62EntryGAfter,s2Step62EntryGBefore,s2Step62EntryFBefore,s2Step62EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step62EntryG_checked : planRowResizeLog s2Step62EntryGBefore s2Step62EntryGRow 238 s2Step62EntryGFresh=
    some (s2Step62EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 817],769⟩,growRow 769 s2Step62EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step62EntryGBefore s2Step62EntryGAfter s2Step62EntryGRow 238 s2Step62EntryGFresh
    s2Step62EntryG_distinct s2Step62EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step62EntryG_reserved
  have rowEq : WindowRow.mk (s2Step62EntryGRow.payload++s2Step62EntryGFresh) s2Step62EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 817],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step62EntryFvBefore : Arena := s2Step62EntryGAfter
def s2Step62EntryFvAfter : Arena := s2Step62EntryGAfter
def s2Step62EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812],770⟩
def s2Step62EntryFvFresh : List Wire := []
theorem s2Step62EntryFv_distinct : (s2Step62EntryFvRow.sign::s2Step62EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step62EntryFv_owned : (s2Step62EntryFvRow.sign::s2Step62EntryFvRow.payload).toFinset⊆s2Step62EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step62EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62EntryFv_reserved : s2Step62EntryFvBefore.reserve s2Step62EntryFvFresh.toFinset=some s2Step62EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step62EntryFvFresh,arenaWires]
  · norm_num [s2Step62EntryFvBefore,s2Step62EntryGAfter,s2Step62EntryFvFresh,arenaWires]
  · simp only [s2Step62EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step62EntryFv_checked : planRowResizeLog s2Step62EntryFvBefore s2Step62EntryFvRow 44 s2Step62EntryFvFresh=
    some (s2Step62EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812],770⟩,growRow 770 s2Step62EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step62EntryFvBefore s2Step62EntryFvAfter s2Step62EntryFvRow 44 s2Step62EntryFvFresh
    s2Step62EntryFv_distinct s2Step62EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step62EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step62EntryFvRow.payload++s2Step62EntryFvFresh) s2Step62EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step62EntryGvBefore : Arena := s2Step62EntryGAfter
def s2Step62EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step62EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792],771⟩
def s2Step62EntryGvFresh : List Wire := [807]
theorem s2Step62EntryGv_distinct : (s2Step62EntryGvRow.sign::s2Step62EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step62EntryGv_owned : (s2Step62EntryGvRow.sign::s2Step62EntryGvRow.payload).toFinset⊆s2Step62EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step62EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62EntryGv_reserved : s2Step62EntryGvBefore.reserve s2Step62EntryGvFresh.toFinset=some s2Step62EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step62EntryGvFresh,arenaWires]
  · norm_num [s2Step62EntryGvBefore,s2Step62EntryGAfter,s2Step62EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step62EntryGvAfter,s2Step62EntryGvBefore,s2Step62EntryGAfter,s2Step62EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step62EntryGv_checked : planRowResizeLog s2Step62EntryGvBefore s2Step62EntryGvRow 44 s2Step62EntryGvFresh=
    some (s2Step62EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807],771⟩,growRow 771 s2Step62EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step62EntryGvBefore s2Step62EntryGvAfter s2Step62EntryGvRow 44 s2Step62EntryGvFresh
    s2Step62EntryGv_distinct s2Step62EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step62EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step62EntryGvRow.payload++s2Step62EntryGvFresh) s2Step62EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step63EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)),Finset.filter_subset _ _⟩
def s2Step63EntryFAfter : Arena := s2Step63EntryFBefore
def s2Step63EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748],768⟩
def s2Step63EntryFFresh : List Wire := []
theorem s2Step63EntryF_distinct : (s2Step63EntryFRow.sign::s2Step63EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step63EntryF_owned : (s2Step63EntryFRow.sign::s2Step63EntryFRow.payload).toFinset⊆s2Step63EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step63EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63EntryF_reserved : s2Step63EntryFBefore.reserve s2Step63EntryFFresh.toFinset=some s2Step63EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step63EntryFFresh,arenaWires]
  · norm_num [s2Step63EntryFBefore,s2Step63EntryFFresh,arenaWires]
  · simp only [s2Step63EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step63EntryF_checked : planRowResizeLog s2Step63EntryFBefore s2Step63EntryFRow 237 s2Step63EntryFFresh=
    some (s2Step63EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748],768⟩,growRow 768 s2Step63EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step63EntryFBefore s2Step63EntryFAfter s2Step63EntryFRow 237 s2Step63EntryFFresh
    s2Step63EntryF_distinct s2Step63EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step63EntryF_reserved
  have rowEq : WindowRow.mk (s2Step63EntryFRow.payload++s2Step63EntryFFresh) s2Step63EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step63EntryGBefore : Arena := s2Step63EntryFBefore
def s2Step63EntryGAfter : Arena := s2Step63EntryFBefore
def s2Step63EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],769⟩
def s2Step63EntryGFresh : List Wire := []
theorem s2Step63EntryG_distinct : (s2Step63EntryGRow.sign::s2Step63EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step63EntryG_owned : (s2Step63EntryGRow.sign::s2Step63EntryGRow.payload).toFinset⊆s2Step63EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step63EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63EntryG_reserved : s2Step63EntryGBefore.reserve s2Step63EntryGFresh.toFinset=some s2Step63EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step63EntryGFresh,arenaWires]
  · norm_num [s2Step63EntryGBefore,s2Step63EntryFBefore,s2Step63EntryGFresh,arenaWires]
  · simp only [s2Step63EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step63EntryG_checked : planRowResizeLog s2Step63EntryGBefore s2Step63EntryGRow 237 s2Step63EntryGFresh=
    some (s2Step63EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],769⟩,growRow 769 s2Step63EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step63EntryGBefore s2Step63EntryGAfter s2Step63EntryGRow 237 s2Step63EntryGFresh
    s2Step63EntryG_distinct s2Step63EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step63EntryG_reserved
  have rowEq : WindowRow.mk (s2Step63EntryGRow.payload++s2Step63EntryGFresh) s2Step63EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step63EntryFvBefore : Arena := s2Step63EntryFBefore
def s2Step63EntryFvAfter : Arena := s2Step63EntryFBefore
def s2Step63EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820],770⟩
def s2Step63EntryFvFresh : List Wire := []
theorem s2Step63EntryFv_distinct : (s2Step63EntryFvRow.sign::s2Step63EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step63EntryFv_owned : (s2Step63EntryFvRow.sign::s2Step63EntryFvRow.payload).toFinset⊆s2Step63EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step63EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63EntryFv_reserved : s2Step63EntryFvBefore.reserve s2Step63EntryFvFresh.toFinset=some s2Step63EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step63EntryFvFresh,arenaWires]
  · norm_num [s2Step63EntryFvBefore,s2Step63EntryFBefore,s2Step63EntryFvFresh,arenaWires]
  · simp only [s2Step63EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step63EntryFv_checked : planRowResizeLog s2Step63EntryFvBefore s2Step63EntryFvRow 45 s2Step63EntryFvFresh=
    some (s2Step63EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820],770⟩,growRow 770 s2Step63EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step63EntryFvBefore s2Step63EntryFvAfter s2Step63EntryFvRow 45 s2Step63EntryFvFresh
    s2Step63EntryFv_distinct s2Step63EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step63EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step63EntryFvRow.payload++s2Step63EntryFvFresh) s2Step63EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step63EntryGvBefore : Arena := s2Step63EntryFBefore
def s2Step63EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)),Finset.filter_subset _ _⟩
def s2Step63EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807],771⟩
def s2Step63EntryGvFresh : List Wire := [822]
theorem s2Step63EntryGv_distinct : (s2Step63EntryGvRow.sign::s2Step63EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step63EntryGv_owned : (s2Step63EntryGvRow.sign::s2Step63EntryGvRow.payload).toFinset⊆s2Step63EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step63EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63EntryGv_reserved : s2Step63EntryGvBefore.reserve s2Step63EntryGvFresh.toFinset=some s2Step63EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step63EntryGvFresh,arenaWires]
  · norm_num [s2Step63EntryGvBefore,s2Step63EntryFBefore,s2Step63EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step63EntryGvAfter,s2Step63EntryGvBefore,s2Step63EntryFBefore,s2Step63EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step63EntryGv_checked : planRowResizeLog s2Step63EntryGvBefore s2Step63EntryGvRow 45 s2Step63EntryGvFresh=
    some (s2Step63EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 822],771⟩,growRow 771 s2Step63EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step63EntryGvBefore s2Step63EntryGvAfter s2Step63EntryGvRow 45 s2Step63EntryGvFresh
    s2Step63EntryGv_distinct s2Step63EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step63EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step63EntryGvRow.payload++s2Step63EntryGvFresh) s2Step63EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 822],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

end ECDSAAdd.Arithmetic.Paper935
