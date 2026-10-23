import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step0EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780)),Finset.filter_subset _ _⟩
def s2Step0EntryFAfter : Arena := s2Step0EntryFBefore
def s2Step0EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step0EntryFFresh : List Wire := []
theorem s2Step0EntryF_distinct : (s2Step0EntryFRow.sign::s2Step0EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step0EntryF_owned : (s2Step0EntryFRow.sign::s2Step0EntryFRow.payload).toFinset⊆s2Step0EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step0EntryFBefore (fun q => (0≤q ∧ q<780)) rfl
  decide +kernel
theorem s2Step0EntryF_reserved : s2Step0EntryFBefore.reserve s2Step0EntryFFresh.toFinset=some s2Step0EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step0EntryFFresh,arenaWires]
  · norm_num [s2Step0EntryFBefore,s2Step0EntryFFresh,arenaWires]
  · simp only [s2Step0EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step0EntryF_checked : planRowResizeLog s2Step0EntryFBefore s2Step0EntryFRow 256 s2Step0EntryFFresh=
    some (s2Step0EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step0EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step0EntryFBefore s2Step0EntryFAfter s2Step0EntryFRow 256 s2Step0EntryFFresh
    s2Step0EntryF_distinct s2Step0EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step0EntryF_reserved
  have rowEq : WindowRow.mk (s2Step0EntryFRow.payload++s2Step0EntryFFresh) s2Step0EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step0EntryGBefore : Arena := s2Step0EntryFBefore
def s2Step0EntryGAfter : Arena := s2Step0EntryFBefore
def s2Step0EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255],769⟩
def s2Step0EntryGFresh : List Wire := []
theorem s2Step0EntryG_distinct : (s2Step0EntryGRow.sign::s2Step0EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step0EntryG_owned : (s2Step0EntryGRow.sign::s2Step0EntryGRow.payload).toFinset⊆s2Step0EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step0EntryGBefore (fun q => (0≤q ∧ q<780)) rfl
  decide +kernel
theorem s2Step0EntryG_reserved : s2Step0EntryGBefore.reserve s2Step0EntryGFresh.toFinset=some s2Step0EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step0EntryGFresh,arenaWires]
  · norm_num [s2Step0EntryGBefore,s2Step0EntryFBefore,s2Step0EntryGFresh,arenaWires]
  · simp only [s2Step0EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step0EntryG_checked : planRowResizeLog s2Step0EntryGBefore s2Step0EntryGRow 256 s2Step0EntryGFresh=
    some (s2Step0EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255],769⟩,growRow 769 s2Step0EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step0EntryGBefore s2Step0EntryGAfter s2Step0EntryGRow 256 s2Step0EntryGFresh
    s2Step0EntryG_distinct s2Step0EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step0EntryG_reserved
  have rowEq : WindowRow.mk (s2Step0EntryGRow.payload++s2Step0EntryGFresh) s2Step0EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step0EntryFvBefore : Arena := s2Step0EntryFBefore
def s2Step0EntryFvAfter : Arena := s2Step0EntryFBefore
def s2Step0EntryFvRow : WindowRow := ⟨[778],770⟩
def s2Step0EntryFvFresh : List Wire := []
theorem s2Step0EntryFv_distinct : (s2Step0EntryFvRow.sign::s2Step0EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step0EntryFv_owned : (s2Step0EntryFvRow.sign::s2Step0EntryFvRow.payload).toFinset⊆s2Step0EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step0EntryFvBefore (fun q => (0≤q ∧ q<780)) rfl
  decide +kernel
theorem s2Step0EntryFv_reserved : s2Step0EntryFvBefore.reserve s2Step0EntryFvFresh.toFinset=some s2Step0EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step0EntryFvFresh,arenaWires]
  · norm_num [s2Step0EntryFvBefore,s2Step0EntryFBefore,s2Step0EntryFvFresh,arenaWires]
  · simp only [s2Step0EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step0EntryFv_checked : planRowResizeLog s2Step0EntryFvBefore s2Step0EntryFvRow 1 s2Step0EntryFvFresh=
    some (s2Step0EntryFvAfter,⟨[778],770⟩,growRow 770 s2Step0EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step0EntryFvBefore s2Step0EntryFvAfter s2Step0EntryFvRow 1 s2Step0EntryFvFresh
    s2Step0EntryFv_distinct s2Step0EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step0EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step0EntryFvRow.payload++s2Step0EntryFvFresh) s2Step0EntryFvRow.sign=⟨[778],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step0EntryGvBefore : Arena := s2Step0EntryFBefore
def s2Step0EntryGvAfter : Arena := s2Step0EntryFBefore
def s2Step0EntryGvRow : WindowRow := ⟨[779],771⟩
def s2Step0EntryGvFresh : List Wire := []
theorem s2Step0EntryGv_distinct : (s2Step0EntryGvRow.sign::s2Step0EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step0EntryGv_owned : (s2Step0EntryGvRow.sign::s2Step0EntryGvRow.payload).toFinset⊆s2Step0EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step0EntryGvBefore (fun q => (0≤q ∧ q<780)) rfl
  decide +kernel
theorem s2Step0EntryGv_reserved : s2Step0EntryGvBefore.reserve s2Step0EntryGvFresh.toFinset=some s2Step0EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step0EntryGvFresh,arenaWires]
  · norm_num [s2Step0EntryGvBefore,s2Step0EntryFBefore,s2Step0EntryGvFresh,arenaWires]
  · simp only [s2Step0EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step0EntryGv_checked : planRowResizeLog s2Step0EntryGvBefore s2Step0EntryGvRow 1 s2Step0EntryGvFresh=
    some (s2Step0EntryGvAfter,⟨[779],771⟩,growRow 771 s2Step0EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step0EntryGvBefore s2Step0EntryGvAfter s2Step0EntryGvRow 1 s2Step0EntryGvFresh
    s2Step0EntryGv_distinct s2Step0EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step0EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step0EntryGvRow.payload++s2Step0EntryGvFresh) s2Step0EntryGvRow.sign=⟨[779],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step1EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step1EntryFAfter : Arena := s2Step1EntryFBefore
def s2Step1EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step1EntryFFresh : List Wire := []
theorem s2Step1EntryF_distinct : (s2Step1EntryFRow.sign::s2Step1EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step1EntryF_owned : (s2Step1EntryFRow.sign::s2Step1EntryFRow.payload).toFinset⊆s2Step1EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step1EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1EntryF_reserved : s2Step1EntryFBefore.reserve s2Step1EntryFFresh.toFinset=some s2Step1EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step1EntryFFresh,arenaWires]
  · norm_num [s2Step1EntryFBefore,s2Step1EntryFFresh,arenaWires]
  · simp only [s2Step1EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step1EntryF_checked : planRowResizeLog s2Step1EntryFBefore s2Step1EntryFRow 256 s2Step1EntryFFresh=
    some (s2Step1EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step1EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step1EntryFBefore s2Step1EntryFAfter s2Step1EntryFRow 256 s2Step1EntryFFresh
    s2Step1EntryF_distinct s2Step1EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step1EntryF_reserved
  have rowEq : WindowRow.mk (s2Step1EntryFRow.payload++s2Step1EntryFFresh) s2Step1EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step1EntryGBefore : Arena := s2Step1EntryFBefore
def s2Step1EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step1EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step1EntryGFresh : List Wire := [781]
theorem s2Step1EntryG_distinct : (s2Step1EntryGRow.sign::s2Step1EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step1EntryG_owned : (s2Step1EntryGRow.sign::s2Step1EntryGRow.payload).toFinset⊆s2Step1EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step1EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1EntryG_reserved : s2Step1EntryGBefore.reserve s2Step1EntryGFresh.toFinset=some s2Step1EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step1EntryGFresh,arenaWires]
  · norm_num [s2Step1EntryGBefore,s2Step1EntryFBefore,s2Step1EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step1EntryGAfter,s2Step1EntryGBefore,s2Step1EntryFBefore,s2Step1EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step1EntryG_checked : planRowResizeLog s2Step1EntryGBefore s2Step1EntryGRow 256 s2Step1EntryGFresh=
    some (s2Step1EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩,growRow 769 s2Step1EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step1EntryGBefore s2Step1EntryGAfter s2Step1EntryGRow 256 s2Step1EntryGFresh
    s2Step1EntryG_distinct s2Step1EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step1EntryG_reserved
  have rowEq : WindowRow.mk (s2Step1EntryGRow.payload++s2Step1EntryGFresh) s2Step1EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step1EntryFvBefore : Arena := s2Step1EntryGAfter
def s2Step1EntryFvAfter : Arena := s2Step1EntryGAfter
def s2Step1EntryFvRow : WindowRow := ⟨[255, 785],770⟩
def s2Step1EntryFvFresh : List Wire := []
theorem s2Step1EntryFv_distinct : (s2Step1EntryFvRow.sign::s2Step1EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step1EntryFv_owned : (s2Step1EntryFvRow.sign::s2Step1EntryFvRow.payload).toFinset⊆s2Step1EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step1EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1EntryFv_reserved : s2Step1EntryFvBefore.reserve s2Step1EntryFvFresh.toFinset=some s2Step1EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step1EntryFvFresh,arenaWires]
  · norm_num [s2Step1EntryFvBefore,s2Step1EntryGAfter,s2Step1EntryFvFresh,arenaWires]
  · simp only [s2Step1EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step1EntryFv_checked : planRowResizeLog s2Step1EntryFvBefore s2Step1EntryFvRow 2 s2Step1EntryFvFresh=
    some (s2Step1EntryFvAfter,⟨[255, 785],770⟩,growRow 770 s2Step1EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step1EntryFvBefore s2Step1EntryFvAfter s2Step1EntryFvRow 2 s2Step1EntryFvFresh
    s2Step1EntryFv_distinct s2Step1EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step1EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step1EntryFvRow.payload++s2Step1EntryFvFresh) s2Step1EntryFvRow.sign=⟨[255, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step1EntryGvBefore : Arena := s2Step1EntryGAfter
def s2Step1EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<782) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step1EntryGvRow : WindowRow := ⟨[779],771⟩
def s2Step1EntryGvFresh : List Wire := [780]
theorem s2Step1EntryGv_distinct : (s2Step1EntryGvRow.sign::s2Step1EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step1EntryGv_owned : (s2Step1EntryGvRow.sign::s2Step1EntryGvRow.payload).toFinset⊆s2Step1EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step1EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1EntryGv_reserved : s2Step1EntryGvBefore.reserve s2Step1EntryGvFresh.toFinset=some s2Step1EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step1EntryGvFresh,arenaWires]
  · norm_num [s2Step1EntryGvBefore,s2Step1EntryGAfter,s2Step1EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step1EntryGvAfter,s2Step1EntryGvBefore,s2Step1EntryGAfter,s2Step1EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step1EntryGv_checked : planRowResizeLog s2Step1EntryGvBefore s2Step1EntryGvRow 2 s2Step1EntryGvFresh=
    some (s2Step1EntryGvAfter,⟨[779, 780],771⟩,growRow 771 s2Step1EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step1EntryGvBefore s2Step1EntryGvAfter s2Step1EntryGvRow 2 s2Step1EntryGvFresh
    s2Step1EntryGv_distinct s2Step1EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step1EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step1EntryGvRow.payload++s2Step1EntryGvFresh) s2Step1EntryGvRow.sign=⟨[779, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step2EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step2EntryFAfter : Arena := s2Step2EntryFBefore
def s2Step2EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step2EntryFFresh : List Wire := []
theorem s2Step2EntryF_distinct : (s2Step2EntryFRow.sign::s2Step2EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step2EntryF_owned : (s2Step2EntryFRow.sign::s2Step2EntryFRow.payload).toFinset⊆s2Step2EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step2EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2EntryF_reserved : s2Step2EntryFBefore.reserve s2Step2EntryFFresh.toFinset=some s2Step2EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step2EntryFFresh,arenaWires]
  · norm_num [s2Step2EntryFBefore,s2Step2EntryFFresh,arenaWires]
  · simp only [s2Step2EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step2EntryF_checked : planRowResizeLog s2Step2EntryFBefore s2Step2EntryFRow 256 s2Step2EntryFFresh=
    some (s2Step2EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step2EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step2EntryFBefore s2Step2EntryFAfter s2Step2EntryFRow 256 s2Step2EntryFFresh
    s2Step2EntryF_distinct s2Step2EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step2EntryF_reserved
  have rowEq : WindowRow.mk (s2Step2EntryFRow.payload++s2Step2EntryFFresh) s2Step2EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step2EntryGBefore : Arena := s2Step2EntryFBefore
def s2Step2EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step2EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step2EntryGFresh : List Wire := [784]
theorem s2Step2EntryG_distinct : (s2Step2EntryGRow.sign::s2Step2EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step2EntryG_owned : (s2Step2EntryGRow.sign::s2Step2EntryGRow.payload).toFinset⊆s2Step2EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step2EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2EntryG_reserved : s2Step2EntryGBefore.reserve s2Step2EntryGFresh.toFinset=some s2Step2EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step2EntryGFresh,arenaWires]
  · norm_num [s2Step2EntryGBefore,s2Step2EntryFBefore,s2Step2EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step2EntryGAfter,s2Step2EntryGBefore,s2Step2EntryFBefore,s2Step2EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step2EntryG_checked : planRowResizeLog s2Step2EntryGBefore s2Step2EntryGRow 256 s2Step2EntryGFresh=
    some (s2Step2EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩,growRow 769 s2Step2EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step2EntryGBefore s2Step2EntryGAfter s2Step2EntryGRow 256 s2Step2EntryGFresh
    s2Step2EntryG_distinct s2Step2EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step2EntryG_reserved
  have rowEq : WindowRow.mk (s2Step2EntryGRow.payload++s2Step2EntryGFresh) s2Step2EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step2EntryFvBefore : Arena := s2Step2EntryGAfter
def s2Step2EntryFvAfter : Arena := s2Step2EntryGAfter
def s2Step2EntryFvRow : WindowRow := ⟨[255, 785, 787],770⟩
def s2Step2EntryFvFresh : List Wire := []
theorem s2Step2EntryFv_distinct : (s2Step2EntryFvRow.sign::s2Step2EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step2EntryFv_owned : (s2Step2EntryFvRow.sign::s2Step2EntryFvRow.payload).toFinset⊆s2Step2EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step2EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2EntryFv_reserved : s2Step2EntryFvBefore.reserve s2Step2EntryFvFresh.toFinset=some s2Step2EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step2EntryFvFresh,arenaWires]
  · norm_num [s2Step2EntryFvBefore,s2Step2EntryGAfter,s2Step2EntryFvFresh,arenaWires]
  · simp only [s2Step2EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step2EntryFv_checked : planRowResizeLog s2Step2EntryFvBefore s2Step2EntryFvRow 3 s2Step2EntryFvFresh=
    some (s2Step2EntryFvAfter,⟨[255, 785, 787],770⟩,growRow 770 s2Step2EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step2EntryFvBefore s2Step2EntryFvAfter s2Step2EntryFvRow 3 s2Step2EntryFvFresh
    s2Step2EntryFv_distinct s2Step2EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step2EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step2EntryFvRow.payload++s2Step2EntryFvFresh) s2Step2EntryFvRow.sign=⟨[255, 785, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step2EntryGvBefore : Arena := s2Step2EntryGAfter
def s2Step2EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step2EntryGvRow : WindowRow := ⟨[779],771⟩
def s2Step2EntryGvFresh : List Wire := [778, 780]
theorem s2Step2EntryGv_distinct : (s2Step2EntryGvRow.sign::s2Step2EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step2EntryGv_owned : (s2Step2EntryGvRow.sign::s2Step2EntryGvRow.payload).toFinset⊆s2Step2EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step2EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2EntryGv_reserved : s2Step2EntryGvBefore.reserve s2Step2EntryGvFresh.toFinset=some s2Step2EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step2EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step2EntryGvBefore,s2Step2EntryGAfter,s2Step2EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step2EntryGvAfter,s2Step2EntryGvBefore,s2Step2EntryGAfter,s2Step2EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step2EntryGv_checked : planRowResizeLog s2Step2EntryGvBefore s2Step2EntryGvRow 3 s2Step2EntryGvFresh=
    some (s2Step2EntryGvAfter,⟨[779, 778, 780],771⟩,growRow 771 s2Step2EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step2EntryGvBefore s2Step2EntryGvAfter s2Step2EntryGvRow 3 s2Step2EntryGvFresh
    s2Step2EntryGv_distinct s2Step2EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step2EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step2EntryGvRow.payload++s2Step2EntryGvFresh) s2Step2EntryGvRow.sign=⟨[779, 778, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step3EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step3EntryFAfter : Arena := s2Step3EntryFBefore
def s2Step3EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step3EntryFFresh : List Wire := []
theorem s2Step3EntryF_distinct : (s2Step3EntryFRow.sign::s2Step3EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step3EntryF_owned : (s2Step3EntryFRow.sign::s2Step3EntryFRow.payload).toFinset⊆s2Step3EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step3EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3EntryF_reserved : s2Step3EntryFBefore.reserve s2Step3EntryFFresh.toFinset=some s2Step3EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step3EntryFFresh,arenaWires]
  · norm_num [s2Step3EntryFBefore,s2Step3EntryFFresh,arenaWires]
  · simp only [s2Step3EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step3EntryF_checked : planRowResizeLog s2Step3EntryFBefore s2Step3EntryFRow 256 s2Step3EntryFFresh=
    some (s2Step3EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step3EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step3EntryFBefore s2Step3EntryFAfter s2Step3EntryFRow 256 s2Step3EntryFFresh
    s2Step3EntryF_distinct s2Step3EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step3EntryF_reserved
  have rowEq : WindowRow.mk (s2Step3EntryFRow.payload++s2Step3EntryFFresh) s2Step3EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step3EntryGBefore : Arena := s2Step3EntryFBefore
def s2Step3EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step3EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step3EntryGFresh : List Wire := [782]
theorem s2Step3EntryG_distinct : (s2Step3EntryGRow.sign::s2Step3EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step3EntryG_owned : (s2Step3EntryGRow.sign::s2Step3EntryGRow.payload).toFinset⊆s2Step3EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step3EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3EntryG_reserved : s2Step3EntryGBefore.reserve s2Step3EntryGFresh.toFinset=some s2Step3EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step3EntryGFresh,arenaWires]
  · norm_num [s2Step3EntryGBefore,s2Step3EntryFBefore,s2Step3EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step3EntryGAfter,s2Step3EntryGBefore,s2Step3EntryFBefore,s2Step3EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step3EntryG_checked : planRowResizeLog s2Step3EntryGBefore s2Step3EntryGRow 256 s2Step3EntryGFresh=
    some (s2Step3EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩,growRow 769 s2Step3EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step3EntryGBefore s2Step3EntryGAfter s2Step3EntryGRow 256 s2Step3EntryGFresh
    s2Step3EntryG_distinct s2Step3EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step3EntryG_reserved
  have rowEq : WindowRow.mk (s2Step3EntryGRow.payload++s2Step3EntryGFresh) s2Step3EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step3EntryFvBefore : Arena := s2Step3EntryGAfter
def s2Step3EntryFvAfter : Arena := s2Step3EntryGAfter
def s2Step3EntryFvRow : WindowRow := ⟨[255, 785, 787, 789],770⟩
def s2Step3EntryFvFresh : List Wire := []
theorem s2Step3EntryFv_distinct : (s2Step3EntryFvRow.sign::s2Step3EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step3EntryFv_owned : (s2Step3EntryFvRow.sign::s2Step3EntryFvRow.payload).toFinset⊆s2Step3EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step3EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3EntryFv_reserved : s2Step3EntryFvBefore.reserve s2Step3EntryFvFresh.toFinset=some s2Step3EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step3EntryFvFresh,arenaWires]
  · norm_num [s2Step3EntryFvBefore,s2Step3EntryGAfter,s2Step3EntryFvFresh,arenaWires]
  · simp only [s2Step3EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step3EntryFv_checked : planRowResizeLog s2Step3EntryFvBefore s2Step3EntryFvRow 4 s2Step3EntryFvFresh=
    some (s2Step3EntryFvAfter,⟨[255, 785, 787, 789],770⟩,growRow 770 s2Step3EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step3EntryFvBefore s2Step3EntryFvAfter s2Step3EntryFvRow 4 s2Step3EntryFvFresh
    s2Step3EntryFv_distinct s2Step3EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step3EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step3EntryFvRow.payload++s2Step3EntryFvFresh) s2Step3EntryFvRow.sign=⟨[255, 785, 787, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step3EntryGvBefore : Arena := s2Step3EntryGAfter
def s2Step3EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step3EntryGvRow : WindowRow := ⟨[779, 778],771⟩
def s2Step3EntryGvFresh : List Wire := [786, 780]
theorem s2Step3EntryGv_distinct : (s2Step3EntryGvRow.sign::s2Step3EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step3EntryGv_owned : (s2Step3EntryGvRow.sign::s2Step3EntryGvRow.payload).toFinset⊆s2Step3EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step3EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3EntryGv_reserved : s2Step3EntryGvBefore.reserve s2Step3EntryGvFresh.toFinset=some s2Step3EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step3EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step3EntryGvBefore,s2Step3EntryGAfter,s2Step3EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step3EntryGvAfter,s2Step3EntryGvBefore,s2Step3EntryGAfter,s2Step3EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step3EntryGv_checked : planRowResizeLog s2Step3EntryGvBefore s2Step3EntryGvRow 4 s2Step3EntryGvFresh=
    some (s2Step3EntryGvAfter,⟨[779, 778, 786, 780],771⟩,growRow 771 s2Step3EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step3EntryGvBefore s2Step3EntryGvAfter s2Step3EntryGvRow 4 s2Step3EntryGvFresh
    s2Step3EntryGv_distinct s2Step3EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step3EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step3EntryGvRow.payload++s2Step3EntryGvFresh) s2Step3EntryGvRow.sign=⟨[779, 778, 786, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step4EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step4EntryFAfter : Arena := s2Step4EntryFBefore
def s2Step4EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step4EntryFFresh : List Wire := []
theorem s2Step4EntryF_distinct : (s2Step4EntryFRow.sign::s2Step4EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step4EntryF_owned : (s2Step4EntryFRow.sign::s2Step4EntryFRow.payload).toFinset⊆s2Step4EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step4EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4EntryF_reserved : s2Step4EntryFBefore.reserve s2Step4EntryFFresh.toFinset=some s2Step4EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step4EntryFFresh,arenaWires]
  · norm_num [s2Step4EntryFBefore,s2Step4EntryFFresh,arenaWires]
  · simp only [s2Step4EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step4EntryF_checked : planRowResizeLog s2Step4EntryFBefore s2Step4EntryFRow 256 s2Step4EntryFFresh=
    some (s2Step4EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step4EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step4EntryFBefore s2Step4EntryFAfter s2Step4EntryFRow 256 s2Step4EntryFFresh
    s2Step4EntryF_distinct s2Step4EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step4EntryF_reserved
  have rowEq : WindowRow.mk (s2Step4EntryFRow.payload++s2Step4EntryFFresh) s2Step4EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step4EntryGBefore : Arena := s2Step4EntryFBefore
def s2Step4EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step4EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step4EntryGFresh : List Wire := [783]
theorem s2Step4EntryG_distinct : (s2Step4EntryGRow.sign::s2Step4EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step4EntryG_owned : (s2Step4EntryGRow.sign::s2Step4EntryGRow.payload).toFinset⊆s2Step4EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step4EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4EntryG_reserved : s2Step4EntryGBefore.reserve s2Step4EntryGFresh.toFinset=some s2Step4EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step4EntryGFresh,arenaWires]
  · norm_num [s2Step4EntryGBefore,s2Step4EntryFBefore,s2Step4EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step4EntryGAfter,s2Step4EntryGBefore,s2Step4EntryFBefore,s2Step4EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step4EntryG_checked : planRowResizeLog s2Step4EntryGBefore s2Step4EntryGRow 256 s2Step4EntryGFresh=
    some (s2Step4EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩,growRow 769 s2Step4EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step4EntryGBefore s2Step4EntryGAfter s2Step4EntryGRow 256 s2Step4EntryGFresh
    s2Step4EntryG_distinct s2Step4EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step4EntryG_reserved
  have rowEq : WindowRow.mk (s2Step4EntryGRow.payload++s2Step4EntryGFresh) s2Step4EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step4EntryFvBefore : Arena := s2Step4EntryGAfter
def s2Step4EntryFvAfter : Arena := s2Step4EntryGAfter
def s2Step4EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791],770⟩
def s2Step4EntryFvFresh : List Wire := []
theorem s2Step4EntryFv_distinct : (s2Step4EntryFvRow.sign::s2Step4EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step4EntryFv_owned : (s2Step4EntryFvRow.sign::s2Step4EntryFvRow.payload).toFinset⊆s2Step4EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step4EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4EntryFv_reserved : s2Step4EntryFvBefore.reserve s2Step4EntryFvFresh.toFinset=some s2Step4EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step4EntryFvFresh,arenaWires]
  · norm_num [s2Step4EntryFvBefore,s2Step4EntryGAfter,s2Step4EntryFvFresh,arenaWires]
  · simp only [s2Step4EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step4EntryFv_checked : planRowResizeLog s2Step4EntryFvBefore s2Step4EntryFvRow 5 s2Step4EntryFvFresh=
    some (s2Step4EntryFvAfter,⟨[255, 785, 787, 789, 791],770⟩,growRow 770 s2Step4EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step4EntryFvBefore s2Step4EntryFvAfter s2Step4EntryFvRow 5 s2Step4EntryFvFresh
    s2Step4EntryFv_distinct s2Step4EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step4EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step4EntryFvRow.payload++s2Step4EntryFvFresh) s2Step4EntryFvRow.sign=⟨[255, 785, 787, 789, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step4EntryGvBefore : Arena := s2Step4EntryGAfter
def s2Step4EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step4EntryGvRow : WindowRow := ⟨[779, 778, 786],771⟩
def s2Step4EntryGvFresh : List Wire := [788, 780]
theorem s2Step4EntryGv_distinct : (s2Step4EntryGvRow.sign::s2Step4EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step4EntryGv_owned : (s2Step4EntryGvRow.sign::s2Step4EntryGvRow.payload).toFinset⊆s2Step4EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step4EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step4EntryGv_reserved : s2Step4EntryGvBefore.reserve s2Step4EntryGvFresh.toFinset=some s2Step4EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step4EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step4EntryGvBefore,s2Step4EntryGAfter,s2Step4EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step4EntryGvAfter,s2Step4EntryGvBefore,s2Step4EntryGAfter,s2Step4EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step4EntryGv_checked : planRowResizeLog s2Step4EntryGvBefore s2Step4EntryGvRow 5 s2Step4EntryGvFresh=
    some (s2Step4EntryGvAfter,⟨[779, 778, 786, 788, 780],771⟩,growRow 771 s2Step4EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step4EntryGvBefore s2Step4EntryGvAfter s2Step4EntryGvRow 5 s2Step4EntryGvFresh
    s2Step4EntryGv_distinct s2Step4EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step4EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step4EntryGvRow.payload++s2Step4EntryGvFresh) s2Step4EntryGvRow.sign=⟨[779, 778, 786, 788, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step5EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step5EntryFAfter : Arena := s2Step5EntryFBefore
def s2Step5EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step5EntryFFresh : List Wire := []
theorem s2Step5EntryF_distinct : (s2Step5EntryFRow.sign::s2Step5EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step5EntryF_owned : (s2Step5EntryFRow.sign::s2Step5EntryFRow.payload).toFinset⊆s2Step5EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step5EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step5EntryF_reserved : s2Step5EntryFBefore.reserve s2Step5EntryFFresh.toFinset=some s2Step5EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step5EntryFFresh,arenaWires]
  · norm_num [s2Step5EntryFBefore,s2Step5EntryFFresh,arenaWires]
  · simp only [s2Step5EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step5EntryF_checked : planRowResizeLog s2Step5EntryFBefore s2Step5EntryFRow 256 s2Step5EntryFFresh=
    some (s2Step5EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step5EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step5EntryFBefore s2Step5EntryFAfter s2Step5EntryFRow 256 s2Step5EntryFFresh
    s2Step5EntryF_distinct s2Step5EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step5EntryF_reserved
  have rowEq : WindowRow.mk (s2Step5EntryFRow.payload++s2Step5EntryFFresh) s2Step5EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step5EntryGBefore : Arena := s2Step5EntryFBefore
def s2Step5EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step5EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step5EntryGFresh : List Wire := [781]
theorem s2Step5EntryG_distinct : (s2Step5EntryGRow.sign::s2Step5EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step5EntryG_owned : (s2Step5EntryGRow.sign::s2Step5EntryGRow.payload).toFinset⊆s2Step5EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step5EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step5EntryG_reserved : s2Step5EntryGBefore.reserve s2Step5EntryGFresh.toFinset=some s2Step5EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step5EntryGFresh,arenaWires]
  · norm_num [s2Step5EntryGBefore,s2Step5EntryFBefore,s2Step5EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step5EntryGAfter,s2Step5EntryGBefore,s2Step5EntryFBefore,s2Step5EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step5EntryG_checked : planRowResizeLog s2Step5EntryGBefore s2Step5EntryGRow 256 s2Step5EntryGFresh=
    some (s2Step5EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩,growRow 769 s2Step5EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step5EntryGBefore s2Step5EntryGAfter s2Step5EntryGRow 256 s2Step5EntryGFresh
    s2Step5EntryG_distinct s2Step5EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step5EntryG_reserved
  have rowEq : WindowRow.mk (s2Step5EntryGRow.payload++s2Step5EntryGFresh) s2Step5EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step5EntryFvBefore : Arena := s2Step5EntryGAfter
def s2Step5EntryFvAfter : Arena := s2Step5EntryGAfter
def s2Step5EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793],770⟩
def s2Step5EntryFvFresh : List Wire := []
theorem s2Step5EntryFv_distinct : (s2Step5EntryFvRow.sign::s2Step5EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step5EntryFv_owned : (s2Step5EntryFvRow.sign::s2Step5EntryFvRow.payload).toFinset⊆s2Step5EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step5EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step5EntryFv_reserved : s2Step5EntryFvBefore.reserve s2Step5EntryFvFresh.toFinset=some s2Step5EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step5EntryFvFresh,arenaWires]
  · norm_num [s2Step5EntryFvBefore,s2Step5EntryGAfter,s2Step5EntryFvFresh,arenaWires]
  · simp only [s2Step5EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step5EntryFv_checked : planRowResizeLog s2Step5EntryFvBefore s2Step5EntryFvRow 6 s2Step5EntryFvFresh=
    some (s2Step5EntryFvAfter,⟨[255, 785, 787, 789, 791, 793],770⟩,growRow 770 s2Step5EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step5EntryFvBefore s2Step5EntryFvAfter s2Step5EntryFvRow 6 s2Step5EntryFvFresh
    s2Step5EntryFv_distinct s2Step5EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step5EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step5EntryFvRow.payload++s2Step5EntryFvFresh) s2Step5EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step5EntryGvBefore : Arena := s2Step5EntryGAfter
def s2Step5EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step5EntryGvRow : WindowRow := ⟨[779, 778, 786, 788],771⟩
def s2Step5EntryGvFresh : List Wire := [790, 780]
theorem s2Step5EntryGv_distinct : (s2Step5EntryGvRow.sign::s2Step5EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step5EntryGv_owned : (s2Step5EntryGvRow.sign::s2Step5EntryGvRow.payload).toFinset⊆s2Step5EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step5EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step5EntryGv_reserved : s2Step5EntryGvBefore.reserve s2Step5EntryGvFresh.toFinset=some s2Step5EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step5EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step5EntryGvBefore,s2Step5EntryGAfter,s2Step5EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step5EntryGvAfter,s2Step5EntryGvBefore,s2Step5EntryGAfter,s2Step5EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step5EntryGv_checked : planRowResizeLog s2Step5EntryGvBefore s2Step5EntryGvRow 6 s2Step5EntryGvFresh=
    some (s2Step5EntryGvAfter,⟨[779, 778, 786, 788, 790, 780],771⟩,growRow 771 s2Step5EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step5EntryGvBefore s2Step5EntryGvAfter s2Step5EntryGvRow 6 s2Step5EntryGvFresh
    s2Step5EntryGv_distinct s2Step5EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step5EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step5EntryGvRow.payload++s2Step5EntryGvFresh) s2Step5EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step6EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797)),Finset.filter_subset _ _⟩
def s2Step6EntryFAfter : Arena := s2Step6EntryFBefore
def s2Step6EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step6EntryFFresh : List Wire := []
theorem s2Step6EntryF_distinct : (s2Step6EntryFRow.sign::s2Step6EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step6EntryF_owned : (s2Step6EntryFRow.sign::s2Step6EntryFRow.payload).toFinset⊆s2Step6EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step6EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step6EntryF_reserved : s2Step6EntryFBefore.reserve s2Step6EntryFFresh.toFinset=some s2Step6EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step6EntryFFresh,arenaWires]
  · norm_num [s2Step6EntryFBefore,s2Step6EntryFFresh,arenaWires]
  · simp only [s2Step6EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step6EntryF_checked : planRowResizeLog s2Step6EntryFBefore s2Step6EntryFRow 256 s2Step6EntryFFresh=
    some (s2Step6EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step6EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step6EntryFBefore s2Step6EntryFAfter s2Step6EntryFRow 256 s2Step6EntryFFresh
    s2Step6EntryF_distinct s2Step6EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step6EntryF_reserved
  have rowEq : WindowRow.mk (s2Step6EntryFRow.payload++s2Step6EntryFFresh) s2Step6EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step6EntryGBefore : Arena := s2Step6EntryFBefore
def s2Step6EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797)),Finset.filter_subset _ _⟩
def s2Step6EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step6EntryGFresh : List Wire := [784]
theorem s2Step6EntryG_distinct : (s2Step6EntryGRow.sign::s2Step6EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step6EntryG_owned : (s2Step6EntryGRow.sign::s2Step6EntryGRow.payload).toFinset⊆s2Step6EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step6EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step6EntryG_reserved : s2Step6EntryGBefore.reserve s2Step6EntryGFresh.toFinset=some s2Step6EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step6EntryGFresh,arenaWires]
  · norm_num [s2Step6EntryGBefore,s2Step6EntryFBefore,s2Step6EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step6EntryGAfter,s2Step6EntryGBefore,s2Step6EntryFBefore,s2Step6EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step6EntryG_checked : planRowResizeLog s2Step6EntryGBefore s2Step6EntryGRow 256 s2Step6EntryGFresh=
    some (s2Step6EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩,growRow 769 s2Step6EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step6EntryGBefore s2Step6EntryGAfter s2Step6EntryGRow 256 s2Step6EntryGFresh
    s2Step6EntryG_distinct s2Step6EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step6EntryG_reserved
  have rowEq : WindowRow.mk (s2Step6EntryGRow.payload++s2Step6EntryGFresh) s2Step6EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step6EntryFvBefore : Arena := s2Step6EntryGAfter
def s2Step6EntryFvAfter : Arena := s2Step6EntryGAfter
def s2Step6EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796],770⟩
def s2Step6EntryFvFresh : List Wire := []
theorem s2Step6EntryFv_distinct : (s2Step6EntryFvRow.sign::s2Step6EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step6EntryFv_owned : (s2Step6EntryFvRow.sign::s2Step6EntryFvRow.payload).toFinset⊆s2Step6EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step6EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step6EntryFv_reserved : s2Step6EntryFvBefore.reserve s2Step6EntryFvFresh.toFinset=some s2Step6EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step6EntryFvFresh,arenaWires]
  · norm_num [s2Step6EntryFvBefore,s2Step6EntryGAfter,s2Step6EntryFvFresh,arenaWires]
  · simp only [s2Step6EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step6EntryFv_checked : planRowResizeLog s2Step6EntryFvBefore s2Step6EntryFvRow 7 s2Step6EntryFvFresh=
    some (s2Step6EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796],770⟩,growRow 770 s2Step6EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step6EntryFvBefore s2Step6EntryFvAfter s2Step6EntryFvRow 7 s2Step6EntryFvFresh
    s2Step6EntryFv_distinct s2Step6EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step6EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step6EntryFvRow.payload++s2Step6EntryFvFresh) s2Step6EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step6EntryGvBefore : Arena := s2Step6EntryGAfter
def s2Step6EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<794) ∨ (795≤q ∧ q<797)),Finset.filter_subset _ _⟩
def s2Step6EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790],771⟩
def s2Step6EntryGvFresh : List Wire := [792, 780]
theorem s2Step6EntryGv_distinct : (s2Step6EntryGvRow.sign::s2Step6EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step6EntryGv_owned : (s2Step6EntryGvRow.sign::s2Step6EntryGvRow.payload).toFinset⊆s2Step6EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step6EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step6EntryGv_reserved : s2Step6EntryGvBefore.reserve s2Step6EntryGvFresh.toFinset=some s2Step6EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step6EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step6EntryGvBefore,s2Step6EntryGAfter,s2Step6EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step6EntryGvAfter,s2Step6EntryGvBefore,s2Step6EntryGAfter,s2Step6EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step6EntryGv_checked : planRowResizeLog s2Step6EntryGvBefore s2Step6EntryGvRow 7 s2Step6EntryGvFresh=
    some (s2Step6EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 780],771⟩,growRow 771 s2Step6EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step6EntryGvBefore s2Step6EntryGvAfter s2Step6EntryGvRow 7 s2Step6EntryGvFresh
    s2Step6EntryGv_distinct s2Step6EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step6EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step6EntryGvRow.payload++s2Step6EntryGvFresh) s2Step6EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step7EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<799)),Finset.filter_subset _ _⟩
def s2Step7EntryFAfter : Arena := s2Step7EntryFBefore
def s2Step7EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step7EntryFFresh : List Wire := []
theorem s2Step7EntryF_distinct : (s2Step7EntryFRow.sign::s2Step7EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step7EntryF_owned : (s2Step7EntryFRow.sign::s2Step7EntryFRow.payload).toFinset⊆s2Step7EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step7EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step7EntryF_reserved : s2Step7EntryFBefore.reserve s2Step7EntryFFresh.toFinset=some s2Step7EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step7EntryFFresh,arenaWires]
  · norm_num [s2Step7EntryFBefore,s2Step7EntryFFresh,arenaWires]
  · simp only [s2Step7EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step7EntryF_checked : planRowResizeLog s2Step7EntryFBefore s2Step7EntryFRow 256 s2Step7EntryFFresh=
    some (s2Step7EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step7EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step7EntryFBefore s2Step7EntryFAfter s2Step7EntryFRow 256 s2Step7EntryFFresh
    s2Step7EntryF_distinct s2Step7EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step7EntryF_reserved
  have rowEq : WindowRow.mk (s2Step7EntryFRow.payload++s2Step7EntryFFresh) s2Step7EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step7EntryGBefore : Arena := s2Step7EntryFBefore
def s2Step7EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<799)),Finset.filter_subset _ _⟩
def s2Step7EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step7EntryGFresh : List Wire := [782]
theorem s2Step7EntryG_distinct : (s2Step7EntryGRow.sign::s2Step7EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step7EntryG_owned : (s2Step7EntryGRow.sign::s2Step7EntryGRow.payload).toFinset⊆s2Step7EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step7EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step7EntryG_reserved : s2Step7EntryGBefore.reserve s2Step7EntryGFresh.toFinset=some s2Step7EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step7EntryGFresh,arenaWires]
  · norm_num [s2Step7EntryGBefore,s2Step7EntryFBefore,s2Step7EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step7EntryGAfter,s2Step7EntryGBefore,s2Step7EntryFBefore,s2Step7EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step7EntryG_checked : planRowResizeLog s2Step7EntryGBefore s2Step7EntryGRow 256 s2Step7EntryGFresh=
    some (s2Step7EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩,growRow 769 s2Step7EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step7EntryGBefore s2Step7EntryGAfter s2Step7EntryGRow 256 s2Step7EntryGFresh
    s2Step7EntryG_distinct s2Step7EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step7EntryG_reserved
  have rowEq : WindowRow.mk (s2Step7EntryGRow.payload++s2Step7EntryGFresh) s2Step7EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step7EntryFvBefore : Arena := s2Step7EntryGAfter
def s2Step7EntryFvAfter : Arena := s2Step7EntryGAfter
def s2Step7EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798],770⟩
def s2Step7EntryFvFresh : List Wire := []
theorem s2Step7EntryFv_distinct : (s2Step7EntryFvRow.sign::s2Step7EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step7EntryFv_owned : (s2Step7EntryFvRow.sign::s2Step7EntryFvRow.payload).toFinset⊆s2Step7EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step7EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step7EntryFv_reserved : s2Step7EntryFvBefore.reserve s2Step7EntryFvFresh.toFinset=some s2Step7EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step7EntryFvFresh,arenaWires]
  · norm_num [s2Step7EntryFvBefore,s2Step7EntryGAfter,s2Step7EntryFvFresh,arenaWires]
  · simp only [s2Step7EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step7EntryFv_checked : planRowResizeLog s2Step7EntryFvBefore s2Step7EntryFvRow 8 s2Step7EntryFvFresh=
    some (s2Step7EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798],770⟩,growRow 770 s2Step7EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step7EntryFvBefore s2Step7EntryFvAfter s2Step7EntryFvRow 8 s2Step7EntryFvFresh
    s2Step7EntryFv_distinct s2Step7EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step7EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step7EntryFvRow.payload++s2Step7EntryFvFresh) s2Step7EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step7EntryGvBefore : Arena := s2Step7EntryGAfter
def s2Step7EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799)),Finset.filter_subset _ _⟩
def s2Step7EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792],771⟩
def s2Step7EntryGvFresh : List Wire := [794, 780]
theorem s2Step7EntryGv_distinct : (s2Step7EntryGvRow.sign::s2Step7EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step7EntryGv_owned : (s2Step7EntryGvRow.sign::s2Step7EntryGvRow.payload).toFinset⊆s2Step7EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step7EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step7EntryGv_reserved : s2Step7EntryGvBefore.reserve s2Step7EntryGvFresh.toFinset=some s2Step7EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step7EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step7EntryGvBefore,s2Step7EntryGAfter,s2Step7EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step7EntryGvAfter,s2Step7EntryGvBefore,s2Step7EntryGAfter,s2Step7EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step7EntryGv_checked : planRowResizeLog s2Step7EntryGvBefore s2Step7EntryGvRow 8 s2Step7EntryGvFresh=
    some (s2Step7EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 780],771⟩,growRow 771 s2Step7EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step7EntryGvBefore s2Step7EntryGvAfter s2Step7EntryGvRow 8 s2Step7EntryGvFresh
    s2Step7EntryGv_distinct s2Step7EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step7EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step7EntryGvRow.payload++s2Step7EntryGvFresh) s2Step7EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step8EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<801)),Finset.filter_subset _ _⟩
def s2Step8EntryFAfter : Arena := s2Step8EntryFBefore
def s2Step8EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step8EntryFFresh : List Wire := []
theorem s2Step8EntryF_distinct : (s2Step8EntryFRow.sign::s2Step8EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step8EntryF_owned : (s2Step8EntryFRow.sign::s2Step8EntryFRow.payload).toFinset⊆s2Step8EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step8EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step8EntryF_reserved : s2Step8EntryFBefore.reserve s2Step8EntryFFresh.toFinset=some s2Step8EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step8EntryFFresh,arenaWires]
  · norm_num [s2Step8EntryFBefore,s2Step8EntryFFresh,arenaWires]
  · simp only [s2Step8EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step8EntryF_checked : planRowResizeLog s2Step8EntryFBefore s2Step8EntryFRow 256 s2Step8EntryFFresh=
    some (s2Step8EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step8EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step8EntryFBefore s2Step8EntryFAfter s2Step8EntryFRow 256 s2Step8EntryFFresh
    s2Step8EntryF_distinct s2Step8EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step8EntryF_reserved
  have rowEq : WindowRow.mk (s2Step8EntryFRow.payload++s2Step8EntryFFresh) s2Step8EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step8EntryGBefore : Arena := s2Step8EntryFBefore
def s2Step8EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<801)),Finset.filter_subset _ _⟩
def s2Step8EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step8EntryGFresh : List Wire := [783]
theorem s2Step8EntryG_distinct : (s2Step8EntryGRow.sign::s2Step8EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step8EntryG_owned : (s2Step8EntryGRow.sign::s2Step8EntryGRow.payload).toFinset⊆s2Step8EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step8EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step8EntryG_reserved : s2Step8EntryGBefore.reserve s2Step8EntryGFresh.toFinset=some s2Step8EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step8EntryGFresh,arenaWires]
  · norm_num [s2Step8EntryGBefore,s2Step8EntryFBefore,s2Step8EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step8EntryGAfter,s2Step8EntryGBefore,s2Step8EntryFBefore,s2Step8EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step8EntryG_checked : planRowResizeLog s2Step8EntryGBefore s2Step8EntryGRow 256 s2Step8EntryGFresh=
    some (s2Step8EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩,growRow 769 s2Step8EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step8EntryGBefore s2Step8EntryGAfter s2Step8EntryGRow 256 s2Step8EntryGFresh
    s2Step8EntryG_distinct s2Step8EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step8EntryG_reserved
  have rowEq : WindowRow.mk (s2Step8EntryGRow.payload++s2Step8EntryGFresh) s2Step8EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step8EntryFvBefore : Arena := s2Step8EntryGAfter
def s2Step8EntryFvAfter : Arena := s2Step8EntryGAfter
def s2Step8EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800],770⟩
def s2Step8EntryFvFresh : List Wire := []
theorem s2Step8EntryFv_distinct : (s2Step8EntryFvRow.sign::s2Step8EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step8EntryFv_owned : (s2Step8EntryFvRow.sign::s2Step8EntryFvRow.payload).toFinset⊆s2Step8EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step8EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step8EntryFv_reserved : s2Step8EntryFvBefore.reserve s2Step8EntryFvFresh.toFinset=some s2Step8EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step8EntryFvFresh,arenaWires]
  · norm_num [s2Step8EntryFvBefore,s2Step8EntryGAfter,s2Step8EntryFvFresh,arenaWires]
  · simp only [s2Step8EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step8EntryFv_checked : planRowResizeLog s2Step8EntryFvBefore s2Step8EntryFvRow 9 s2Step8EntryFvFresh=
    some (s2Step8EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800],770⟩,growRow 770 s2Step8EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step8EntryFvBefore s2Step8EntryFvAfter s2Step8EntryFvRow 9 s2Step8EntryFvFresh
    s2Step8EntryFv_distinct s2Step8EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step8EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step8EntryFvRow.payload++s2Step8EntryFvFresh) s2Step8EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step8EntryGvBefore : Arena := s2Step8EntryGAfter
def s2Step8EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801)),Finset.filter_subset _ _⟩
def s2Step8EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794],771⟩
def s2Step8EntryGvFresh : List Wire := [797, 780]
theorem s2Step8EntryGv_distinct : (s2Step8EntryGvRow.sign::s2Step8EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step8EntryGv_owned : (s2Step8EntryGvRow.sign::s2Step8EntryGvRow.payload).toFinset⊆s2Step8EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step8EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step8EntryGv_reserved : s2Step8EntryGvBefore.reserve s2Step8EntryGvFresh.toFinset=some s2Step8EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step8EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step8EntryGvBefore,s2Step8EntryGAfter,s2Step8EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step8EntryGvAfter,s2Step8EntryGvBefore,s2Step8EntryGAfter,s2Step8EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step8EntryGv_checked : planRowResizeLog s2Step8EntryGvBefore s2Step8EntryGvRow 9 s2Step8EntryGvFresh=
    some (s2Step8EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 780],771⟩,growRow 771 s2Step8EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step8EntryGvBefore s2Step8EntryGvAfter s2Step8EntryGvRow 9 s2Step8EntryGvFresh
    s2Step8EntryGv_distinct s2Step8EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step8EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step8EntryGvRow.payload++s2Step8EntryGvFresh) s2Step8EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step9EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (802≤q ∧ q<803)),Finset.filter_subset _ _⟩
def s2Step9EntryFAfter : Arena := s2Step9EntryFBefore
def s2Step9EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step9EntryFFresh : List Wire := []
theorem s2Step9EntryF_distinct : (s2Step9EntryFRow.sign::s2Step9EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step9EntryF_owned : (s2Step9EntryFRow.sign::s2Step9EntryFRow.payload).toFinset⊆s2Step9EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step9EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step9EntryF_reserved : s2Step9EntryFBefore.reserve s2Step9EntryFFresh.toFinset=some s2Step9EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step9EntryFFresh,arenaWires]
  · norm_num [s2Step9EntryFBefore,s2Step9EntryFFresh,arenaWires]
  · simp only [s2Step9EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step9EntryF_checked : planRowResizeLog s2Step9EntryFBefore s2Step9EntryFRow 256 s2Step9EntryFFresh=
    some (s2Step9EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step9EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step9EntryFBefore s2Step9EntryFAfter s2Step9EntryFRow 256 s2Step9EntryFFresh
    s2Step9EntryF_distinct s2Step9EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step9EntryF_reserved
  have rowEq : WindowRow.mk (s2Step9EntryFRow.payload++s2Step9EntryFFresh) s2Step9EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step9EntryGBefore : Arena := s2Step9EntryFBefore
def s2Step9EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (802≤q ∧ q<803)),Finset.filter_subset _ _⟩
def s2Step9EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step9EntryGFresh : List Wire := [781]
theorem s2Step9EntryG_distinct : (s2Step9EntryGRow.sign::s2Step9EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step9EntryG_owned : (s2Step9EntryGRow.sign::s2Step9EntryGRow.payload).toFinset⊆s2Step9EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step9EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step9EntryG_reserved : s2Step9EntryGBefore.reserve s2Step9EntryGFresh.toFinset=some s2Step9EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step9EntryGFresh,arenaWires]
  · norm_num [s2Step9EntryGBefore,s2Step9EntryFBefore,s2Step9EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step9EntryGAfter,s2Step9EntryGBefore,s2Step9EntryFBefore,s2Step9EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step9EntryG_checked : planRowResizeLog s2Step9EntryGBefore s2Step9EntryGRow 256 s2Step9EntryGFresh=
    some (s2Step9EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩,growRow 769 s2Step9EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step9EntryGBefore s2Step9EntryGAfter s2Step9EntryGRow 256 s2Step9EntryGFresh
    s2Step9EntryG_distinct s2Step9EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step9EntryG_reserved
  have rowEq : WindowRow.mk (s2Step9EntryGRow.payload++s2Step9EntryGFresh) s2Step9EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step9EntryFvBefore : Arena := s2Step9EntryGAfter
def s2Step9EntryFvAfter : Arena := s2Step9EntryGAfter
def s2Step9EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802],770⟩
def s2Step9EntryFvFresh : List Wire := []
theorem s2Step9EntryFv_distinct : (s2Step9EntryFvRow.sign::s2Step9EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step9EntryFv_owned : (s2Step9EntryFvRow.sign::s2Step9EntryFvRow.payload).toFinset⊆s2Step9EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step9EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step9EntryFv_reserved : s2Step9EntryFvBefore.reserve s2Step9EntryFvFresh.toFinset=some s2Step9EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step9EntryFvFresh,arenaWires]
  · norm_num [s2Step9EntryFvBefore,s2Step9EntryGAfter,s2Step9EntryFvFresh,arenaWires]
  · simp only [s2Step9EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step9EntryFv_checked : planRowResizeLog s2Step9EntryFvBefore s2Step9EntryFvRow 10 s2Step9EntryFvFresh=
    some (s2Step9EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802],770⟩,growRow 770 s2Step9EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step9EntryFvBefore s2Step9EntryFvAfter s2Step9EntryFvRow 10 s2Step9EntryFvFresh
    s2Step9EntryFv_distinct s2Step9EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step9EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step9EntryFvRow.payload++s2Step9EntryFvFresh) s2Step9EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step9EntryGvBefore : Arena := s2Step9EntryGAfter
def s2Step9EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803)),Finset.filter_subset _ _⟩
def s2Step9EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797],771⟩
def s2Step9EntryGvFresh : List Wire := [799, 780]
theorem s2Step9EntryGv_distinct : (s2Step9EntryGvRow.sign::s2Step9EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step9EntryGv_owned : (s2Step9EntryGvRow.sign::s2Step9EntryGvRow.payload).toFinset⊆s2Step9EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step9EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (802≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step9EntryGv_reserved : s2Step9EntryGvBefore.reserve s2Step9EntryGvFresh.toFinset=some s2Step9EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step9EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step9EntryGvBefore,s2Step9EntryGAfter,s2Step9EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step9EntryGvAfter,s2Step9EntryGvBefore,s2Step9EntryGAfter,s2Step9EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step9EntryGv_checked : planRowResizeLog s2Step9EntryGvBefore s2Step9EntryGvRow 10 s2Step9EntryGvFresh=
    some (s2Step9EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 780],771⟩,growRow 771 s2Step9EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step9EntryGvBefore s2Step9EntryGvAfter s2Step9EntryGvRow 10 s2Step9EntryGvFresh
    s2Step9EntryGv_distinct s2Step9EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step9EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step9EntryGvRow.payload++s2Step9EntryGvFresh) s2Step9EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step10EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step10EntryFAfter : Arena := s2Step10EntryFBefore
def s2Step10EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step10EntryFFresh : List Wire := []
theorem s2Step10EntryF_distinct : (s2Step10EntryFRow.sign::s2Step10EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step10EntryF_owned : (s2Step10EntryFRow.sign::s2Step10EntryFRow.payload).toFinset⊆s2Step10EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step10EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10EntryF_reserved : s2Step10EntryFBefore.reserve s2Step10EntryFFresh.toFinset=some s2Step10EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step10EntryFFresh,arenaWires]
  · norm_num [s2Step10EntryFBefore,s2Step10EntryFFresh,arenaWires]
  · simp only [s2Step10EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step10EntryF_checked : planRowResizeLog s2Step10EntryFBefore s2Step10EntryFRow 256 s2Step10EntryFFresh=
    some (s2Step10EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step10EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step10EntryFBefore s2Step10EntryFAfter s2Step10EntryFRow 256 s2Step10EntryFFresh
    s2Step10EntryF_distinct s2Step10EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step10EntryF_reserved
  have rowEq : WindowRow.mk (s2Step10EntryFRow.payload++s2Step10EntryFFresh) s2Step10EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step10EntryGBefore : Arena := s2Step10EntryFBefore
def s2Step10EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step10EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step10EntryGFresh : List Wire := [784]
theorem s2Step10EntryG_distinct : (s2Step10EntryGRow.sign::s2Step10EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step10EntryG_owned : (s2Step10EntryGRow.sign::s2Step10EntryGRow.payload).toFinset⊆s2Step10EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step10EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10EntryG_reserved : s2Step10EntryGBefore.reserve s2Step10EntryGFresh.toFinset=some s2Step10EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step10EntryGFresh,arenaWires]
  · norm_num [s2Step10EntryGBefore,s2Step10EntryFBefore,s2Step10EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step10EntryGAfter,s2Step10EntryGBefore,s2Step10EntryFBefore,s2Step10EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step10EntryG_checked : planRowResizeLog s2Step10EntryGBefore s2Step10EntryGRow 256 s2Step10EntryGFresh=
    some (s2Step10EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩,growRow 769 s2Step10EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step10EntryGBefore s2Step10EntryGAfter s2Step10EntryGRow 256 s2Step10EntryGFresh
    s2Step10EntryG_distinct s2Step10EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step10EntryG_reserved
  have rowEq : WindowRow.mk (s2Step10EntryGRow.payload++s2Step10EntryGFresh) s2Step10EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step10EntryFvBefore : Arena := s2Step10EntryGAfter
def s2Step10EntryFvAfter : Arena := s2Step10EntryGAfter
def s2Step10EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804],770⟩
def s2Step10EntryFvFresh : List Wire := []
theorem s2Step10EntryFv_distinct : (s2Step10EntryFvRow.sign::s2Step10EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step10EntryFv_owned : (s2Step10EntryFvRow.sign::s2Step10EntryFvRow.payload).toFinset⊆s2Step10EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step10EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10EntryFv_reserved : s2Step10EntryFvBefore.reserve s2Step10EntryFvFresh.toFinset=some s2Step10EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step10EntryFvFresh,arenaWires]
  · norm_num [s2Step10EntryFvBefore,s2Step10EntryGAfter,s2Step10EntryFvFresh,arenaWires]
  · simp only [s2Step10EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step10EntryFv_checked : planRowResizeLog s2Step10EntryFvBefore s2Step10EntryFvRow 11 s2Step10EntryFvFresh=
    some (s2Step10EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804],770⟩,growRow 770 s2Step10EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step10EntryFvBefore s2Step10EntryFvAfter s2Step10EntryFvRow 11 s2Step10EntryFvFresh
    s2Step10EntryFv_distinct s2Step10EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step10EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step10EntryFvRow.payload++s2Step10EntryFvFresh) s2Step10EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step10EntryGvBefore : Arena := s2Step10EntryGAfter
def s2Step10EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step10EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799],771⟩
def s2Step10EntryGvFresh : List Wire := [801, 780]
theorem s2Step10EntryGv_distinct : (s2Step10EntryGvRow.sign::s2Step10EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step10EntryGv_owned : (s2Step10EntryGvRow.sign::s2Step10EntryGvRow.payload).toFinset⊆s2Step10EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step10EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10EntryGv_reserved : s2Step10EntryGvBefore.reserve s2Step10EntryGvFresh.toFinset=some s2Step10EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step10EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step10EntryGvBefore,s2Step10EntryGAfter,s2Step10EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step10EntryGvAfter,s2Step10EntryGvBefore,s2Step10EntryGAfter,s2Step10EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step10EntryGv_checked : planRowResizeLog s2Step10EntryGvBefore s2Step10EntryGvRow 11 s2Step10EntryGvFresh=
    some (s2Step10EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 780],771⟩,growRow 771 s2Step10EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step10EntryGvBefore s2Step10EntryGvAfter s2Step10EntryGvRow 11 s2Step10EntryGvFresh
    s2Step10EntryGv_distinct s2Step10EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step10EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step10EntryGvRow.payload++s2Step10EntryGvFresh) s2Step10EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step11EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step11EntryFAfter : Arena := s2Step11EntryFBefore
def s2Step11EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step11EntryFFresh : List Wire := []
theorem s2Step11EntryF_distinct : (s2Step11EntryFRow.sign::s2Step11EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step11EntryF_owned : (s2Step11EntryFRow.sign::s2Step11EntryFRow.payload).toFinset⊆s2Step11EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step11EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11EntryF_reserved : s2Step11EntryFBefore.reserve s2Step11EntryFFresh.toFinset=some s2Step11EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step11EntryFFresh,arenaWires]
  · norm_num [s2Step11EntryFBefore,s2Step11EntryFFresh,arenaWires]
  · simp only [s2Step11EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step11EntryF_checked : planRowResizeLog s2Step11EntryFBefore s2Step11EntryFRow 256 s2Step11EntryFFresh=
    some (s2Step11EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step11EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step11EntryFBefore s2Step11EntryFAfter s2Step11EntryFRow 256 s2Step11EntryFFresh
    s2Step11EntryF_distinct s2Step11EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step11EntryF_reserved
  have rowEq : WindowRow.mk (s2Step11EntryFRow.payload++s2Step11EntryFFresh) s2Step11EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step11EntryGBefore : Arena := s2Step11EntryFBefore
def s2Step11EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step11EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step11EntryGFresh : List Wire := [782]
theorem s2Step11EntryG_distinct : (s2Step11EntryGRow.sign::s2Step11EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step11EntryG_owned : (s2Step11EntryGRow.sign::s2Step11EntryGRow.payload).toFinset⊆s2Step11EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step11EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11EntryG_reserved : s2Step11EntryGBefore.reserve s2Step11EntryGFresh.toFinset=some s2Step11EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step11EntryGFresh,arenaWires]
  · norm_num [s2Step11EntryGBefore,s2Step11EntryFBefore,s2Step11EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step11EntryGAfter,s2Step11EntryGBefore,s2Step11EntryFBefore,s2Step11EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step11EntryG_checked : planRowResizeLog s2Step11EntryGBefore s2Step11EntryGRow 256 s2Step11EntryGFresh=
    some (s2Step11EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩,growRow 769 s2Step11EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step11EntryGBefore s2Step11EntryGAfter s2Step11EntryGRow 256 s2Step11EntryGFresh
    s2Step11EntryG_distinct s2Step11EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step11EntryG_reserved
  have rowEq : WindowRow.mk (s2Step11EntryGRow.payload++s2Step11EntryGFresh) s2Step11EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step11EntryFvBefore : Arena := s2Step11EntryGAfter
def s2Step11EntryFvAfter : Arena := s2Step11EntryGAfter
def s2Step11EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806],770⟩
def s2Step11EntryFvFresh : List Wire := []
theorem s2Step11EntryFv_distinct : (s2Step11EntryFvRow.sign::s2Step11EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step11EntryFv_owned : (s2Step11EntryFvRow.sign::s2Step11EntryFvRow.payload).toFinset⊆s2Step11EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step11EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11EntryFv_reserved : s2Step11EntryFvBefore.reserve s2Step11EntryFvFresh.toFinset=some s2Step11EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step11EntryFvFresh,arenaWires]
  · norm_num [s2Step11EntryFvBefore,s2Step11EntryGAfter,s2Step11EntryFvFresh,arenaWires]
  · simp only [s2Step11EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step11EntryFv_checked : planRowResizeLog s2Step11EntryFvBefore s2Step11EntryFvRow 12 s2Step11EntryFvFresh=
    some (s2Step11EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806],770⟩,growRow 770 s2Step11EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step11EntryFvBefore s2Step11EntryFvAfter s2Step11EntryFvRow 12 s2Step11EntryFvFresh
    s2Step11EntryFv_distinct s2Step11EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step11EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step11EntryFvRow.payload++s2Step11EntryFvFresh) s2Step11EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step11EntryGvBefore : Arena := s2Step11EntryGAfter
def s2Step11EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step11EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801],771⟩
def s2Step11EntryGvFresh : List Wire := [803, 780]
theorem s2Step11EntryGv_distinct : (s2Step11EntryGvRow.sign::s2Step11EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step11EntryGv_owned : (s2Step11EntryGvRow.sign::s2Step11EntryGvRow.payload).toFinset⊆s2Step11EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step11EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11EntryGv_reserved : s2Step11EntryGvBefore.reserve s2Step11EntryGvFresh.toFinset=some s2Step11EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step11EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step11EntryGvBefore,s2Step11EntryGAfter,s2Step11EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step11EntryGvAfter,s2Step11EntryGvBefore,s2Step11EntryGAfter,s2Step11EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step11EntryGv_checked : planRowResizeLog s2Step11EntryGvBefore s2Step11EntryGvRow 12 s2Step11EntryGvFresh=
    some (s2Step11EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 780],771⟩,growRow 771 s2Step11EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step11EntryGvBefore s2Step11EntryGvAfter s2Step11EntryGvRow 12 s2Step11EntryGvFresh
    s2Step11EntryGv_distinct s2Step11EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step11EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step11EntryGvRow.payload++s2Step11EntryGvFresh) s2Step11EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step12EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step12EntryFAfter : Arena := s2Step12EntryFBefore
def s2Step12EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step12EntryFFresh : List Wire := []
theorem s2Step12EntryF_distinct : (s2Step12EntryFRow.sign::s2Step12EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step12EntryF_owned : (s2Step12EntryFRow.sign::s2Step12EntryFRow.payload).toFinset⊆s2Step12EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step12EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12EntryF_reserved : s2Step12EntryFBefore.reserve s2Step12EntryFFresh.toFinset=some s2Step12EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step12EntryFFresh,arenaWires]
  · norm_num [s2Step12EntryFBefore,s2Step12EntryFFresh,arenaWires]
  · simp only [s2Step12EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step12EntryF_checked : planRowResizeLog s2Step12EntryFBefore s2Step12EntryFRow 256 s2Step12EntryFFresh=
    some (s2Step12EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step12EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step12EntryFBefore s2Step12EntryFAfter s2Step12EntryFRow 256 s2Step12EntryFFresh
    s2Step12EntryF_distinct s2Step12EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step12EntryF_reserved
  have rowEq : WindowRow.mk (s2Step12EntryFRow.payload++s2Step12EntryFFresh) s2Step12EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step12EntryGBefore : Arena := s2Step12EntryFBefore
def s2Step12EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step12EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step12EntryGFresh : List Wire := [783]
theorem s2Step12EntryG_distinct : (s2Step12EntryGRow.sign::s2Step12EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step12EntryG_owned : (s2Step12EntryGRow.sign::s2Step12EntryGRow.payload).toFinset⊆s2Step12EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step12EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12EntryG_reserved : s2Step12EntryGBefore.reserve s2Step12EntryGFresh.toFinset=some s2Step12EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step12EntryGFresh,arenaWires]
  · norm_num [s2Step12EntryGBefore,s2Step12EntryFBefore,s2Step12EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step12EntryGAfter,s2Step12EntryGBefore,s2Step12EntryFBefore,s2Step12EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step12EntryG_checked : planRowResizeLog s2Step12EntryGBefore s2Step12EntryGRow 256 s2Step12EntryGFresh=
    some (s2Step12EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩,growRow 769 s2Step12EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step12EntryGBefore s2Step12EntryGAfter s2Step12EntryGRow 256 s2Step12EntryGFresh
    s2Step12EntryG_distinct s2Step12EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step12EntryG_reserved
  have rowEq : WindowRow.mk (s2Step12EntryGRow.payload++s2Step12EntryGFresh) s2Step12EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step12EntryFvBefore : Arena := s2Step12EntryGAfter
def s2Step12EntryFvAfter : Arena := s2Step12EntryGAfter
def s2Step12EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808],770⟩
def s2Step12EntryFvFresh : List Wire := []
theorem s2Step12EntryFv_distinct : (s2Step12EntryFvRow.sign::s2Step12EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step12EntryFv_owned : (s2Step12EntryFvRow.sign::s2Step12EntryFvRow.payload).toFinset⊆s2Step12EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step12EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12EntryFv_reserved : s2Step12EntryFvBefore.reserve s2Step12EntryFvFresh.toFinset=some s2Step12EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step12EntryFvFresh,arenaWires]
  · norm_num [s2Step12EntryFvBefore,s2Step12EntryGAfter,s2Step12EntryFvFresh,arenaWires]
  · simp only [s2Step12EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step12EntryFv_checked : planRowResizeLog s2Step12EntryFvBefore s2Step12EntryFvRow 13 s2Step12EntryFvFresh=
    some (s2Step12EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808],770⟩,growRow 770 s2Step12EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step12EntryFvBefore s2Step12EntryFvAfter s2Step12EntryFvRow 13 s2Step12EntryFvFresh
    s2Step12EntryFv_distinct s2Step12EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step12EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step12EntryFvRow.payload++s2Step12EntryFvFresh) s2Step12EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step12EntryGvBefore : Arena := s2Step12EntryGAfter
def s2Step12EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step12EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803],771⟩
def s2Step12EntryGvFresh : List Wire := [805, 780]
theorem s2Step12EntryGv_distinct : (s2Step12EntryGvRow.sign::s2Step12EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step12EntryGv_owned : (s2Step12EntryGvRow.sign::s2Step12EntryGvRow.payload).toFinset⊆s2Step12EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step12EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12EntryGv_reserved : s2Step12EntryGvBefore.reserve s2Step12EntryGvFresh.toFinset=some s2Step12EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step12EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step12EntryGvBefore,s2Step12EntryGAfter,s2Step12EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step12EntryGvAfter,s2Step12EntryGvBefore,s2Step12EntryGAfter,s2Step12EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step12EntryGv_checked : planRowResizeLog s2Step12EntryGvBefore s2Step12EntryGvRow 13 s2Step12EntryGvFresh=
    some (s2Step12EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 780],771⟩,growRow 771 s2Step12EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step12EntryGvBefore s2Step12EntryGvAfter s2Step12EntryGvRow 13 s2Step12EntryGvFresh
    s2Step12EntryGv_distinct s2Step12EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step12EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step12EntryGvRow.payload++s2Step12EntryGvFresh) s2Step12EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step13EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step13EntryFAfter : Arena := s2Step13EntryFBefore
def s2Step13EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step13EntryFFresh : List Wire := []
theorem s2Step13EntryF_distinct : (s2Step13EntryFRow.sign::s2Step13EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step13EntryF_owned : (s2Step13EntryFRow.sign::s2Step13EntryFRow.payload).toFinset⊆s2Step13EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step13EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13EntryF_reserved : s2Step13EntryFBefore.reserve s2Step13EntryFFresh.toFinset=some s2Step13EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step13EntryFFresh,arenaWires]
  · norm_num [s2Step13EntryFBefore,s2Step13EntryFFresh,arenaWires]
  · simp only [s2Step13EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step13EntryF_checked : planRowResizeLog s2Step13EntryFBefore s2Step13EntryFRow 256 s2Step13EntryFFresh=
    some (s2Step13EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step13EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step13EntryFBefore s2Step13EntryFAfter s2Step13EntryFRow 256 s2Step13EntryFFresh
    s2Step13EntryF_distinct s2Step13EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step13EntryF_reserved
  have rowEq : WindowRow.mk (s2Step13EntryFRow.payload++s2Step13EntryFFresh) s2Step13EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step13EntryGBefore : Arena := s2Step13EntryFBefore
def s2Step13EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step13EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step13EntryGFresh : List Wire := [781]
theorem s2Step13EntryG_distinct : (s2Step13EntryGRow.sign::s2Step13EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step13EntryG_owned : (s2Step13EntryGRow.sign::s2Step13EntryGRow.payload).toFinset⊆s2Step13EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step13EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13EntryG_reserved : s2Step13EntryGBefore.reserve s2Step13EntryGFresh.toFinset=some s2Step13EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step13EntryGFresh,arenaWires]
  · norm_num [s2Step13EntryGBefore,s2Step13EntryFBefore,s2Step13EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step13EntryGAfter,s2Step13EntryGBefore,s2Step13EntryFBefore,s2Step13EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step13EntryG_checked : planRowResizeLog s2Step13EntryGBefore s2Step13EntryGRow 256 s2Step13EntryGFresh=
    some (s2Step13EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩,growRow 769 s2Step13EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step13EntryGBefore s2Step13EntryGAfter s2Step13EntryGRow 256 s2Step13EntryGFresh
    s2Step13EntryG_distinct s2Step13EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step13EntryG_reserved
  have rowEq : WindowRow.mk (s2Step13EntryGRow.payload++s2Step13EntryGFresh) s2Step13EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step13EntryFvBefore : Arena := s2Step13EntryGAfter
def s2Step13EntryFvAfter : Arena := s2Step13EntryGAfter
def s2Step13EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810],770⟩
def s2Step13EntryFvFresh : List Wire := []
theorem s2Step13EntryFv_distinct : (s2Step13EntryFvRow.sign::s2Step13EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step13EntryFv_owned : (s2Step13EntryFvRow.sign::s2Step13EntryFvRow.payload).toFinset⊆s2Step13EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step13EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13EntryFv_reserved : s2Step13EntryFvBefore.reserve s2Step13EntryFvFresh.toFinset=some s2Step13EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step13EntryFvFresh,arenaWires]
  · norm_num [s2Step13EntryFvBefore,s2Step13EntryGAfter,s2Step13EntryFvFresh,arenaWires]
  · simp only [s2Step13EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step13EntryFv_checked : planRowResizeLog s2Step13EntryFvBefore s2Step13EntryFvRow 14 s2Step13EntryFvFresh=
    some (s2Step13EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810],770⟩,growRow 770 s2Step13EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step13EntryFvBefore s2Step13EntryFvAfter s2Step13EntryFvRow 14 s2Step13EntryFvFresh
    s2Step13EntryFv_distinct s2Step13EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step13EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step13EntryFvRow.payload++s2Step13EntryFvFresh) s2Step13EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step13EntryGvBefore : Arena := s2Step13EntryGAfter
def s2Step13EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step13EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805],771⟩
def s2Step13EntryGvFresh : List Wire := [807, 780]
theorem s2Step13EntryGv_distinct : (s2Step13EntryGvRow.sign::s2Step13EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step13EntryGv_owned : (s2Step13EntryGvRow.sign::s2Step13EntryGvRow.payload).toFinset⊆s2Step13EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step13EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13EntryGv_reserved : s2Step13EntryGvBefore.reserve s2Step13EntryGvFresh.toFinset=some s2Step13EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step13EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step13EntryGvBefore,s2Step13EntryGAfter,s2Step13EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step13EntryGvAfter,s2Step13EntryGvBefore,s2Step13EntryGAfter,s2Step13EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step13EntryGv_checked : planRowResizeLog s2Step13EntryGvBefore s2Step13EntryGvRow 14 s2Step13EntryGvFresh=
    some (s2Step13EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 780],771⟩,growRow 771 s2Step13EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step13EntryGvBefore s2Step13EntryGvAfter s2Step13EntryGvRow 14 s2Step13EntryGvFresh
    s2Step13EntryGv_distinct s2Step13EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step13EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step13EntryGvRow.payload++s2Step13EntryGvFresh) s2Step13EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step14EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step14EntryFAfter : Arena := s2Step14EntryFBefore
def s2Step14EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step14EntryFFresh : List Wire := []
theorem s2Step14EntryF_distinct : (s2Step14EntryFRow.sign::s2Step14EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step14EntryF_owned : (s2Step14EntryFRow.sign::s2Step14EntryFRow.payload).toFinset⊆s2Step14EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step14EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14EntryF_reserved : s2Step14EntryFBefore.reserve s2Step14EntryFFresh.toFinset=some s2Step14EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step14EntryFFresh,arenaWires]
  · norm_num [s2Step14EntryFBefore,s2Step14EntryFFresh,arenaWires]
  · simp only [s2Step14EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step14EntryF_checked : planRowResizeLog s2Step14EntryFBefore s2Step14EntryFRow 256 s2Step14EntryFFresh=
    some (s2Step14EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step14EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step14EntryFBefore s2Step14EntryFAfter s2Step14EntryFRow 256 s2Step14EntryFFresh
    s2Step14EntryF_distinct s2Step14EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step14EntryF_reserved
  have rowEq : WindowRow.mk (s2Step14EntryFRow.payload++s2Step14EntryFFresh) s2Step14EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step14EntryGBefore : Arena := s2Step14EntryFBefore
def s2Step14EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step14EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step14EntryGFresh : List Wire := [784]
theorem s2Step14EntryG_distinct : (s2Step14EntryGRow.sign::s2Step14EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step14EntryG_owned : (s2Step14EntryGRow.sign::s2Step14EntryGRow.payload).toFinset⊆s2Step14EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step14EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14EntryG_reserved : s2Step14EntryGBefore.reserve s2Step14EntryGFresh.toFinset=some s2Step14EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step14EntryGFresh,arenaWires]
  · norm_num [s2Step14EntryGBefore,s2Step14EntryFBefore,s2Step14EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step14EntryGAfter,s2Step14EntryGBefore,s2Step14EntryFBefore,s2Step14EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step14EntryG_checked : planRowResizeLog s2Step14EntryGBefore s2Step14EntryGRow 256 s2Step14EntryGFresh=
    some (s2Step14EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩,growRow 769 s2Step14EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step14EntryGBefore s2Step14EntryGAfter s2Step14EntryGRow 256 s2Step14EntryGFresh
    s2Step14EntryG_distinct s2Step14EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step14EntryG_reserved
  have rowEq : WindowRow.mk (s2Step14EntryGRow.payload++s2Step14EntryGFresh) s2Step14EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step14EntryFvBefore : Arena := s2Step14EntryGAfter
def s2Step14EntryFvAfter : Arena := s2Step14EntryGAfter
def s2Step14EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812],770⟩
def s2Step14EntryFvFresh : List Wire := []
theorem s2Step14EntryFv_distinct : (s2Step14EntryFvRow.sign::s2Step14EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step14EntryFv_owned : (s2Step14EntryFvRow.sign::s2Step14EntryFvRow.payload).toFinset⊆s2Step14EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step14EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14EntryFv_reserved : s2Step14EntryFvBefore.reserve s2Step14EntryFvFresh.toFinset=some s2Step14EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step14EntryFvFresh,arenaWires]
  · norm_num [s2Step14EntryFvBefore,s2Step14EntryGAfter,s2Step14EntryFvFresh,arenaWires]
  · simp only [s2Step14EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step14EntryFv_checked : planRowResizeLog s2Step14EntryFvBefore s2Step14EntryFvRow 15 s2Step14EntryFvFresh=
    some (s2Step14EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812],770⟩,growRow 770 s2Step14EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step14EntryFvBefore s2Step14EntryFvAfter s2Step14EntryFvRow 15 s2Step14EntryFvFresh
    s2Step14EntryFv_distinct s2Step14EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step14EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step14EntryFvRow.payload++s2Step14EntryFvFresh) s2Step14EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step14EntryGvBefore : Arena := s2Step14EntryGAfter
def s2Step14EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step14EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807],771⟩
def s2Step14EntryGvFresh : List Wire := [809, 780]
theorem s2Step14EntryGv_distinct : (s2Step14EntryGvRow.sign::s2Step14EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step14EntryGv_owned : (s2Step14EntryGvRow.sign::s2Step14EntryGvRow.payload).toFinset⊆s2Step14EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step14EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14EntryGv_reserved : s2Step14EntryGvBefore.reserve s2Step14EntryGvFresh.toFinset=some s2Step14EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step14EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step14EntryGvBefore,s2Step14EntryGAfter,s2Step14EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step14EntryGvAfter,s2Step14EntryGvBefore,s2Step14EntryGAfter,s2Step14EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step14EntryGv_checked : planRowResizeLog s2Step14EntryGvBefore s2Step14EntryGvRow 15 s2Step14EntryGvFresh=
    some (s2Step14EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 780],771⟩,growRow 771 s2Step14EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step14EntryGvBefore s2Step14EntryGvAfter s2Step14EntryGvRow 15 s2Step14EntryGvFresh
    s2Step14EntryGv_distinct s2Step14EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step14EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step14EntryGvRow.payload++s2Step14EntryGvFresh) s2Step14EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step15EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step15EntryFAfter : Arena := s2Step15EntryFBefore
def s2Step15EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩
def s2Step15EntryFFresh : List Wire := []
theorem s2Step15EntryF_distinct : (s2Step15EntryFRow.sign::s2Step15EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step15EntryF_owned : (s2Step15EntryFRow.sign::s2Step15EntryFRow.payload).toFinset⊆s2Step15EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step15EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15EntryF_reserved : s2Step15EntryFBefore.reserve s2Step15EntryFFresh.toFinset=some s2Step15EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step15EntryFFresh,arenaWires]
  · norm_num [s2Step15EntryFBefore,s2Step15EntryFFresh,arenaWires]
  · simp only [s2Step15EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step15EntryF_checked : planRowResizeLog s2Step15EntryFBefore s2Step15EntryFRow 256 s2Step15EntryFFresh=
    some (s2Step15EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩,growRow 768 s2Step15EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step15EntryFBefore s2Step15EntryFAfter s2Step15EntryFRow 256 s2Step15EntryFFresh
    s2Step15EntryF_distinct s2Step15EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step15EntryF_reserved
  have rowEq : WindowRow.mk (s2Step15EntryFRow.payload++s2Step15EntryFFresh) s2Step15EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step15EntryGBefore : Arena := s2Step15EntryFBefore
def s2Step15EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step15EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],769⟩
def s2Step15EntryGFresh : List Wire := [782]
theorem s2Step15EntryG_distinct : (s2Step15EntryGRow.sign::s2Step15EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step15EntryG_owned : (s2Step15EntryGRow.sign::s2Step15EntryGRow.payload).toFinset⊆s2Step15EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step15EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15EntryG_reserved : s2Step15EntryGBefore.reserve s2Step15EntryGFresh.toFinset=some s2Step15EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step15EntryGFresh,arenaWires]
  · norm_num [s2Step15EntryGBefore,s2Step15EntryFBefore,s2Step15EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step15EntryGAfter,s2Step15EntryGBefore,s2Step15EntryFBefore,s2Step15EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step15EntryG_checked : planRowResizeLog s2Step15EntryGBefore s2Step15EntryGRow 256 s2Step15EntryGFresh=
    some (s2Step15EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩,growRow 769 s2Step15EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step15EntryGBefore s2Step15EntryGAfter s2Step15EntryGRow 256 s2Step15EntryGFresh
    s2Step15EntryG_distinct s2Step15EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step15EntryG_reserved
  have rowEq : WindowRow.mk (s2Step15EntryGRow.payload++s2Step15EntryGFresh) s2Step15EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step15EntryFvBefore : Arena := s2Step15EntryGAfter
def s2Step15EntryFvAfter : Arena := s2Step15EntryGAfter
def s2Step15EntryFvRow : WindowRow := ⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815],770⟩
def s2Step15EntryFvFresh : List Wire := []
theorem s2Step15EntryFv_distinct : (s2Step15EntryFvRow.sign::s2Step15EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step15EntryFv_owned : (s2Step15EntryFvRow.sign::s2Step15EntryFvRow.payload).toFinset⊆s2Step15EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step15EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15EntryFv_reserved : s2Step15EntryFvBefore.reserve s2Step15EntryFvFresh.toFinset=some s2Step15EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step15EntryFvFresh,arenaWires]
  · norm_num [s2Step15EntryFvBefore,s2Step15EntryGAfter,s2Step15EntryFvFresh,arenaWires]
  · simp only [s2Step15EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step15EntryFv_checked : planRowResizeLog s2Step15EntryFvBefore s2Step15EntryFvRow 16 s2Step15EntryFvFresh=
    some (s2Step15EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815],770⟩,growRow 770 s2Step15EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step15EntryFvBefore s2Step15EntryFvAfter s2Step15EntryFvRow 16 s2Step15EntryFvFresh
    s2Step15EntryFv_distinct s2Step15EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step15EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step15EntryFvRow.payload++s2Step15EntryFvFresh) s2Step15EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step15EntryGvBefore : Arena := s2Step15EntryGAfter
def s2Step15EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step15EntryGvRow : WindowRow := ⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809],771⟩
def s2Step15EntryGvFresh : List Wire := [811, 780]
theorem s2Step15EntryGv_distinct : (s2Step15EntryGvRow.sign::s2Step15EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step15EntryGv_owned : (s2Step15EntryGvRow.sign::s2Step15EntryGvRow.payload).toFinset⊆s2Step15EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step15EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15EntryGv_reserved : s2Step15EntryGvBefore.reserve s2Step15EntryGvFresh.toFinset=some s2Step15EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step15EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step15EntryGvBefore,s2Step15EntryGAfter,s2Step15EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step15EntryGvAfter,s2Step15EntryGvBefore,s2Step15EntryGAfter,s2Step15EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step15EntryGv_checked : planRowResizeLog s2Step15EntryGvBefore s2Step15EntryGvRow 16 s2Step15EntryGvFresh=
    some (s2Step15EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 780],771⟩,growRow 771 s2Step15EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step15EntryGvBefore s2Step15EntryGvAfter s2Step15EntryGvRow 16 s2Step15EntryGvFresh
    s2Step15EntryGv_distinct s2Step15EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step15EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step15EntryGvRow.payload++s2Step15EntryGvFresh) s2Step15EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

end ECDSAAdd.Arithmetic.Paper935
