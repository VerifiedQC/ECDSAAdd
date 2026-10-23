import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
namespace ECDSAAdd.Arithmetic.Paper935
def s2Step0EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780)),Finset.filter_subset _ _⟩
def s2Step0EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780)),Finset.filter_subset _ _⟩
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
def s2Step0EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780)),Finset.filter_subset _ _⟩
def s2Step0EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step0EntryGBefore,s2Step0EntryGFresh,arenaWires]
  · simp only [s2Step0EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step0EntryG_checked : planRowResizeLog s2Step0EntryGBefore s2Step0EntryGRow 256 s2Step0EntryGFresh=
    some (s2Step0EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255],769⟩,growRow 769 s2Step0EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step0EntryGBefore s2Step0EntryGAfter s2Step0EntryGRow 256 s2Step0EntryGFresh
    s2Step0EntryG_distinct s2Step0EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step0EntryG_reserved
  have rowEq : WindowRow.mk (s2Step0EntryGRow.payload++s2Step0EntryGFresh) s2Step0EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step0EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780)),Finset.filter_subset _ _⟩
def s2Step0EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step0EntryFvBefore,s2Step0EntryFvFresh,arenaWires]
  · simp only [s2Step0EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step0EntryFv_checked : planRowResizeLog s2Step0EntryFvBefore s2Step0EntryFvRow 1 s2Step0EntryFvFresh=
    some (s2Step0EntryFvAfter,⟨[778],770⟩,growRow 770 s2Step0EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step0EntryFvBefore s2Step0EntryFvAfter s2Step0EntryFvRow 1 s2Step0EntryFvFresh
    s2Step0EntryFv_distinct s2Step0EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step0EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step0EntryFvRow.payload++s2Step0EntryFvFresh) s2Step0EntryFvRow.sign=⟨[778],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step0EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780)),Finset.filter_subset _ _⟩
def s2Step0EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step0EntryGvBefore,s2Step0EntryGvFresh,arenaWires]
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
def s2Step1EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
def s2Step1EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step1EntryGBefore,s2Step1EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step1EntryGAfter,s2Step1EntryGBefore,s2Step1EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step1EntryG_checked : planRowResizeLog s2Step1EntryGBefore s2Step1EntryGRow 256 s2Step1EntryGFresh=
    some (s2Step1EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩,growRow 769 s2Step1EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step1EntryGBefore s2Step1EntryGAfter s2Step1EntryGRow 256 s2Step1EntryGFresh
    s2Step1EntryG_distinct s2Step1EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step1EntryG_reserved
  have rowEq : WindowRow.mk (s2Step1EntryGRow.payload++s2Step1EntryGFresh) s2Step1EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step1EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step1EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step1EntryFvBefore,s2Step1EntryFvFresh,arenaWires]
  · simp only [s2Step1EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step1EntryFv_checked : planRowResizeLog s2Step1EntryFvBefore s2Step1EntryFvRow 2 s2Step1EntryFvFresh=
    some (s2Step1EntryFvAfter,⟨[255, 785],770⟩,growRow 770 s2Step1EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step1EntryFvBefore s2Step1EntryFvAfter s2Step1EntryFvRow 2 s2Step1EntryFvFresh
    s2Step1EntryFv_distinct s2Step1EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step1EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step1EntryFvRow.payload++s2Step1EntryFvFresh) s2Step1EntryFvRow.sign=⟨[255, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step1EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<786) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step1EntryGvBefore,s2Step1EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step1EntryGvAfter,s2Step1EntryGvBefore,s2Step1EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
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
def s2Step2EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
def s2Step2EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step2EntryGBefore,s2Step2EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step2EntryGAfter,s2Step2EntryGBefore,s2Step2EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step2EntryG_checked : planRowResizeLog s2Step2EntryGBefore s2Step2EntryGRow 256 s2Step2EntryGFresh=
    some (s2Step2EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩,growRow 769 s2Step2EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step2EntryGBefore s2Step2EntryGAfter s2Step2EntryGRow 256 s2Step2EntryGFresh
    s2Step2EntryG_distinct s2Step2EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step2EntryG_reserved
  have rowEq : WindowRow.mk (s2Step2EntryGRow.payload++s2Step2EntryGFresh) s2Step2EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step2EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step2EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step2EntryFvBefore,s2Step2EntryFvFresh,arenaWires]
  · simp only [s2Step2EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step2EntryFv_checked : planRowResizeLog s2Step2EntryFvBefore s2Step2EntryFvRow 3 s2Step2EntryFvFresh=
    some (s2Step2EntryFvAfter,⟨[255, 785, 787],770⟩,growRow 770 s2Step2EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step2EntryFvBefore s2Step2EntryFvAfter s2Step2EntryFvRow 3 s2Step2EntryFvFresh
    s2Step2EntryFv_distinct s2Step2EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step2EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step2EntryFvRow.payload++s2Step2EntryFvFresh) s2Step2EntryFvRow.sign=⟨[255, 785, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step2EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step2EntryGvBefore,s2Step2EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step2EntryGvAfter,s2Step2EntryGvBefore,s2Step2EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
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
def s2Step3EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
def s2Step3EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step3EntryGBefore,s2Step3EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step3EntryGAfter,s2Step3EntryGBefore,s2Step3EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step3EntryG_checked : planRowResizeLog s2Step3EntryGBefore s2Step3EntryGRow 256 s2Step3EntryGFresh=
    some (s2Step3EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩,growRow 769 s2Step3EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step3EntryGBefore s2Step3EntryGAfter s2Step3EntryGRow 256 s2Step3EntryGFresh
    s2Step3EntryG_distinct s2Step3EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step3EntryG_reserved
  have rowEq : WindowRow.mk (s2Step3EntryGRow.payload++s2Step3EntryGFresh) s2Step3EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step3EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step3EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step3EntryFvBefore,s2Step3EntryFvFresh,arenaWires]
  · simp only [s2Step3EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step3EntryFv_checked : planRowResizeLog s2Step3EntryFvBefore s2Step3EntryFvRow 4 s2Step3EntryFvFresh=
    some (s2Step3EntryFvAfter,⟨[255, 785, 787, 789],770⟩,growRow 770 s2Step3EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step3EntryFvBefore s2Step3EntryFvAfter s2Step3EntryFvRow 4 s2Step3EntryFvFresh
    s2Step3EntryFv_distinct s2Step3EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step3EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step3EntryFvRow.payload++s2Step3EntryFvFresh) s2Step3EntryFvRow.sign=⟨[255, 785, 787, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step3EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step3EntryGvBefore,s2Step3EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step3EntryGvAfter,s2Step3EntryGvBefore,s2Step3EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
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
def s2Step4EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
def s2Step4EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step4EntryGBefore,s2Step4EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step4EntryGAfter,s2Step4EntryGBefore,s2Step4EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step4EntryG_checked : planRowResizeLog s2Step4EntryGBefore s2Step4EntryGRow 256 s2Step4EntryGFresh=
    some (s2Step4EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩,growRow 769 s2Step4EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step4EntryGBefore s2Step4EntryGAfter s2Step4EntryGRow 256 s2Step4EntryGFresh
    s2Step4EntryG_distinct s2Step4EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step4EntryG_reserved
  have rowEq : WindowRow.mk (s2Step4EntryGRow.payload++s2Step4EntryGFresh) s2Step4EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step4EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step4EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step4EntryFvBefore,s2Step4EntryFvFresh,arenaWires]
  · simp only [s2Step4EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step4EntryFv_checked : planRowResizeLog s2Step4EntryFvBefore s2Step4EntryFvRow 5 s2Step4EntryFvFresh=
    some (s2Step4EntryFvAfter,⟨[255, 785, 787, 789, 791],770⟩,growRow 770 s2Step4EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step4EntryFvBefore s2Step4EntryFvAfter s2Step4EntryFvRow 5 s2Step4EntryFvFresh
    s2Step4EntryFv_distinct s2Step4EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step4EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step4EntryFvRow.payload++s2Step4EntryFvFresh) s2Step4EntryFvRow.sign=⟨[255, 785, 787, 789, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step4EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step4EntryGvBefore,s2Step4EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step4EntryGvAfter,s2Step4EntryGvBefore,s2Step4EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
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
def s2Step5EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
def s2Step5EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step5EntryGBefore,s2Step5EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step5EntryGAfter,s2Step5EntryGBefore,s2Step5EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step5EntryG_checked : planRowResizeLog s2Step5EntryGBefore s2Step5EntryGRow 256 s2Step5EntryGFresh=
    some (s2Step5EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩,growRow 769 s2Step5EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step5EntryGBefore s2Step5EntryGAfter s2Step5EntryGRow 256 s2Step5EntryGFresh
    s2Step5EntryG_distinct s2Step5EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step5EntryG_reserved
  have rowEq : WindowRow.mk (s2Step5EntryGRow.payload++s2Step5EntryGFresh) s2Step5EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step5EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step5EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step5EntryFvBefore,s2Step5EntryFvFresh,arenaWires]
  · simp only [s2Step5EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step5EntryFv_checked : planRowResizeLog s2Step5EntryFvBefore s2Step5EntryFvRow 6 s2Step5EntryFvFresh=
    some (s2Step5EntryFvAfter,⟨[255, 785, 787, 789, 791, 793],770⟩,growRow 770 s2Step5EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step5EntryFvBefore s2Step5EntryFvAfter s2Step5EntryFvRow 6 s2Step5EntryFvFresh
    s2Step5EntryFv_distinct s2Step5EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step5EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step5EntryFvRow.payload++s2Step5EntryFvFresh) s2Step5EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step5EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step5EntryGvBefore,s2Step5EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step5EntryGvAfter,s2Step5EntryGvBefore,s2Step5EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
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
def s2Step6EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797)),Finset.filter_subset _ _⟩
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
def s2Step6EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step6EntryGBefore,s2Step6EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step6EntryGAfter,s2Step6EntryGBefore,s2Step6EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step6EntryG_checked : planRowResizeLog s2Step6EntryGBefore s2Step6EntryGRow 256 s2Step6EntryGFresh=
    some (s2Step6EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩,growRow 769 s2Step6EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step6EntryGBefore s2Step6EntryGAfter s2Step6EntryGRow 256 s2Step6EntryGFresh
    s2Step6EntryG_distinct s2Step6EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step6EntryG_reserved
  have rowEq : WindowRow.mk (s2Step6EntryGRow.payload++s2Step6EntryGFresh) s2Step6EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step6EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797)),Finset.filter_subset _ _⟩
def s2Step6EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step6EntryFvBefore,s2Step6EntryFvFresh,arenaWires]
  · simp only [s2Step6EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step6EntryFv_checked : planRowResizeLog s2Step6EntryFvBefore s2Step6EntryFvRow 7 s2Step6EntryFvFresh=
    some (s2Step6EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796],770⟩,growRow 770 s2Step6EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step6EntryFvBefore s2Step6EntryFvAfter s2Step6EntryFvRow 7 s2Step6EntryFvFresh
    s2Step6EntryFv_distinct s2Step6EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step6EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step6EntryFvRow.payload++s2Step6EntryFvFresh) s2Step6EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step6EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step6EntryGvBefore,s2Step6EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step6EntryGvAfter,s2Step6EntryGvBefore,s2Step6EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
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
def s2Step7EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<799)),Finset.filter_subset _ _⟩
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
def s2Step7EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<799)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step7EntryGBefore,s2Step7EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step7EntryGAfter,s2Step7EntryGBefore,s2Step7EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step7EntryG_checked : planRowResizeLog s2Step7EntryGBefore s2Step7EntryGRow 256 s2Step7EntryGFresh=
    some (s2Step7EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩,growRow 769 s2Step7EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step7EntryGBefore s2Step7EntryGAfter s2Step7EntryGRow 256 s2Step7EntryGFresh
    s2Step7EntryG_distinct s2Step7EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step7EntryG_reserved
  have rowEq : WindowRow.mk (s2Step7EntryGRow.payload++s2Step7EntryGFresh) s2Step7EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step7EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<799)),Finset.filter_subset _ _⟩
def s2Step7EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<799)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step7EntryFvBefore,s2Step7EntryFvFresh,arenaWires]
  · simp only [s2Step7EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step7EntryFv_checked : planRowResizeLog s2Step7EntryFvBefore s2Step7EntryFvRow 8 s2Step7EntryFvFresh=
    some (s2Step7EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798],770⟩,growRow 770 s2Step7EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step7EntryFvBefore s2Step7EntryFvAfter s2Step7EntryFvRow 8 s2Step7EntryFvFresh
    s2Step7EntryFv_distinct s2Step7EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step7EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step7EntryFvRow.payload++s2Step7EntryFvFresh) s2Step7EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step7EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (798≤q ∧ q<799)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step7EntryGvBefore,s2Step7EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step7EntryGvAfter,s2Step7EntryGvBefore,s2Step7EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
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
def s2Step8EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<801)),Finset.filter_subset _ _⟩
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
def s2Step8EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<801)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step8EntryGBefore,s2Step8EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step8EntryGAfter,s2Step8EntryGBefore,s2Step8EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step8EntryG_checked : planRowResizeLog s2Step8EntryGBefore s2Step8EntryGRow 256 s2Step8EntryGFresh=
    some (s2Step8EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩,growRow 769 s2Step8EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step8EntryGBefore s2Step8EntryGAfter s2Step8EntryGRow 256 s2Step8EntryGFresh
    s2Step8EntryG_distinct s2Step8EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step8EntryG_reserved
  have rowEq : WindowRow.mk (s2Step8EntryGRow.payload++s2Step8EntryGFresh) s2Step8EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step8EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<801)),Finset.filter_subset _ _⟩
def s2Step8EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<801)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step8EntryFvBefore,s2Step8EntryFvFresh,arenaWires]
  · simp only [s2Step8EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step8EntryFv_checked : planRowResizeLog s2Step8EntryFvBefore s2Step8EntryFvRow 9 s2Step8EntryFvFresh=
    some (s2Step8EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800],770⟩,growRow 770 s2Step8EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step8EntryFvBefore s2Step8EntryFvAfter s2Step8EntryFvRow 9 s2Step8EntryFvFresh
    s2Step8EntryFv_distinct s2Step8EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step8EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step8EntryFvRow.payload++s2Step8EntryFvFresh) s2Step8EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step8EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<801)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step8EntryGvBefore,s2Step8EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step8EntryGvAfter,s2Step8EntryGvBefore,s2Step8EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
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
def s2Step9EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (802≤q ∧ q<803)),Finset.filter_subset _ _⟩
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
def s2Step9EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (802≤q ∧ q<803)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step9EntryGBefore,s2Step9EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step9EntryGAfter,s2Step9EntryGBefore,s2Step9EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step9EntryG_checked : planRowResizeLog s2Step9EntryGBefore s2Step9EntryGRow 256 s2Step9EntryGFresh=
    some (s2Step9EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩,growRow 769 s2Step9EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step9EntryGBefore s2Step9EntryGAfter s2Step9EntryGRow 256 s2Step9EntryGFresh
    s2Step9EntryG_distinct s2Step9EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step9EntryG_reserved
  have rowEq : WindowRow.mk (s2Step9EntryGRow.payload++s2Step9EntryGFresh) s2Step9EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step9EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (802≤q ∧ q<803)),Finset.filter_subset _ _⟩
def s2Step9EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (802≤q ∧ q<803)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step9EntryFvBefore,s2Step9EntryFvFresh,arenaWires]
  · simp only [s2Step9EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step9EntryFv_checked : planRowResizeLog s2Step9EntryFvBefore s2Step9EntryFvRow 10 s2Step9EntryFvFresh=
    some (s2Step9EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802],770⟩,growRow 770 s2Step9EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step9EntryFvBefore s2Step9EntryFvAfter s2Step9EntryFvRow 10 s2Step9EntryFvFresh
    s2Step9EntryFv_distinct s2Step9EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step9EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step9EntryFvRow.payload++s2Step9EntryFvFresh) s2Step9EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step9EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (802≤q ∧ q<803)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step9EntryGvBefore,s2Step9EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step9EntryGvAfter,s2Step9EntryGvBefore,s2Step9EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
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
def s2Step10EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
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
def s2Step10EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<801) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step10EntryGBefore,s2Step10EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step10EntryGAfter,s2Step10EntryGBefore,s2Step10EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step10EntryG_checked : planRowResizeLog s2Step10EntryGBefore s2Step10EntryGRow 256 s2Step10EntryGFresh=
    some (s2Step10EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩,growRow 769 s2Step10EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step10EntryGBefore s2Step10EntryGAfter s2Step10EntryGRow 256 s2Step10EntryGFresh
    s2Step10EntryG_distinct s2Step10EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step10EntryG_reserved
  have rowEq : WindowRow.mk (s2Step10EntryGRow.payload++s2Step10EntryGFresh) s2Step10EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step10EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step10EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step10EntryFvBefore,s2Step10EntryFvFresh,arenaWires]
  · simp only [s2Step10EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step10EntryFv_checked : planRowResizeLog s2Step10EntryFvBefore s2Step10EntryFvRow 11 s2Step10EntryFvFresh=
    some (s2Step10EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804],770⟩,growRow 770 s2Step10EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step10EntryFvBefore s2Step10EntryFvAfter s2Step10EntryFvRow 11 s2Step10EntryFvFresh
    s2Step10EntryFv_distinct s2Step10EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step10EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step10EntryFvRow.payload++s2Step10EntryFvFresh) s2Step10EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step10EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step10EntryGvBefore,s2Step10EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step10EntryGvAfter,s2Step10EntryGvBefore,s2Step10EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
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
def s2Step11EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
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
def s2Step11EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step11EntryGBefore,s2Step11EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step11EntryGAfter,s2Step11EntryGBefore,s2Step11EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step11EntryG_checked : planRowResizeLog s2Step11EntryGBefore s2Step11EntryGRow 256 s2Step11EntryGFresh=
    some (s2Step11EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩,growRow 769 s2Step11EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step11EntryGBefore s2Step11EntryGAfter s2Step11EntryGRow 256 s2Step11EntryGFresh
    s2Step11EntryG_distinct s2Step11EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step11EntryG_reserved
  have rowEq : WindowRow.mk (s2Step11EntryGRow.payload++s2Step11EntryGFresh) s2Step11EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step11EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step11EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step11EntryFvBefore,s2Step11EntryFvFresh,arenaWires]
  · simp only [s2Step11EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step11EntryFv_checked : planRowResizeLog s2Step11EntryFvBefore s2Step11EntryFvRow 12 s2Step11EntryFvFresh=
    some (s2Step11EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806],770⟩,growRow 770 s2Step11EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step11EntryFvBefore s2Step11EntryFvAfter s2Step11EntryFvRow 12 s2Step11EntryFvFresh
    s2Step11EntryFv_distinct s2Step11EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step11EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step11EntryFvRow.payload++s2Step11EntryFvFresh) s2Step11EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step11EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step11EntryGvBefore,s2Step11EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step11EntryGvAfter,s2Step11EntryGvBefore,s2Step11EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
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
def s2Step12EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
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
def s2Step12EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step12EntryGBefore,s2Step12EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step12EntryGAfter,s2Step12EntryGBefore,s2Step12EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step12EntryG_checked : planRowResizeLog s2Step12EntryGBefore s2Step12EntryGRow 256 s2Step12EntryGFresh=
    some (s2Step12EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩,growRow 769 s2Step12EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step12EntryGBefore s2Step12EntryGAfter s2Step12EntryGRow 256 s2Step12EntryGFresh
    s2Step12EntryG_distinct s2Step12EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step12EntryG_reserved
  have rowEq : WindowRow.mk (s2Step12EntryGRow.payload++s2Step12EntryGFresh) s2Step12EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step12EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step12EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step12EntryFvBefore,s2Step12EntryFvFresh,arenaWires]
  · simp only [s2Step12EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step12EntryFv_checked : planRowResizeLog s2Step12EntryFvBefore s2Step12EntryFvRow 13 s2Step12EntryFvFresh=
    some (s2Step12EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808],770⟩,growRow 770 s2Step12EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step12EntryFvBefore s2Step12EntryFvAfter s2Step12EntryFvRow 13 s2Step12EntryFvFresh
    s2Step12EntryFv_distinct s2Step12EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step12EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step12EntryFvRow.payload++s2Step12EntryFvFresh) s2Step12EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step12EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step12EntryGvBefore,s2Step12EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step12EntryGvAfter,s2Step12EntryGvBefore,s2Step12EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
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
def s2Step13EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
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
def s2Step13EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step13EntryGBefore,s2Step13EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step13EntryGAfter,s2Step13EntryGBefore,s2Step13EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step13EntryG_checked : planRowResizeLog s2Step13EntryGBefore s2Step13EntryGRow 256 s2Step13EntryGFresh=
    some (s2Step13EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩,growRow 769 s2Step13EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step13EntryGBefore s2Step13EntryGAfter s2Step13EntryGRow 256 s2Step13EntryGFresh
    s2Step13EntryG_distinct s2Step13EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step13EntryG_reserved
  have rowEq : WindowRow.mk (s2Step13EntryGRow.payload++s2Step13EntryGFresh) s2Step13EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step13EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step13EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step13EntryFvBefore,s2Step13EntryFvFresh,arenaWires]
  · simp only [s2Step13EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step13EntryFv_checked : planRowResizeLog s2Step13EntryFvBefore s2Step13EntryFvRow 14 s2Step13EntryFvFresh=
    some (s2Step13EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810],770⟩,growRow 770 s2Step13EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step13EntryFvBefore s2Step13EntryFvAfter s2Step13EntryFvRow 14 s2Step13EntryFvFresh
    s2Step13EntryFv_distinct s2Step13EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step13EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step13EntryFvRow.payload++s2Step13EntryFvFresh) s2Step13EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step13EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<807) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step13EntryGvBefore,s2Step13EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step13EntryGvAfter,s2Step13EntryGvBefore,s2Step13EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
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
def s2Step14EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
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
def s2Step14EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step14EntryGBefore,s2Step14EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step14EntryGAfter,s2Step14EntryGBefore,s2Step14EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step14EntryG_checked : planRowResizeLog s2Step14EntryGBefore s2Step14EntryGRow 256 s2Step14EntryGFresh=
    some (s2Step14EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩,growRow 769 s2Step14EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step14EntryGBefore s2Step14EntryGAfter s2Step14EntryGRow 256 s2Step14EntryGFresh
    s2Step14EntryG_distinct s2Step14EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step14EntryG_reserved
  have rowEq : WindowRow.mk (s2Step14EntryGRow.payload++s2Step14EntryGFresh) s2Step14EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step14EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step14EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step14EntryFvBefore,s2Step14EntryFvFresh,arenaWires]
  · simp only [s2Step14EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step14EntryFv_checked : planRowResizeLog s2Step14EntryFvBefore s2Step14EntryFvRow 15 s2Step14EntryFvFresh=
    some (s2Step14EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812],770⟩,growRow 770 s2Step14EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step14EntryFvBefore s2Step14EntryFvAfter s2Step14EntryFvRow 15 s2Step14EntryFvFresh
    s2Step14EntryFv_distinct s2Step14EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step14EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step14EntryFvRow.payload++s2Step14EntryFvFresh) s2Step14EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step14EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step14EntryGvBefore,s2Step14EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step14EntryGvAfter,s2Step14EntryGvBefore,s2Step14EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
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
def s2Step15EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
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
def s2Step15EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (785≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step15EntryGBefore,s2Step15EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step15EntryGAfter,s2Step15EntryGBefore,s2Step15EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step15EntryG_checked : planRowResizeLog s2Step15EntryGBefore s2Step15EntryGRow 256 s2Step15EntryGFresh=
    some (s2Step15EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩,growRow 769 s2Step15EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step15EntryGBefore s2Step15EntryGAfter s2Step15EntryGRow 256 s2Step15EntryGFresh
    s2Step15EntryG_distinct s2Step15EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step15EntryG_reserved
  have rowEq : WindowRow.mk (s2Step15EntryGRow.payload++s2Step15EntryGFresh) s2Step15EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step15EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step15EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step15EntryFvBefore,s2Step15EntryFvFresh,arenaWires]
  · simp only [s2Step15EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step15EntryFv_checked : planRowResizeLog s2Step15EntryFvBefore s2Step15EntryFvRow 16 s2Step15EntryFvFresh=
    some (s2Step15EntryFvAfter,⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815],770⟩,growRow 770 s2Step15EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step15EntryFvBefore s2Step15EntryFvAfter s2Step15EntryFvRow 16 s2Step15EntryFvFresh
    s2Step15EntryFv_distinct s2Step15EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step15EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step15EntryFvRow.payload++s2Step15EntryFvFresh) s2Step15EntryFvRow.sign=⟨[255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step15EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
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
  · norm_num [s2Step15EntryGvBefore,s2Step15EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step15EntryGvAfter,s2Step15EntryGvBefore,s2Step15EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step15EntryGv_checked : planRowResizeLog s2Step15EntryGvBefore s2Step15EntryGvRow 16 s2Step15EntryGvFresh=
    some (s2Step15EntryGvAfter,⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 780],771⟩,growRow 771 s2Step15EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step15EntryGvBefore s2Step15EntryGvAfter s2Step15EntryGvRow 16 s2Step15EntryGvFresh
    s2Step15EntryGv_distinct s2Step15EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step15EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step15EntryGvRow.payload++s2Step15EntryGvFresh) s2Step15EntryGvRow.sign=⟨[779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step498EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<901) ∨ (902≤q ∧ q<916)),Finset.filter_subset _ _⟩
def s2Step498EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<916)),Finset.filter_subset _ _⟩
def s2Step498EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535],768⟩
def s2Step498EntryFFresh : List Wire := [901]
theorem s2Step498EntryF_distinct : (s2Step498EntryFRow.sign::s2Step498EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step498EntryF_owned : (s2Step498EntryFRow.sign::s2Step498EntryFRow.payload).toFinset⊆s2Step498EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step498EntryFBefore (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<901) ∨ (902≤q ∧ q<916)) rfl
  decide +kernel
theorem s2Step498EntryF_reserved : s2Step498EntryFBefore.reserve s2Step498EntryFFresh.toFinset=some s2Step498EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step498EntryFFresh,arenaWires]
  · norm_num [s2Step498EntryFBefore,s2Step498EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step498EntryFAfter,s2Step498EntryFBefore,s2Step498EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step498EntryF_checked : planRowResizeLog s2Step498EntryFBefore s2Step498EntryFRow 25 s2Step498EntryFFresh=
    some (s2Step498EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 901],768⟩,growRow 768 s2Step498EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step498EntryFBefore s2Step498EntryFAfter s2Step498EntryFRow 25 s2Step498EntryFFresh
    s2Step498EntryF_distinct s2Step498EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step498EntryF_reserved
  have rowEq : WindowRow.mk (s2Step498EntryFRow.payload++s2Step498EntryFFresh) s2Step498EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 901],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step498EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<916)),Finset.filter_subset _ _⟩
def s2Step498EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<916)),Finset.filter_subset _ _⟩
def s2Step498EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 845],769⟩
def s2Step498EntryGFresh : List Wire := []
theorem s2Step498EntryG_distinct : (s2Step498EntryGRow.sign::s2Step498EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step498EntryG_owned : (s2Step498EntryGRow.sign::s2Step498EntryGRow.payload).toFinset⊆s2Step498EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step498EntryGBefore (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<916)) rfl
  decide +kernel
theorem s2Step498EntryG_reserved : s2Step498EntryGBefore.reserve s2Step498EntryGFresh.toFinset=some s2Step498EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step498EntryGFresh,arenaWires]
  · norm_num [s2Step498EntryGBefore,s2Step498EntryGFresh,arenaWires]
  · simp only [s2Step498EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step498EntryG_checked : planRowResizeLog s2Step498EntryGBefore s2Step498EntryGRow 25 s2Step498EntryGFresh=
    some (s2Step498EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 845],769⟩,growRow 769 s2Step498EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step498EntryGBefore s2Step498EntryGAfter s2Step498EntryGRow 25 s2Step498EntryGFresh
    s2Step498EntryG_distinct s2Step498EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step498EntryG_reserved
  have rowEq : WindowRow.mk (s2Step498EntryGRow.payload++s2Step498EntryGFresh) s2Step498EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 845],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step498EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<916)),Finset.filter_subset _ _⟩
def s2Step498EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<916)),Finset.filter_subset _ _⟩
def s2Step498EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 821, 832, 896, 882, 903, 819, 826, 831, 805, 835, 803, 785, 877, 915, 810, 809, 840, 867, 825, 851, 787, 817, 788, 804, 794, 778, 798, 822, 814, 816, 891, 797, 781, 791],770⟩
def s2Step498EntryFvFresh : List Wire := []
theorem s2Step498EntryFv_distinct : (s2Step498EntryFvRow.sign::s2Step498EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step498EntryFv_owned : (s2Step498EntryFvRow.sign::s2Step498EntryFvRow.payload).toFinset⊆s2Step498EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step498EntryFvBefore (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<916)) rfl
  decide +kernel
theorem s2Step498EntryFv_reserved : s2Step498EntryFvBefore.reserve s2Step498EntryFvFresh.toFinset=some s2Step498EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step498EntryFvFresh,arenaWires]
  · norm_num [s2Step498EntryFvBefore,s2Step498EntryFvFresh,arenaWires]
  · simp only [s2Step498EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step498EntryFv_checked : planRowResizeLog s2Step498EntryFvBefore s2Step498EntryFvRow 266 s2Step498EntryFvFresh=
    some (s2Step498EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 821, 832, 896, 882, 903, 819, 826, 831, 805, 835, 803, 785, 877, 915, 810, 809, 840, 867, 825, 851, 787, 817, 788, 804, 794, 778, 798, 822, 814, 816, 891, 797, 781, 791],770⟩,growRow 770 s2Step498EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step498EntryFvBefore s2Step498EntryFvAfter s2Step498EntryFvRow 266 s2Step498EntryFvFresh
    s2Step498EntryFv_distinct s2Step498EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step498EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step498EntryFvRow.payload++s2Step498EntryFvFresh) s2Step498EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 821, 832, 896, 882, 903, 819, 826, 831, 805, 835, 803, 785, 877, 915, 810, 809, 840, 867, 825, 851, 787, 817, 788, 804, 794, 778, 798, 822, 814, 816, 891, 797, 781, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s2Step498EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<916)),Finset.filter_subset _ _⟩
def s2Step498EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<916)),Finset.filter_subset _ _⟩
def s2Step498EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 592, 591, 590, 589, 588, 587, 586, 585, 584, 582, 583, 581, 579, 580, 578, 577, 576, 575, 573, 574, 572, 571, 570, 569, 568, 567, 566, 565, 564, 563, 562, 561, 560, 559, 558, 556, 557, 555, 554, 553, 552, 551, 550, 549, 548, 547, 546, 545, 544, 543, 542, 541, 540, 539, 538, 536, 537, 820, 780, 847, 783, 796, 789, 842, 802, 907, 846, 800, 837, 811, 782, 824, 792, 799, 836, 834, 841, 807, 830, 793, 779, 829, 815, 885, 806, 894, 784, 913, 808, 801, 790],771⟩
def s2Step498EntryGvFresh : List Wire := []
theorem s2Step498EntryGv_distinct : (s2Step498EntryGvRow.sign::s2Step498EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step498EntryGv_owned : (s2Step498EntryGvRow.sign::s2Step498EntryGvRow.payload).toFinset⊆s2Step498EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step498EntryGvBefore (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<916)) rfl
  decide +kernel
theorem s2Step498EntryGv_reserved : s2Step498EntryGvBefore.reserve s2Step498EntryGvFresh.toFinset=some s2Step498EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step498EntryGvFresh,arenaWires]
  · norm_num [s2Step498EntryGvBefore,s2Step498EntryGvFresh,arenaWires]
  · simp only [s2Step498EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s2Step498EntryGv_checked : planRowResizeLog s2Step498EntryGvBefore s2Step498EntryGvRow 266 s2Step498EntryGvFresh=
    some (s2Step498EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 592, 591, 590, 589, 588, 587, 586, 585, 584, 582, 583, 581, 579, 580, 578, 577, 576, 575, 573, 574, 572, 571, 570, 569, 568, 567, 566, 565, 564, 563, 562, 561, 560, 559, 558, 556, 557, 555, 554, 553, 552, 551, 550, 549, 548, 547, 546, 545, 544, 543, 542, 541, 540, 539, 538, 536, 537, 820, 780, 847, 783, 796, 789, 842, 802, 907, 846, 800, 837, 811, 782, 824, 792, 799, 836, 834, 841, 807, 830, 793, 779, 829, 815, 885, 806, 894, 784, 913, 808, 801, 790],771⟩,growRow 771 s2Step498EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step498EntryGvBefore s2Step498EntryGvAfter s2Step498EntryGvRow 266 s2Step498EntryGvFresh
    s2Step498EntryGv_distinct s2Step498EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step498EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step498EntryGvRow.payload++s2Step498EntryGvFresh) s2Step498EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 592, 591, 590, 589, 588, 587, 586, 585, 584, 582, 583, 581, 579, 580, 578, 577, 576, 575, 573, 574, 572, 571, 570, 569, 568, 567, 566, 565, 564, 563, 562, 561, 560, 559, 558, 556, 557, 555, 554, 553, 552, 551, 550, 549, 548, 547, 546, 545, 544, 543, 542, 541, 540, 539, 538, 536, 537, 820, 780, 847, 783, 796, 789, 842, 802, 907, 846, 800, 837, 811, 782, 824, 792, 799, 836, 834, 841, 807, 830, 793, 779, 829, 815, 885, 806, 894, 784, 913, 808, 801, 790],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step0EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s6Step0EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s6Step0EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step0EntryFFresh : List Wire := []
theorem s6Step0EntryF_distinct : (s6Step0EntryFRow.sign::s6Step0EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step0EntryF_owned : (s6Step0EntryFRow.sign::s6Step0EntryFRow.payload).toFinset⊆s6Step0EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step0EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s6Step0EntryF_reserved : s6Step0EntryFBefore.reserve s6Step0EntryFFresh.toFinset=some s6Step0EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step0EntryFFresh,arenaWires]
  · norm_num [s6Step0EntryFBefore,s6Step0EntryFFresh,arenaWires]
  · simp only [s6Step0EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step0EntryF_checked : planRowResizeLog s6Step0EntryFBefore s6Step0EntryFRow 256 s6Step0EntryFFresh=
    some (s6Step0EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step0EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step0EntryFBefore s6Step0EntryFAfter s6Step0EntryFRow 256 s6Step0EntryFFresh
    s6Step0EntryF_distinct s6Step0EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step0EntryF_reserved
  have rowEq : WindowRow.mk (s6Step0EntryFRow.payload++s6Step0EntryFFresh) s6Step0EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step0EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s6Step0EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s6Step0EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255],777⟩
def s6Step0EntryGFresh : List Wire := []
theorem s6Step0EntryG_distinct : (s6Step0EntryGRow.sign::s6Step0EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step0EntryG_owned : (s6Step0EntryGRow.sign::s6Step0EntryGRow.payload).toFinset⊆s6Step0EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step0EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s6Step0EntryG_reserved : s6Step0EntryGBefore.reserve s6Step0EntryGFresh.toFinset=some s6Step0EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step0EntryGFresh,arenaWires]
  · norm_num [s6Step0EntryGBefore,s6Step0EntryGFresh,arenaWires]
  · simp only [s6Step0EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step0EntryG_checked : planRowResizeLog s6Step0EntryGBefore s6Step0EntryGRow 256 s6Step0EntryGFresh=
    some (s6Step0EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255],777⟩,growRow 777 s6Step0EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step0EntryGBefore s6Step0EntryGAfter s6Step0EntryGRow 256 s6Step0EntryGFresh
    s6Step0EntryG_distinct s6Step0EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step0EntryG_reserved
  have rowEq : WindowRow.mk (s6Step0EntryGRow.payload++s6Step0EntryGFresh) s6Step0EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step0EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s6Step0EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s6Step0EntryFvRow : WindowRow := ⟨[768],776⟩
def s6Step0EntryFvFresh : List Wire := []
theorem s6Step0EntryFv_distinct : (s6Step0EntryFvRow.sign::s6Step0EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step0EntryFv_owned : (s6Step0EntryFvRow.sign::s6Step0EntryFvRow.payload).toFinset⊆s6Step0EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step0EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s6Step0EntryFv_reserved : s6Step0EntryFvBefore.reserve s6Step0EntryFvFresh.toFinset=some s6Step0EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step0EntryFvFresh,arenaWires]
  · norm_num [s6Step0EntryFvBefore,s6Step0EntryFvFresh,arenaWires]
  · simp only [s6Step0EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step0EntryFv_checked : planRowResizeLog s6Step0EntryFvBefore s6Step0EntryFvRow 1 s6Step0EntryFvFresh=
    some (s6Step0EntryFvAfter,⟨[768],776⟩,growRow 776 s6Step0EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step0EntryFvBefore s6Step0EntryFvAfter s6Step0EntryFvRow 1 s6Step0EntryFvFresh
    s6Step0EntryFv_distinct s6Step0EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step0EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step0EntryFvRow.payload++s6Step0EntryFvFresh) s6Step0EntryFvRow.sign=⟨[768],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step0EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s6Step0EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s6Step0EntryGvRow : WindowRow := ⟨[859],775⟩
def s6Step0EntryGvFresh : List Wire := []
theorem s6Step0EntryGv_distinct : (s6Step0EntryGvRow.sign::s6Step0EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step0EntryGv_owned : (s6Step0EntryGvRow.sign::s6Step0EntryGvRow.payload).toFinset⊆s6Step0EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step0EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s6Step0EntryGv_reserved : s6Step0EntryGvBefore.reserve s6Step0EntryGvFresh.toFinset=some s6Step0EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step0EntryGvFresh,arenaWires]
  · norm_num [s6Step0EntryGvBefore,s6Step0EntryGvFresh,arenaWires]
  · simp only [s6Step0EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step0EntryGv_checked : planRowResizeLog s6Step0EntryGvBefore s6Step0EntryGvRow 1 s6Step0EntryGvFresh=
    some (s6Step0EntryGvAfter,⟨[859],775⟩,growRow 775 s6Step0EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step0EntryGvBefore s6Step0EntryGvAfter s6Step0EntryGvRow 1 s6Step0EntryGvFresh
    s6Step0EntryGv_distinct s6Step0EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step0EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step0EntryGvRow.payload++s6Step0EntryGvFresh) s6Step0EntryGvRow.sign=⟨[859],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step1EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step1EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step1EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step1EntryFFresh : List Wire := []
theorem s6Step1EntryF_distinct : (s6Step1EntryFRow.sign::s6Step1EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step1EntryF_owned : (s6Step1EntryFRow.sign::s6Step1EntryFRow.payload).toFinset⊆s6Step1EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step1EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step1EntryF_reserved : s6Step1EntryFBefore.reserve s6Step1EntryFFresh.toFinset=some s6Step1EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step1EntryFFresh,arenaWires]
  · norm_num [s6Step1EntryFBefore,s6Step1EntryFFresh,arenaWires]
  · simp only [s6Step1EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step1EntryF_checked : planRowResizeLog s6Step1EntryFBefore s6Step1EntryFRow 256 s6Step1EntryFFresh=
    some (s6Step1EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step1EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step1EntryFBefore s6Step1EntryFAfter s6Step1EntryFRow 256 s6Step1EntryFFresh
    s6Step1EntryF_distinct s6Step1EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step1EntryF_reserved
  have rowEq : WindowRow.mk (s6Step1EntryFRow.payload++s6Step1EntryFFresh) s6Step1EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step1EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step1EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step1EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step1EntryGFresh : List Wire := [813]
theorem s6Step1EntryG_distinct : (s6Step1EntryGRow.sign::s6Step1EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step1EntryG_owned : (s6Step1EntryGRow.sign::s6Step1EntryGRow.payload).toFinset⊆s6Step1EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step1EntryGBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step1EntryG_reserved : s6Step1EntryGBefore.reserve s6Step1EntryGFresh.toFinset=some s6Step1EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step1EntryGFresh,arenaWires]
  · norm_num [s6Step1EntryGBefore,s6Step1EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step1EntryGAfter,s6Step1EntryGBefore,s6Step1EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step1EntryG_checked : planRowResizeLog s6Step1EntryGBefore s6Step1EntryGRow 256 s6Step1EntryGFresh=
    some (s6Step1EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813],777⟩,growRow 777 s6Step1EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step1EntryGBefore s6Step1EntryGAfter s6Step1EntryGRow 256 s6Step1EntryGFresh
    s6Step1EntryG_distinct s6Step1EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step1EntryG_reserved
  have rowEq : WindowRow.mk (s6Step1EntryGRow.payload++s6Step1EntryGFresh) s6Step1EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step1EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step1EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step1EntryFvRow : WindowRow := ⟨[255, 876],776⟩
def s6Step1EntryFvFresh : List Wire := []
theorem s6Step1EntryFv_distinct : (s6Step1EntryFvRow.sign::s6Step1EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step1EntryFv_owned : (s6Step1EntryFvRow.sign::s6Step1EntryFvRow.payload).toFinset⊆s6Step1EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step1EntryFvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step1EntryFv_reserved : s6Step1EntryFvBefore.reserve s6Step1EntryFvFresh.toFinset=some s6Step1EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step1EntryFvFresh,arenaWires]
  · norm_num [s6Step1EntryFvBefore,s6Step1EntryFvFresh,arenaWires]
  · simp only [s6Step1EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step1EntryFv_checked : planRowResizeLog s6Step1EntryFvBefore s6Step1EntryFvRow 2 s6Step1EntryFvFresh=
    some (s6Step1EntryFvAfter,⟨[255, 876],776⟩,growRow 776 s6Step1EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step1EntryFvBefore s6Step1EntryFvAfter s6Step1EntryFvRow 2 s6Step1EntryFvFresh
    s6Step1EntryFv_distinct s6Step1EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step1EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step1EntryFvRow.payload++s6Step1EntryFvFresh) s6Step1EntryFvRow.sign=⟨[255, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step1EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step1EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step1EntryGvRow : WindowRow := ⟨[859],775⟩
def s6Step1EntryGvFresh : List Wire := [887]
theorem s6Step1EntryGv_distinct : (s6Step1EntryGvRow.sign::s6Step1EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step1EntryGv_owned : (s6Step1EntryGvRow.sign::s6Step1EntryGvRow.payload).toFinset⊆s6Step1EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step1EntryGvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step1EntryGv_reserved : s6Step1EntryGvBefore.reserve s6Step1EntryGvFresh.toFinset=some s6Step1EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step1EntryGvFresh,arenaWires]
  · norm_num [s6Step1EntryGvBefore,s6Step1EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step1EntryGvAfter,s6Step1EntryGvBefore,s6Step1EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step1EntryGv_checked : planRowResizeLog s6Step1EntryGvBefore s6Step1EntryGvRow 2 s6Step1EntryGvFresh=
    some (s6Step1EntryGvAfter,⟨[859, 887],775⟩,growRow 775 s6Step1EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step1EntryGvBefore s6Step1EntryGvAfter s6Step1EntryGvRow 2 s6Step1EntryGvFresh
    s6Step1EntryGv_distinct s6Step1EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step1EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step1EntryGvRow.payload++s6Step1EntryGvFresh) s6Step1EntryGvRow.sign=⟨[859, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step2EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step2EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step2EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step2EntryFFresh : List Wire := []
theorem s6Step2EntryF_distinct : (s6Step2EntryFRow.sign::s6Step2EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step2EntryF_owned : (s6Step2EntryFRow.sign::s6Step2EntryFRow.payload).toFinset⊆s6Step2EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step2EntryFBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step2EntryF_reserved : s6Step2EntryFBefore.reserve s6Step2EntryFFresh.toFinset=some s6Step2EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step2EntryFFresh,arenaWires]
  · norm_num [s6Step2EntryFBefore,s6Step2EntryFFresh,arenaWires]
  · simp only [s6Step2EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step2EntryF_checked : planRowResizeLog s6Step2EntryFBefore s6Step2EntryFRow 256 s6Step2EntryFFresh=
    some (s6Step2EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step2EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step2EntryFBefore s6Step2EntryFAfter s6Step2EntryFRow 256 s6Step2EntryFFresh
    s6Step2EntryF_distinct s6Step2EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step2EntryF_reserved
  have rowEq : WindowRow.mk (s6Step2EntryFRow.payload++s6Step2EntryFFresh) s6Step2EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step2EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step2EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step2EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step2EntryGFresh : List Wire := [860]
theorem s6Step2EntryG_distinct : (s6Step2EntryGRow.sign::s6Step2EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step2EntryG_owned : (s6Step2EntryGRow.sign::s6Step2EntryGRow.payload).toFinset⊆s6Step2EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step2EntryGBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step2EntryG_reserved : s6Step2EntryGBefore.reserve s6Step2EntryGFresh.toFinset=some s6Step2EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step2EntryGFresh,arenaWires]
  · norm_num [s6Step2EntryGBefore,s6Step2EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step2EntryGAfter,s6Step2EntryGBefore,s6Step2EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step2EntryG_checked : planRowResizeLog s6Step2EntryGBefore s6Step2EntryGRow 256 s6Step2EntryGFresh=
    some (s6Step2EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860],777⟩,growRow 777 s6Step2EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step2EntryGBefore s6Step2EntryGAfter s6Step2EntryGRow 256 s6Step2EntryGFresh
    s6Step2EntryG_distinct s6Step2EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step2EntryG_reserved
  have rowEq : WindowRow.mk (s6Step2EntryGRow.payload++s6Step2EntryGFresh) s6Step2EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step2EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step2EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step2EntryFvRow : WindowRow := ⟨[255, 876, 793],776⟩
def s6Step2EntryFvFresh : List Wire := []
theorem s6Step2EntryFv_distinct : (s6Step2EntryFvRow.sign::s6Step2EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step2EntryFv_owned : (s6Step2EntryFvRow.sign::s6Step2EntryFvRow.payload).toFinset⊆s6Step2EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step2EntryFvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step2EntryFv_reserved : s6Step2EntryFvBefore.reserve s6Step2EntryFvFresh.toFinset=some s6Step2EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step2EntryFvFresh,arenaWires]
  · norm_num [s6Step2EntryFvBefore,s6Step2EntryFvFresh,arenaWires]
  · simp only [s6Step2EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step2EntryFv_checked : planRowResizeLog s6Step2EntryFvBefore s6Step2EntryFvRow 3 s6Step2EntryFvFresh=
    some (s6Step2EntryFvAfter,⟨[255, 876, 793],776⟩,growRow 776 s6Step2EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step2EntryFvBefore s6Step2EntryFvAfter s6Step2EntryFvRow 3 s6Step2EntryFvFresh
    s6Step2EntryFv_distinct s6Step2EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step2EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step2EntryFvRow.payload++s6Step2EntryFvFresh) s6Step2EntryFvRow.sign=⟨[255, 876, 793],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step2EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step2EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step2EntryGvRow : WindowRow := ⟨[859],775⟩
def s6Step2EntryGvFresh : List Wire := [768, 887]
theorem s6Step2EntryGv_distinct : (s6Step2EntryGvRow.sign::s6Step2EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step2EntryGv_owned : (s6Step2EntryGvRow.sign::s6Step2EntryGvRow.payload).toFinset⊆s6Step2EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step2EntryGvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step2EntryGv_reserved : s6Step2EntryGvBefore.reserve s6Step2EntryGvFresh.toFinset=some s6Step2EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step2EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step2EntryGvBefore,s6Step2EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step2EntryGvAfter,s6Step2EntryGvBefore,s6Step2EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step2EntryGv_checked : planRowResizeLog s6Step2EntryGvBefore s6Step2EntryGvRow 3 s6Step2EntryGvFresh=
    some (s6Step2EntryGvAfter,⟨[859, 768, 887],775⟩,growRow 775 s6Step2EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step2EntryGvBefore s6Step2EntryGvAfter s6Step2EntryGvRow 3 s6Step2EntryGvFresh
    s6Step2EntryGv_distinct s6Step2EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step2EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step2EntryGvRow.payload++s6Step2EntryGvFresh) s6Step2EntryGvRow.sign=⟨[859, 768, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step3EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step3EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step3EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step3EntryFFresh : List Wire := []
theorem s6Step3EntryF_distinct : (s6Step3EntryFRow.sign::s6Step3EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step3EntryF_owned : (s6Step3EntryFRow.sign::s6Step3EntryFRow.payload).toFinset⊆s6Step3EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step3EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step3EntryF_reserved : s6Step3EntryFBefore.reserve s6Step3EntryFFresh.toFinset=some s6Step3EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step3EntryFFresh,arenaWires]
  · norm_num [s6Step3EntryFBefore,s6Step3EntryFFresh,arenaWires]
  · simp only [s6Step3EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step3EntryF_checked : planRowResizeLog s6Step3EntryFBefore s6Step3EntryFRow 256 s6Step3EntryFFresh=
    some (s6Step3EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step3EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step3EntryFBefore s6Step3EntryFAfter s6Step3EntryFRow 256 s6Step3EntryFFresh
    s6Step3EntryF_distinct s6Step3EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step3EntryF_reserved
  have rowEq : WindowRow.mk (s6Step3EntryFRow.payload++s6Step3EntryFFresh) s6Step3EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step3EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step3EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step3EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step3EntryGFresh : List Wire := [862]
theorem s6Step3EntryG_distinct : (s6Step3EntryGRow.sign::s6Step3EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step3EntryG_owned : (s6Step3EntryGRow.sign::s6Step3EntryGRow.payload).toFinset⊆s6Step3EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step3EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step3EntryG_reserved : s6Step3EntryGBefore.reserve s6Step3EntryGFresh.toFinset=some s6Step3EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step3EntryGFresh,arenaWires]
  · norm_num [s6Step3EntryGBefore,s6Step3EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step3EntryGAfter,s6Step3EntryGBefore,s6Step3EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step3EntryG_checked : planRowResizeLog s6Step3EntryGBefore s6Step3EntryGRow 256 s6Step3EntryGFresh=
    some (s6Step3EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩,growRow 777 s6Step3EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step3EntryGBefore s6Step3EntryGAfter s6Step3EntryGRow 256 s6Step3EntryGFresh
    s6Step3EntryG_distinct s6Step3EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step3EntryG_reserved
  have rowEq : WindowRow.mk (s6Step3EntryGRow.payload++s6Step3EntryGFresh) s6Step3EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step3EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step3EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step3EntryFvRow : WindowRow := ⟨[255, 876, 793, 802],776⟩
def s6Step3EntryFvFresh : List Wire := []
theorem s6Step3EntryFv_distinct : (s6Step3EntryFvRow.sign::s6Step3EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step3EntryFv_owned : (s6Step3EntryFvRow.sign::s6Step3EntryFvRow.payload).toFinset⊆s6Step3EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step3EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step3EntryFv_reserved : s6Step3EntryFvBefore.reserve s6Step3EntryFvFresh.toFinset=some s6Step3EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step3EntryFvFresh,arenaWires]
  · norm_num [s6Step3EntryFvBefore,s6Step3EntryFvFresh,arenaWires]
  · simp only [s6Step3EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step3EntryFv_checked : planRowResizeLog s6Step3EntryFvBefore s6Step3EntryFvRow 4 s6Step3EntryFvFresh=
    some (s6Step3EntryFvAfter,⟨[255, 876, 793, 802],776⟩,growRow 776 s6Step3EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step3EntryFvBefore s6Step3EntryFvAfter s6Step3EntryFvRow 4 s6Step3EntryFvFresh
    s6Step3EntryFv_distinct s6Step3EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step3EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step3EntryFvRow.payload++s6Step3EntryFvFresh) s6Step3EntryFvRow.sign=⟨[255, 876, 793, 802],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step3EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step3EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step3EntryGvRow : WindowRow := ⟨[859, 768],775⟩
def s6Step3EntryGvFresh : List Wire := [874, 887]
theorem s6Step3EntryGv_distinct : (s6Step3EntryGvRow.sign::s6Step3EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step3EntryGv_owned : (s6Step3EntryGvRow.sign::s6Step3EntryGvRow.payload).toFinset⊆s6Step3EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step3EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step3EntryGv_reserved : s6Step3EntryGvBefore.reserve s6Step3EntryGvFresh.toFinset=some s6Step3EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step3EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step3EntryGvBefore,s6Step3EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step3EntryGvAfter,s6Step3EntryGvBefore,s6Step3EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step3EntryGv_checked : planRowResizeLog s6Step3EntryGvBefore s6Step3EntryGvRow 4 s6Step3EntryGvFresh=
    some (s6Step3EntryGvAfter,⟨[859, 768, 874, 887],775⟩,growRow 775 s6Step3EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step3EntryGvBefore s6Step3EntryGvAfter s6Step3EntryGvRow 4 s6Step3EntryGvFresh
    s6Step3EntryGv_distinct s6Step3EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step3EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step3EntryGvRow.payload++s6Step3EntryGvFresh) s6Step3EntryGvRow.sign=⟨[859, 768, 874, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step4EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step4EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step4EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step4EntryFFresh : List Wire := []
theorem s6Step4EntryF_distinct : (s6Step4EntryFRow.sign::s6Step4EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step4EntryF_owned : (s6Step4EntryFRow.sign::s6Step4EntryFRow.payload).toFinset⊆s6Step4EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step4EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step4EntryF_reserved : s6Step4EntryFBefore.reserve s6Step4EntryFFresh.toFinset=some s6Step4EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step4EntryFFresh,arenaWires]
  · norm_num [s6Step4EntryFBefore,s6Step4EntryFFresh,arenaWires]
  · simp only [s6Step4EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step4EntryF_checked : planRowResizeLog s6Step4EntryFBefore s6Step4EntryFRow 256 s6Step4EntryFFresh=
    some (s6Step4EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step4EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step4EntryFBefore s6Step4EntryFAfter s6Step4EntryFRow 256 s6Step4EntryFFresh
    s6Step4EntryF_distinct s6Step4EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step4EntryF_reserved
  have rowEq : WindowRow.mk (s6Step4EntryFRow.payload++s6Step4EntryFFresh) s6Step4EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step4EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step4EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step4EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step4EntryGFresh : List Wire := [807]
theorem s6Step4EntryG_distinct : (s6Step4EntryGRow.sign::s6Step4EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step4EntryG_owned : (s6Step4EntryGRow.sign::s6Step4EntryGRow.payload).toFinset⊆s6Step4EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step4EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step4EntryG_reserved : s6Step4EntryGBefore.reserve s6Step4EntryGFresh.toFinset=some s6Step4EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step4EntryGFresh,arenaWires]
  · norm_num [s6Step4EntryGBefore,s6Step4EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step4EntryGAfter,s6Step4EntryGBefore,s6Step4EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step4EntryG_checked : planRowResizeLog s6Step4EntryGBefore s6Step4EntryGRow 256 s6Step4EntryGFresh=
    some (s6Step4EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807],777⟩,growRow 777 s6Step4EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step4EntryGBefore s6Step4EntryGAfter s6Step4EntryGRow 256 s6Step4EntryGFresh
    s6Step4EntryG_distinct s6Step4EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step4EntryG_reserved
  have rowEq : WindowRow.mk (s6Step4EntryGRow.payload++s6Step4EntryGFresh) s6Step4EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step4EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step4EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step4EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779],776⟩
def s6Step4EntryFvFresh : List Wire := []
theorem s6Step4EntryFv_distinct : (s6Step4EntryFvRow.sign::s6Step4EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step4EntryFv_owned : (s6Step4EntryFvRow.sign::s6Step4EntryFvRow.payload).toFinset⊆s6Step4EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step4EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step4EntryFv_reserved : s6Step4EntryFvBefore.reserve s6Step4EntryFvFresh.toFinset=some s6Step4EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step4EntryFvFresh,arenaWires]
  · norm_num [s6Step4EntryFvBefore,s6Step4EntryFvFresh,arenaWires]
  · simp only [s6Step4EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step4EntryFv_checked : planRowResizeLog s6Step4EntryFvBefore s6Step4EntryFvRow 5 s6Step4EntryFvFresh=
    some (s6Step4EntryFvAfter,⟨[255, 876, 793, 802, 779],776⟩,growRow 776 s6Step4EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step4EntryFvBefore s6Step4EntryFvAfter s6Step4EntryFvRow 5 s6Step4EntryFvFresh
    s6Step4EntryFv_distinct s6Step4EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step4EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step4EntryFvRow.payload++s6Step4EntryFvFresh) s6Step4EntryFvRow.sign=⟨[255, 876, 793, 802, 779],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step4EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)),Finset.filter_subset _ _⟩
def s6Step4EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step4EntryGvRow : WindowRow := ⟨[859, 768, 874],775⟩
def s6Step4EntryGvFresh : List Wire := [927, 887]
theorem s6Step4EntryGv_distinct : (s6Step4EntryGvRow.sign::s6Step4EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step4EntryGv_owned : (s6Step4EntryGvRow.sign::s6Step4EntryGvRow.payload).toFinset⊆s6Step4EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step4EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
  decide +kernel
theorem s6Step4EntryGv_reserved : s6Step4EntryGvBefore.reserve s6Step4EntryGvFresh.toFinset=some s6Step4EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step4EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step4EntryGvBefore,s6Step4EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step4EntryGvAfter,s6Step4EntryGvBefore,s6Step4EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step4EntryGv_checked : planRowResizeLog s6Step4EntryGvBefore s6Step4EntryGvRow 5 s6Step4EntryGvFresh=
    some (s6Step4EntryGvAfter,⟨[859, 768, 874, 927, 887],775⟩,growRow 775 s6Step4EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step4EntryGvBefore s6Step4EntryGvAfter s6Step4EntryGvRow 5 s6Step4EntryGvFresh
    s6Step4EntryGv_distinct s6Step4EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step4EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step4EntryGvRow.payload++s6Step4EntryGvFresh) s6Step4EntryGvRow.sign=⟨[859, 768, 874, 927, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step5EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step5EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step5EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step5EntryFFresh : List Wire := []
theorem s6Step5EntryF_distinct : (s6Step5EntryFRow.sign::s6Step5EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step5EntryF_owned : (s6Step5EntryFRow.sign::s6Step5EntryFRow.payload).toFinset⊆s6Step5EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step5EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step5EntryF_reserved : s6Step5EntryFBefore.reserve s6Step5EntryFFresh.toFinset=some s6Step5EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step5EntryFFresh,arenaWires]
  · norm_num [s6Step5EntryFBefore,s6Step5EntryFFresh,arenaWires]
  · simp only [s6Step5EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step5EntryF_checked : planRowResizeLog s6Step5EntryFBefore s6Step5EntryFRow 256 s6Step5EntryFFresh=
    some (s6Step5EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step5EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step5EntryFBefore s6Step5EntryFAfter s6Step5EntryFRow 256 s6Step5EntryFFresh
    s6Step5EntryF_distinct s6Step5EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step5EntryF_reserved
  have rowEq : WindowRow.mk (s6Step5EntryFRow.payload++s6Step5EntryFFresh) s6Step5EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step5EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step5EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step5EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step5EntryGFresh : List Wire := [813]
theorem s6Step5EntryG_distinct : (s6Step5EntryGRow.sign::s6Step5EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step5EntryG_owned : (s6Step5EntryGRow.sign::s6Step5EntryGRow.payload).toFinset⊆s6Step5EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step5EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step5EntryG_reserved : s6Step5EntryGBefore.reserve s6Step5EntryGFresh.toFinset=some s6Step5EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step5EntryGFresh,arenaWires]
  · norm_num [s6Step5EntryGBefore,s6Step5EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step5EntryGAfter,s6Step5EntryGBefore,s6Step5EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step5EntryG_checked : planRowResizeLog s6Step5EntryGBefore s6Step5EntryGRow 256 s6Step5EntryGFresh=
    some (s6Step5EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813],777⟩,growRow 777 s6Step5EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step5EntryGBefore s6Step5EntryGAfter s6Step5EntryGRow 256 s6Step5EntryGFresh
    s6Step5EntryG_distinct s6Step5EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step5EntryG_reserved
  have rowEq : WindowRow.mk (s6Step5EntryGRow.payload++s6Step5EntryGFresh) s6Step5EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step5EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step5EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step5EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857],776⟩
def s6Step5EntryFvFresh : List Wire := []
theorem s6Step5EntryFv_distinct : (s6Step5EntryFvRow.sign::s6Step5EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step5EntryFv_owned : (s6Step5EntryFvRow.sign::s6Step5EntryFvRow.payload).toFinset⊆s6Step5EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step5EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step5EntryFv_reserved : s6Step5EntryFvBefore.reserve s6Step5EntryFvFresh.toFinset=some s6Step5EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step5EntryFvFresh,arenaWires]
  · norm_num [s6Step5EntryFvBefore,s6Step5EntryFvFresh,arenaWires]
  · simp only [s6Step5EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step5EntryFv_checked : planRowResizeLog s6Step5EntryFvBefore s6Step5EntryFvRow 6 s6Step5EntryFvFresh=
    some (s6Step5EntryFvAfter,⟨[255, 876, 793, 802, 779, 857],776⟩,growRow 776 s6Step5EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step5EntryFvBefore s6Step5EntryFvAfter s6Step5EntryFvRow 6 s6Step5EntryFvFresh
    s6Step5EntryFv_distinct s6Step5EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step5EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step5EntryFvRow.payload++s6Step5EntryFvFresh) s6Step5EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step5EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step5EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step5EntryGvRow : WindowRow := ⟨[859, 768, 874, 927],775⟩
def s6Step5EntryGvFresh : List Wire := [875, 887]
theorem s6Step5EntryGv_distinct : (s6Step5EntryGvRow.sign::s6Step5EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step5EntryGv_owned : (s6Step5EntryGvRow.sign::s6Step5EntryGvRow.payload).toFinset⊆s6Step5EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step5EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step5EntryGv_reserved : s6Step5EntryGvBefore.reserve s6Step5EntryGvFresh.toFinset=some s6Step5EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step5EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step5EntryGvBefore,s6Step5EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step5EntryGvAfter,s6Step5EntryGvBefore,s6Step5EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step5EntryGv_checked : planRowResizeLog s6Step5EntryGvBefore s6Step5EntryGvRow 6 s6Step5EntryGvFresh=
    some (s6Step5EntryGvAfter,⟨[859, 768, 874, 927, 875, 887],775⟩,growRow 775 s6Step5EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step5EntryGvBefore s6Step5EntryGvAfter s6Step5EntryGvRow 6 s6Step5EntryGvFresh
    s6Step5EntryGv_distinct s6Step5EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step5EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step5EntryGvRow.payload++s6Step5EntryGvFresh) s6Step5EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step6EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step6EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step6EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step6EntryFFresh : List Wire := []
theorem s6Step6EntryF_distinct : (s6Step6EntryFRow.sign::s6Step6EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step6EntryF_owned : (s6Step6EntryFRow.sign::s6Step6EntryFRow.payload).toFinset⊆s6Step6EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step6EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step6EntryF_reserved : s6Step6EntryFBefore.reserve s6Step6EntryFFresh.toFinset=some s6Step6EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step6EntryFFresh,arenaWires]
  · norm_num [s6Step6EntryFBefore,s6Step6EntryFFresh,arenaWires]
  · simp only [s6Step6EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step6EntryF_checked : planRowResizeLog s6Step6EntryFBefore s6Step6EntryFRow 256 s6Step6EntryFFresh=
    some (s6Step6EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step6EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step6EntryFBefore s6Step6EntryFAfter s6Step6EntryFRow 256 s6Step6EntryFFresh
    s6Step6EntryF_distinct s6Step6EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step6EntryF_reserved
  have rowEq : WindowRow.mk (s6Step6EntryFRow.payload++s6Step6EntryFFresh) s6Step6EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step6EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step6EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step6EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step6EntryGFresh : List Wire := [860]
theorem s6Step6EntryG_distinct : (s6Step6EntryGRow.sign::s6Step6EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step6EntryG_owned : (s6Step6EntryGRow.sign::s6Step6EntryGRow.payload).toFinset⊆s6Step6EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step6EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step6EntryG_reserved : s6Step6EntryGBefore.reserve s6Step6EntryGFresh.toFinset=some s6Step6EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step6EntryGFresh,arenaWires]
  · norm_num [s6Step6EntryGBefore,s6Step6EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step6EntryGAfter,s6Step6EntryGBefore,s6Step6EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step6EntryG_checked : planRowResizeLog s6Step6EntryGBefore s6Step6EntryGRow 256 s6Step6EntryGFresh=
    some (s6Step6EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860],777⟩,growRow 777 s6Step6EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step6EntryGBefore s6Step6EntryGAfter s6Step6EntryGRow 256 s6Step6EntryGFresh
    s6Step6EntryG_distinct s6Step6EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step6EntryG_reserved
  have rowEq : WindowRow.mk (s6Step6EntryGRow.payload++s6Step6EntryGFresh) s6Step6EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step6EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step6EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step6EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858],776⟩
def s6Step6EntryFvFresh : List Wire := []
theorem s6Step6EntryFv_distinct : (s6Step6EntryFvRow.sign::s6Step6EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step6EntryFv_owned : (s6Step6EntryFvRow.sign::s6Step6EntryFvRow.payload).toFinset⊆s6Step6EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step6EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step6EntryFv_reserved : s6Step6EntryFvBefore.reserve s6Step6EntryFvFresh.toFinset=some s6Step6EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step6EntryFvFresh,arenaWires]
  · norm_num [s6Step6EntryFvBefore,s6Step6EntryFvFresh,arenaWires]
  · simp only [s6Step6EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step6EntryFv_checked : planRowResizeLog s6Step6EntryFvBefore s6Step6EntryFvRow 7 s6Step6EntryFvFresh=
    some (s6Step6EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858],776⟩,growRow 776 s6Step6EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step6EntryFvBefore s6Step6EntryFvAfter s6Step6EntryFvRow 7 s6Step6EntryFvFresh
    s6Step6EntryFv_distinct s6Step6EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step6EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step6EntryFvRow.payload++s6Step6EntryFvFresh) s6Step6EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step6EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step6EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step6EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875],775⟩
def s6Step6EntryGvFresh : List Wire := [868, 887]
theorem s6Step6EntryGv_distinct : (s6Step6EntryGvRow.sign::s6Step6EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step6EntryGv_owned : (s6Step6EntryGvRow.sign::s6Step6EntryGvRow.payload).toFinset⊆s6Step6EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step6EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step6EntryGv_reserved : s6Step6EntryGvBefore.reserve s6Step6EntryGvFresh.toFinset=some s6Step6EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step6EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step6EntryGvBefore,s6Step6EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step6EntryGvAfter,s6Step6EntryGvBefore,s6Step6EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step6EntryGv_checked : planRowResizeLog s6Step6EntryGvBefore s6Step6EntryGvRow 7 s6Step6EntryGvFresh=
    some (s6Step6EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 887],775⟩,growRow 775 s6Step6EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step6EntryGvBefore s6Step6EntryGvAfter s6Step6EntryGvRow 7 s6Step6EntryGvFresh
    s6Step6EntryGv_distinct s6Step6EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step6EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step6EntryGvRow.payload++s6Step6EntryGvFresh) s6Step6EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step7EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step7EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step7EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step7EntryFFresh : List Wire := []
theorem s6Step7EntryF_distinct : (s6Step7EntryFRow.sign::s6Step7EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step7EntryF_owned : (s6Step7EntryFRow.sign::s6Step7EntryFRow.payload).toFinset⊆s6Step7EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step7EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step7EntryF_reserved : s6Step7EntryFBefore.reserve s6Step7EntryFFresh.toFinset=some s6Step7EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step7EntryFFresh,arenaWires]
  · norm_num [s6Step7EntryFBefore,s6Step7EntryFFresh,arenaWires]
  · simp only [s6Step7EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step7EntryF_checked : planRowResizeLog s6Step7EntryFBefore s6Step7EntryFRow 256 s6Step7EntryFFresh=
    some (s6Step7EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step7EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step7EntryFBefore s6Step7EntryFAfter s6Step7EntryFRow 256 s6Step7EntryFFresh
    s6Step7EntryF_distinct s6Step7EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step7EntryF_reserved
  have rowEq : WindowRow.mk (s6Step7EntryFRow.payload++s6Step7EntryFFresh) s6Step7EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step7EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step7EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step7EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step7EntryGFresh : List Wire := [862]
theorem s6Step7EntryG_distinct : (s6Step7EntryGRow.sign::s6Step7EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step7EntryG_owned : (s6Step7EntryGRow.sign::s6Step7EntryGRow.payload).toFinset⊆s6Step7EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step7EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step7EntryG_reserved : s6Step7EntryGBefore.reserve s6Step7EntryGFresh.toFinset=some s6Step7EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step7EntryGFresh,arenaWires]
  · norm_num [s6Step7EntryGBefore,s6Step7EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step7EntryGAfter,s6Step7EntryGBefore,s6Step7EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step7EntryG_checked : planRowResizeLog s6Step7EntryGBefore s6Step7EntryGRow 256 s6Step7EntryGFresh=
    some (s6Step7EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩,growRow 777 s6Step7EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step7EntryGBefore s6Step7EntryGAfter s6Step7EntryGRow 256 s6Step7EntryGFresh
    s6Step7EntryG_distinct s6Step7EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step7EntryG_reserved
  have rowEq : WindowRow.mk (s6Step7EntryGRow.payload++s6Step7EntryGFresh) s6Step7EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step7EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step7EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step7EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845],776⟩
def s6Step7EntryFvFresh : List Wire := []
theorem s6Step7EntryFv_distinct : (s6Step7EntryFvRow.sign::s6Step7EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step7EntryFv_owned : (s6Step7EntryFvRow.sign::s6Step7EntryFvRow.payload).toFinset⊆s6Step7EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step7EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step7EntryFv_reserved : s6Step7EntryFvBefore.reserve s6Step7EntryFvFresh.toFinset=some s6Step7EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step7EntryFvFresh,arenaWires]
  · norm_num [s6Step7EntryFvBefore,s6Step7EntryFvFresh,arenaWires]
  · simp only [s6Step7EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step7EntryFv_checked : planRowResizeLog s6Step7EntryFvBefore s6Step7EntryFvRow 8 s6Step7EntryFvFresh=
    some (s6Step7EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845],776⟩,growRow 776 s6Step7EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step7EntryFvBefore s6Step7EntryFvAfter s6Step7EntryFvRow 8 s6Step7EntryFvFresh
    s6Step7EntryFv_distinct s6Step7EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step7EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step7EntryFvRow.payload++s6Step7EntryFvFresh) s6Step7EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step7EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step7EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step7EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868],775⟩
def s6Step7EntryGvFresh : List Wire := [907, 887]
theorem s6Step7EntryGv_distinct : (s6Step7EntryGvRow.sign::s6Step7EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step7EntryGv_owned : (s6Step7EntryGvRow.sign::s6Step7EntryGvRow.payload).toFinset⊆s6Step7EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step7EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step7EntryGv_reserved : s6Step7EntryGvBefore.reserve s6Step7EntryGvFresh.toFinset=some s6Step7EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step7EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step7EntryGvBefore,s6Step7EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step7EntryGvAfter,s6Step7EntryGvBefore,s6Step7EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step7EntryGv_checked : planRowResizeLog s6Step7EntryGvBefore s6Step7EntryGvRow 8 s6Step7EntryGvFresh=
    some (s6Step7EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 887],775⟩,growRow 775 s6Step7EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step7EntryGvBefore s6Step7EntryGvAfter s6Step7EntryGvRow 8 s6Step7EntryGvFresh
    s6Step7EntryGv_distinct s6Step7EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step7EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step7EntryGvRow.payload++s6Step7EntryGvFresh) s6Step7EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step8EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step8EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step8EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step8EntryFFresh : List Wire := []
theorem s6Step8EntryF_distinct : (s6Step8EntryFRow.sign::s6Step8EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step8EntryF_owned : (s6Step8EntryFRow.sign::s6Step8EntryFRow.payload).toFinset⊆s6Step8EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step8EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step8EntryF_reserved : s6Step8EntryFBefore.reserve s6Step8EntryFFresh.toFinset=some s6Step8EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step8EntryFFresh,arenaWires]
  · norm_num [s6Step8EntryFBefore,s6Step8EntryFFresh,arenaWires]
  · simp only [s6Step8EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step8EntryF_checked : planRowResizeLog s6Step8EntryFBefore s6Step8EntryFRow 256 s6Step8EntryFFresh=
    some (s6Step8EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step8EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step8EntryFBefore s6Step8EntryFAfter s6Step8EntryFRow 256 s6Step8EntryFFresh
    s6Step8EntryF_distinct s6Step8EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step8EntryF_reserved
  have rowEq : WindowRow.mk (s6Step8EntryFRow.payload++s6Step8EntryFFresh) s6Step8EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step8EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step8EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step8EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step8EntryGFresh : List Wire := [807]
theorem s6Step8EntryG_distinct : (s6Step8EntryGRow.sign::s6Step8EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step8EntryG_owned : (s6Step8EntryGRow.sign::s6Step8EntryGRow.payload).toFinset⊆s6Step8EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step8EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step8EntryG_reserved : s6Step8EntryGBefore.reserve s6Step8EntryGFresh.toFinset=some s6Step8EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step8EntryGFresh,arenaWires]
  · norm_num [s6Step8EntryGBefore,s6Step8EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step8EntryGAfter,s6Step8EntryGBefore,s6Step8EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step8EntryG_checked : planRowResizeLog s6Step8EntryGBefore s6Step8EntryGRow 256 s6Step8EntryGFresh=
    some (s6Step8EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807],777⟩,growRow 777 s6Step8EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step8EntryGBefore s6Step8EntryGAfter s6Step8EntryGRow 256 s6Step8EntryGFresh
    s6Step8EntryG_distinct s6Step8EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step8EntryG_reserved
  have rowEq : WindowRow.mk (s6Step8EntryGRow.payload++s6Step8EntryGFresh) s6Step8EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step8EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step8EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step8EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805],776⟩
def s6Step8EntryFvFresh : List Wire := []
theorem s6Step8EntryFv_distinct : (s6Step8EntryFvRow.sign::s6Step8EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step8EntryFv_owned : (s6Step8EntryFvRow.sign::s6Step8EntryFvRow.payload).toFinset⊆s6Step8EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step8EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step8EntryFv_reserved : s6Step8EntryFvBefore.reserve s6Step8EntryFvFresh.toFinset=some s6Step8EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step8EntryFvFresh,arenaWires]
  · norm_num [s6Step8EntryFvBefore,s6Step8EntryFvFresh,arenaWires]
  · simp only [s6Step8EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step8EntryFv_checked : planRowResizeLog s6Step8EntryFvBefore s6Step8EntryFvRow 9 s6Step8EntryFvFresh=
    some (s6Step8EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845, 805],776⟩,growRow 776 s6Step8EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step8EntryFvBefore s6Step8EntryFvAfter s6Step8EntryFvRow 9 s6Step8EntryFvFresh
    s6Step8EntryFv_distinct s6Step8EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step8EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step8EntryFvRow.payload++s6Step8EntryFvFresh) s6Step8EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845, 805],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step8EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step8EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step8EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907],775⟩
def s6Step8EntryGvFresh : List Wire := [908, 887]
theorem s6Step8EntryGv_distinct : (s6Step8EntryGvRow.sign::s6Step8EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step8EntryGv_owned : (s6Step8EntryGvRow.sign::s6Step8EntryGvRow.payload).toFinset⊆s6Step8EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step8EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step8EntryGv_reserved : s6Step8EntryGvBefore.reserve s6Step8EntryGvFresh.toFinset=some s6Step8EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step8EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step8EntryGvBefore,s6Step8EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step8EntryGvAfter,s6Step8EntryGvBefore,s6Step8EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step8EntryGv_checked : planRowResizeLog s6Step8EntryGvBefore s6Step8EntryGvRow 9 s6Step8EntryGvFresh=
    some (s6Step8EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 908, 887],775⟩,growRow 775 s6Step8EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step8EntryGvBefore s6Step8EntryGvAfter s6Step8EntryGvRow 9 s6Step8EntryGvFresh
    s6Step8EntryGv_distinct s6Step8EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step8EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step8EntryGvRow.payload++s6Step8EntryGvFresh) s6Step8EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 908, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step9EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step9EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step9EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step9EntryFFresh : List Wire := []
theorem s6Step9EntryF_distinct : (s6Step9EntryFRow.sign::s6Step9EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step9EntryF_owned : (s6Step9EntryFRow.sign::s6Step9EntryFRow.payload).toFinset⊆s6Step9EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step9EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step9EntryF_reserved : s6Step9EntryFBefore.reserve s6Step9EntryFFresh.toFinset=some s6Step9EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step9EntryFFresh,arenaWires]
  · norm_num [s6Step9EntryFBefore,s6Step9EntryFFresh,arenaWires]
  · simp only [s6Step9EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step9EntryF_checked : planRowResizeLog s6Step9EntryFBefore s6Step9EntryFRow 256 s6Step9EntryFFresh=
    some (s6Step9EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step9EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step9EntryFBefore s6Step9EntryFAfter s6Step9EntryFRow 256 s6Step9EntryFFresh
    s6Step9EntryF_distinct s6Step9EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step9EntryF_reserved
  have rowEq : WindowRow.mk (s6Step9EntryFRow.payload++s6Step9EntryFFresh) s6Step9EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step9EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step9EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step9EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step9EntryGFresh : List Wire := [813]
theorem s6Step9EntryG_distinct : (s6Step9EntryGRow.sign::s6Step9EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step9EntryG_owned : (s6Step9EntryGRow.sign::s6Step9EntryGRow.payload).toFinset⊆s6Step9EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step9EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step9EntryG_reserved : s6Step9EntryGBefore.reserve s6Step9EntryGFresh.toFinset=some s6Step9EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step9EntryGFresh,arenaWires]
  · norm_num [s6Step9EntryGBefore,s6Step9EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step9EntryGAfter,s6Step9EntryGBefore,s6Step9EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step9EntryG_checked : planRowResizeLog s6Step9EntryGBefore s6Step9EntryGRow 256 s6Step9EntryGFresh=
    some (s6Step9EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813],777⟩,growRow 777 s6Step9EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step9EntryGBefore s6Step9EntryGAfter s6Step9EntryGRow 256 s6Step9EntryGFresh
    s6Step9EntryG_distinct s6Step9EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step9EntryG_reserved
  have rowEq : WindowRow.mk (s6Step9EntryGRow.payload++s6Step9EntryGFresh) s6Step9EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step9EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step9EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step9EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796],776⟩
def s6Step9EntryFvFresh : List Wire := []
theorem s6Step9EntryFv_distinct : (s6Step9EntryFvRow.sign::s6Step9EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step9EntryFv_owned : (s6Step9EntryFvRow.sign::s6Step9EntryFvRow.payload).toFinset⊆s6Step9EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step9EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step9EntryFv_reserved : s6Step9EntryFvBefore.reserve s6Step9EntryFvFresh.toFinset=some s6Step9EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step9EntryFvFresh,arenaWires]
  · norm_num [s6Step9EntryFvBefore,s6Step9EntryFvFresh,arenaWires]
  · simp only [s6Step9EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step9EntryFv_checked : planRowResizeLog s6Step9EntryFvBefore s6Step9EntryFvRow 10 s6Step9EntryFvFresh=
    some (s6Step9EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796],776⟩,growRow 776 s6Step9EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step9EntryFvBefore s6Step9EntryFvAfter s6Step9EntryFvRow 10 s6Step9EntryFvFresh
    s6Step9EntryFv_distinct s6Step9EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step9EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step9EntryFvRow.payload++s6Step9EntryFvFresh) s6Step9EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step9EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step9EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step9EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908],775⟩
def s6Step9EntryGvFresh : List Wire := [890, 887]
theorem s6Step9EntryGv_distinct : (s6Step9EntryGvRow.sign::s6Step9EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step9EntryGv_owned : (s6Step9EntryGvRow.sign::s6Step9EntryGvRow.payload).toFinset⊆s6Step9EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step9EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step9EntryGv_reserved : s6Step9EntryGvBefore.reserve s6Step9EntryGvFresh.toFinset=some s6Step9EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step9EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step9EntryGvBefore,s6Step9EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step9EntryGvAfter,s6Step9EntryGvBefore,s6Step9EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step9EntryGv_checked : planRowResizeLog s6Step9EntryGvBefore s6Step9EntryGvRow 10 s6Step9EntryGvFresh=
    some (s6Step9EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 887],775⟩,growRow 775 s6Step9EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step9EntryGvBefore s6Step9EntryGvAfter s6Step9EntryGvRow 10 s6Step9EntryGvFresh
    s6Step9EntryGv_distinct s6Step9EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step9EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step9EntryGvRow.payload++s6Step9EntryGvFresh) s6Step9EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step10EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step10EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step10EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step10EntryFFresh : List Wire := []
theorem s6Step10EntryF_distinct : (s6Step10EntryFRow.sign::s6Step10EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step10EntryF_owned : (s6Step10EntryFRow.sign::s6Step10EntryFRow.payload).toFinset⊆s6Step10EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step10EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step10EntryF_reserved : s6Step10EntryFBefore.reserve s6Step10EntryFFresh.toFinset=some s6Step10EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step10EntryFFresh,arenaWires]
  · norm_num [s6Step10EntryFBefore,s6Step10EntryFFresh,arenaWires]
  · simp only [s6Step10EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step10EntryF_checked : planRowResizeLog s6Step10EntryFBefore s6Step10EntryFRow 256 s6Step10EntryFFresh=
    some (s6Step10EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step10EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step10EntryFBefore s6Step10EntryFAfter s6Step10EntryFRow 256 s6Step10EntryFFresh
    s6Step10EntryF_distinct s6Step10EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step10EntryF_reserved
  have rowEq : WindowRow.mk (s6Step10EntryFRow.payload++s6Step10EntryFFresh) s6Step10EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step10EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step10EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step10EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step10EntryGFresh : List Wire := [860]
theorem s6Step10EntryG_distinct : (s6Step10EntryGRow.sign::s6Step10EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step10EntryG_owned : (s6Step10EntryGRow.sign::s6Step10EntryGRow.payload).toFinset⊆s6Step10EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step10EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step10EntryG_reserved : s6Step10EntryGBefore.reserve s6Step10EntryGFresh.toFinset=some s6Step10EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step10EntryGFresh,arenaWires]
  · norm_num [s6Step10EntryGBefore,s6Step10EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step10EntryGAfter,s6Step10EntryGBefore,s6Step10EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step10EntryG_checked : planRowResizeLog s6Step10EntryGBefore s6Step10EntryGRow 256 s6Step10EntryGFresh=
    some (s6Step10EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860],777⟩,growRow 777 s6Step10EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step10EntryGBefore s6Step10EntryGAfter s6Step10EntryGRow 256 s6Step10EntryGFresh
    s6Step10EntryG_distinct s6Step10EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step10EntryG_reserved
  have rowEq : WindowRow.mk (s6Step10EntryGRow.payload++s6Step10EntryGFresh) s6Step10EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step10EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step10EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step10EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856],776⟩
def s6Step10EntryFvFresh : List Wire := []
theorem s6Step10EntryFv_distinct : (s6Step10EntryFvRow.sign::s6Step10EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step10EntryFv_owned : (s6Step10EntryFvRow.sign::s6Step10EntryFvRow.payload).toFinset⊆s6Step10EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step10EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step10EntryFv_reserved : s6Step10EntryFvBefore.reserve s6Step10EntryFvFresh.toFinset=some s6Step10EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step10EntryFvFresh,arenaWires]
  · norm_num [s6Step10EntryFvBefore,s6Step10EntryFvFresh,arenaWires]
  · simp only [s6Step10EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step10EntryFv_checked : planRowResizeLog s6Step10EntryFvBefore s6Step10EntryFvRow 11 s6Step10EntryFvFresh=
    some (s6Step10EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856],776⟩,growRow 776 s6Step10EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step10EntryFvBefore s6Step10EntryFvAfter s6Step10EntryFvRow 11 s6Step10EntryFvFresh
    s6Step10EntryFv_distinct s6Step10EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step10EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step10EntryFvRow.payload++s6Step10EntryFvFresh) s6Step10EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step10EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step10EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step10EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890],775⟩
def s6Step10EntryGvFresh : List Wire := [873, 887]
theorem s6Step10EntryGv_distinct : (s6Step10EntryGvRow.sign::s6Step10EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step10EntryGv_owned : (s6Step10EntryGvRow.sign::s6Step10EntryGvRow.payload).toFinset⊆s6Step10EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step10EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step10EntryGv_reserved : s6Step10EntryGvBefore.reserve s6Step10EntryGvFresh.toFinset=some s6Step10EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step10EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step10EntryGvBefore,s6Step10EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step10EntryGvAfter,s6Step10EntryGvBefore,s6Step10EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step10EntryGv_checked : planRowResizeLog s6Step10EntryGvBefore s6Step10EntryGvRow 11 s6Step10EntryGvFresh=
    some (s6Step10EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 887],775⟩,growRow 775 s6Step10EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step10EntryGvBefore s6Step10EntryGvAfter s6Step10EntryGvRow 11 s6Step10EntryGvFresh
    s6Step10EntryGv_distinct s6Step10EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step10EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step10EntryGvRow.payload++s6Step10EntryGvFresh) s6Step10EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step11EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step11EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step11EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step11EntryFFresh : List Wire := []
theorem s6Step11EntryF_distinct : (s6Step11EntryFRow.sign::s6Step11EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step11EntryF_owned : (s6Step11EntryFRow.sign::s6Step11EntryFRow.payload).toFinset⊆s6Step11EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step11EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step11EntryF_reserved : s6Step11EntryFBefore.reserve s6Step11EntryFFresh.toFinset=some s6Step11EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step11EntryFFresh,arenaWires]
  · norm_num [s6Step11EntryFBefore,s6Step11EntryFFresh,arenaWires]
  · simp only [s6Step11EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step11EntryF_checked : planRowResizeLog s6Step11EntryFBefore s6Step11EntryFRow 256 s6Step11EntryFFresh=
    some (s6Step11EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step11EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step11EntryFBefore s6Step11EntryFAfter s6Step11EntryFRow 256 s6Step11EntryFFresh
    s6Step11EntryF_distinct s6Step11EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step11EntryF_reserved
  have rowEq : WindowRow.mk (s6Step11EntryFRow.payload++s6Step11EntryFFresh) s6Step11EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step11EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step11EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step11EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step11EntryGFresh : List Wire := [862]
theorem s6Step11EntryG_distinct : (s6Step11EntryGRow.sign::s6Step11EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step11EntryG_owned : (s6Step11EntryGRow.sign::s6Step11EntryGRow.payload).toFinset⊆s6Step11EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step11EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step11EntryG_reserved : s6Step11EntryGBefore.reserve s6Step11EntryGFresh.toFinset=some s6Step11EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step11EntryGFresh,arenaWires]
  · norm_num [s6Step11EntryGBefore,s6Step11EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step11EntryGAfter,s6Step11EntryGBefore,s6Step11EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step11EntryG_checked : planRowResizeLog s6Step11EntryGBefore s6Step11EntryGRow 256 s6Step11EntryGFresh=
    some (s6Step11EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩,growRow 777 s6Step11EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step11EntryGBefore s6Step11EntryGAfter s6Step11EntryGRow 256 s6Step11EntryGFresh
    s6Step11EntryG_distinct s6Step11EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step11EntryG_reserved
  have rowEq : WindowRow.mk (s6Step11EntryGRow.payload++s6Step11EntryGFresh) s6Step11EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step11EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step11EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step11EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865],776⟩
def s6Step11EntryFvFresh : List Wire := []
theorem s6Step11EntryFv_distinct : (s6Step11EntryFvRow.sign::s6Step11EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step11EntryFv_owned : (s6Step11EntryFvRow.sign::s6Step11EntryFvRow.payload).toFinset⊆s6Step11EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step11EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step11EntryFv_reserved : s6Step11EntryFvBefore.reserve s6Step11EntryFvFresh.toFinset=some s6Step11EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step11EntryFvFresh,arenaWires]
  · norm_num [s6Step11EntryFvBefore,s6Step11EntryFvFresh,arenaWires]
  · simp only [s6Step11EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step11EntryFv_checked : planRowResizeLog s6Step11EntryFvBefore s6Step11EntryFvRow 12 s6Step11EntryFvFresh=
    some (s6Step11EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865],776⟩,growRow 776 s6Step11EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step11EntryFvBefore s6Step11EntryFvAfter s6Step11EntryFvRow 12 s6Step11EntryFvFresh
    s6Step11EntryFv_distinct s6Step11EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step11EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step11EntryFvRow.payload++s6Step11EntryFvFresh) s6Step11EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step11EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step11EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step11EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873],775⟩
def s6Step11EntryGvFresh : List Wire := [863, 887]
theorem s6Step11EntryGv_distinct : (s6Step11EntryGvRow.sign::s6Step11EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step11EntryGv_owned : (s6Step11EntryGvRow.sign::s6Step11EntryGvRow.payload).toFinset⊆s6Step11EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step11EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step11EntryGv_reserved : s6Step11EntryGvBefore.reserve s6Step11EntryGvFresh.toFinset=some s6Step11EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step11EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step11EntryGvBefore,s6Step11EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step11EntryGvAfter,s6Step11EntryGvBefore,s6Step11EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step11EntryGv_checked : planRowResizeLog s6Step11EntryGvBefore s6Step11EntryGvRow 12 s6Step11EntryGvFresh=
    some (s6Step11EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 887],775⟩,growRow 775 s6Step11EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step11EntryGvBefore s6Step11EntryGvAfter s6Step11EntryGvRow 12 s6Step11EntryGvFresh
    s6Step11EntryGv_distinct s6Step11EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step11EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step11EntryGvRow.payload++s6Step11EntryGvFresh) s6Step11EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step12EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step12EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step12EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step12EntryFFresh : List Wire := []
theorem s6Step12EntryF_distinct : (s6Step12EntryFRow.sign::s6Step12EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step12EntryF_owned : (s6Step12EntryFRow.sign::s6Step12EntryFRow.payload).toFinset⊆s6Step12EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step12EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step12EntryF_reserved : s6Step12EntryFBefore.reserve s6Step12EntryFFresh.toFinset=some s6Step12EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step12EntryFFresh,arenaWires]
  · norm_num [s6Step12EntryFBefore,s6Step12EntryFFresh,arenaWires]
  · simp only [s6Step12EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step12EntryF_checked : planRowResizeLog s6Step12EntryFBefore s6Step12EntryFRow 256 s6Step12EntryFFresh=
    some (s6Step12EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step12EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step12EntryFBefore s6Step12EntryFAfter s6Step12EntryFRow 256 s6Step12EntryFFresh
    s6Step12EntryF_distinct s6Step12EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step12EntryF_reserved
  have rowEq : WindowRow.mk (s6Step12EntryFRow.payload++s6Step12EntryFFresh) s6Step12EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step12EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step12EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step12EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step12EntryGFresh : List Wire := [807]
theorem s6Step12EntryG_distinct : (s6Step12EntryGRow.sign::s6Step12EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step12EntryG_owned : (s6Step12EntryGRow.sign::s6Step12EntryGRow.payload).toFinset⊆s6Step12EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step12EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step12EntryG_reserved : s6Step12EntryGBefore.reserve s6Step12EntryGFresh.toFinset=some s6Step12EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step12EntryGFresh,arenaWires]
  · norm_num [s6Step12EntryGBefore,s6Step12EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step12EntryGAfter,s6Step12EntryGBefore,s6Step12EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step12EntryG_checked : planRowResizeLog s6Step12EntryGBefore s6Step12EntryGRow 256 s6Step12EntryGFresh=
    some (s6Step12EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807],777⟩,growRow 777 s6Step12EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step12EntryGBefore s6Step12EntryGAfter s6Step12EntryGRow 256 s6Step12EntryGFresh
    s6Step12EntryG_distinct s6Step12EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step12EntryG_reserved
  have rowEq : WindowRow.mk (s6Step12EntryGRow.payload++s6Step12EntryGFresh) s6Step12EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step12EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step12EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step12EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789],776⟩
def s6Step12EntryFvFresh : List Wire := []
theorem s6Step12EntryFv_distinct : (s6Step12EntryFvRow.sign::s6Step12EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step12EntryFv_owned : (s6Step12EntryFvRow.sign::s6Step12EntryFvRow.payload).toFinset⊆s6Step12EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step12EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step12EntryFv_reserved : s6Step12EntryFvBefore.reserve s6Step12EntryFvFresh.toFinset=some s6Step12EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step12EntryFvFresh,arenaWires]
  · norm_num [s6Step12EntryFvBefore,s6Step12EntryFvFresh,arenaWires]
  · simp only [s6Step12EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step12EntryFv_checked : planRowResizeLog s6Step12EntryFvBefore s6Step12EntryFvRow 13 s6Step12EntryFvFresh=
    some (s6Step12EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789],776⟩,growRow 776 s6Step12EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step12EntryFvBefore s6Step12EntryFvAfter s6Step12EntryFvRow 13 s6Step12EntryFvFresh
    s6Step12EntryFv_distinct s6Step12EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step12EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step12EntryFvRow.payload++s6Step12EntryFvFresh) s6Step12EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step12EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step12EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step12EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863],775⟩
def s6Step12EntryGvFresh : List Wire := [823, 887]
theorem s6Step12EntryGv_distinct : (s6Step12EntryGvRow.sign::s6Step12EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step12EntryGv_owned : (s6Step12EntryGvRow.sign::s6Step12EntryGvRow.payload).toFinset⊆s6Step12EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step12EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step12EntryGv_reserved : s6Step12EntryGvBefore.reserve s6Step12EntryGvFresh.toFinset=some s6Step12EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step12EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step12EntryGvBefore,s6Step12EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step12EntryGvAfter,s6Step12EntryGvBefore,s6Step12EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step12EntryGv_checked : planRowResizeLog s6Step12EntryGvBefore s6Step12EntryGvRow 13 s6Step12EntryGvFresh=
    some (s6Step12EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 887],775⟩,growRow 775 s6Step12EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step12EntryGvBefore s6Step12EntryGvAfter s6Step12EntryGvRow 13 s6Step12EntryGvFresh
    s6Step12EntryGv_distinct s6Step12EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step12EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step12EntryGvRow.payload++s6Step12EntryGvFresh) s6Step12EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step13EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step13EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step13EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step13EntryFFresh : List Wire := []
theorem s6Step13EntryF_distinct : (s6Step13EntryFRow.sign::s6Step13EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step13EntryF_owned : (s6Step13EntryFRow.sign::s6Step13EntryFRow.payload).toFinset⊆s6Step13EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step13EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step13EntryF_reserved : s6Step13EntryFBefore.reserve s6Step13EntryFFresh.toFinset=some s6Step13EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step13EntryFFresh,arenaWires]
  · norm_num [s6Step13EntryFBefore,s6Step13EntryFFresh,arenaWires]
  · simp only [s6Step13EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step13EntryF_checked : planRowResizeLog s6Step13EntryFBefore s6Step13EntryFRow 256 s6Step13EntryFFresh=
    some (s6Step13EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step13EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step13EntryFBefore s6Step13EntryFAfter s6Step13EntryFRow 256 s6Step13EntryFFresh
    s6Step13EntryF_distinct s6Step13EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step13EntryF_reserved
  have rowEq : WindowRow.mk (s6Step13EntryFRow.payload++s6Step13EntryFFresh) s6Step13EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step13EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step13EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step13EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step13EntryGFresh : List Wire := [813]
theorem s6Step13EntryG_distinct : (s6Step13EntryGRow.sign::s6Step13EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step13EntryG_owned : (s6Step13EntryGRow.sign::s6Step13EntryGRow.payload).toFinset⊆s6Step13EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step13EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step13EntryG_reserved : s6Step13EntryGBefore.reserve s6Step13EntryGFresh.toFinset=some s6Step13EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step13EntryGFresh,arenaWires]
  · norm_num [s6Step13EntryGBefore,s6Step13EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step13EntryGAfter,s6Step13EntryGBefore,s6Step13EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step13EntryG_checked : planRowResizeLog s6Step13EntryGBefore s6Step13EntryGRow 256 s6Step13EntryGFresh=
    some (s6Step13EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813],777⟩,growRow 777 s6Step13EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step13EntryGBefore s6Step13EntryGAfter s6Step13EntryGRow 256 s6Step13EntryGFresh
    s6Step13EntryG_distinct s6Step13EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step13EntryG_reserved
  have rowEq : WindowRow.mk (s6Step13EntryGRow.payload++s6Step13EntryGFresh) s6Step13EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step13EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step13EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step13EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818],776⟩
def s6Step13EntryFvFresh : List Wire := []
theorem s6Step13EntryFv_distinct : (s6Step13EntryFvRow.sign::s6Step13EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step13EntryFv_owned : (s6Step13EntryFvRow.sign::s6Step13EntryFvRow.payload).toFinset⊆s6Step13EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step13EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step13EntryFv_reserved : s6Step13EntryFvBefore.reserve s6Step13EntryFvFresh.toFinset=some s6Step13EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step13EntryFvFresh,arenaWires]
  · norm_num [s6Step13EntryFvBefore,s6Step13EntryFvFresh,arenaWires]
  · simp only [s6Step13EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step13EntryFv_checked : planRowResizeLog s6Step13EntryFvBefore s6Step13EntryFvRow 14 s6Step13EntryFvFresh=
    some (s6Step13EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818],776⟩,growRow 776 s6Step13EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step13EntryFvBefore s6Step13EntryFvAfter s6Step13EntryFvRow 14 s6Step13EntryFvFresh
    s6Step13EntryFv_distinct s6Step13EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step13EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step13EntryFvRow.payload++s6Step13EntryFvFresh) s6Step13EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step13EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step13EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step13EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823],775⟩
def s6Step13EntryGvFresh : List Wire := [880, 887]
theorem s6Step13EntryGv_distinct : (s6Step13EntryGvRow.sign::s6Step13EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step13EntryGv_owned : (s6Step13EntryGvRow.sign::s6Step13EntryGvRow.payload).toFinset⊆s6Step13EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step13EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step13EntryGv_reserved : s6Step13EntryGvBefore.reserve s6Step13EntryGvFresh.toFinset=some s6Step13EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step13EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step13EntryGvBefore,s6Step13EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step13EntryGvAfter,s6Step13EntryGvBefore,s6Step13EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step13EntryGv_checked : planRowResizeLog s6Step13EntryGvBefore s6Step13EntryGvRow 14 s6Step13EntryGvFresh=
    some (s6Step13EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 887],775⟩,growRow 775 s6Step13EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step13EntryGvBefore s6Step13EntryGvAfter s6Step13EntryGvRow 14 s6Step13EntryGvFresh
    s6Step13EntryGv_distinct s6Step13EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step13EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step13EntryGvRow.payload++s6Step13EntryGvFresh) s6Step13EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step14EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step14EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step14EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step14EntryFFresh : List Wire := []
theorem s6Step14EntryF_distinct : (s6Step14EntryFRow.sign::s6Step14EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step14EntryF_owned : (s6Step14EntryFRow.sign::s6Step14EntryFRow.payload).toFinset⊆s6Step14EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step14EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step14EntryF_reserved : s6Step14EntryFBefore.reserve s6Step14EntryFFresh.toFinset=some s6Step14EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step14EntryFFresh,arenaWires]
  · norm_num [s6Step14EntryFBefore,s6Step14EntryFFresh,arenaWires]
  · simp only [s6Step14EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step14EntryF_checked : planRowResizeLog s6Step14EntryFBefore s6Step14EntryFRow 256 s6Step14EntryFFresh=
    some (s6Step14EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step14EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step14EntryFBefore s6Step14EntryFAfter s6Step14EntryFRow 256 s6Step14EntryFFresh
    s6Step14EntryF_distinct s6Step14EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step14EntryF_reserved
  have rowEq : WindowRow.mk (s6Step14EntryFRow.payload++s6Step14EntryFFresh) s6Step14EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step14EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step14EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step14EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step14EntryGFresh : List Wire := [860]
theorem s6Step14EntryG_distinct : (s6Step14EntryGRow.sign::s6Step14EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step14EntryG_owned : (s6Step14EntryGRow.sign::s6Step14EntryGRow.payload).toFinset⊆s6Step14EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step14EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step14EntryG_reserved : s6Step14EntryGBefore.reserve s6Step14EntryGFresh.toFinset=some s6Step14EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step14EntryGFresh,arenaWires]
  · norm_num [s6Step14EntryGBefore,s6Step14EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step14EntryGAfter,s6Step14EntryGBefore,s6Step14EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step14EntryG_checked : planRowResizeLog s6Step14EntryGBefore s6Step14EntryGRow 256 s6Step14EntryGFresh=
    some (s6Step14EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860],777⟩,growRow 777 s6Step14EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step14EntryGBefore s6Step14EntryGAfter s6Step14EntryGRow 256 s6Step14EntryGFresh
    s6Step14EntryG_distinct s6Step14EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step14EntryG_reserved
  have rowEq : WindowRow.mk (s6Step14EntryGRow.payload++s6Step14EntryGFresh) s6Step14EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step14EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step14EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step14EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892],776⟩
def s6Step14EntryFvFresh : List Wire := []
theorem s6Step14EntryFv_distinct : (s6Step14EntryFvRow.sign::s6Step14EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step14EntryFv_owned : (s6Step14EntryFvRow.sign::s6Step14EntryFvRow.payload).toFinset⊆s6Step14EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step14EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step14EntryFv_reserved : s6Step14EntryFvBefore.reserve s6Step14EntryFvFresh.toFinset=some s6Step14EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step14EntryFvFresh,arenaWires]
  · norm_num [s6Step14EntryFvBefore,s6Step14EntryFvFresh,arenaWires]
  · simp only [s6Step14EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step14EntryFv_checked : planRowResizeLog s6Step14EntryFvBefore s6Step14EntryFvRow 15 s6Step14EntryFvFresh=
    some (s6Step14EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892],776⟩,growRow 776 s6Step14EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step14EntryFvBefore s6Step14EntryFvAfter s6Step14EntryFvRow 15 s6Step14EntryFvFresh
    s6Step14EntryFv_distinct s6Step14EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step14EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step14EntryFvRow.payload++s6Step14EntryFvFresh) s6Step14EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step14EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step14EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step14EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880],775⟩
def s6Step14EntryGvFresh : List Wire := [864, 887]
theorem s6Step14EntryGv_distinct : (s6Step14EntryGvRow.sign::s6Step14EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step14EntryGv_owned : (s6Step14EntryGvRow.sign::s6Step14EntryGvRow.payload).toFinset⊆s6Step14EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step14EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (883≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step14EntryGv_reserved : s6Step14EntryGvBefore.reserve s6Step14EntryGvFresh.toFinset=some s6Step14EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step14EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step14EntryGvBefore,s6Step14EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step14EntryGvAfter,s6Step14EntryGvBefore,s6Step14EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step14EntryGv_checked : planRowResizeLog s6Step14EntryGvBefore s6Step14EntryGvRow 15 s6Step14EntryGvFresh=
    some (s6Step14EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 887],775⟩,growRow 775 s6Step14EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step14EntryGvBefore s6Step14EntryGvAfter s6Step14EntryGvRow 15 s6Step14EntryGvFresh
    s6Step14EntryGv_distinct s6Step14EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step14EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step14EntryGvRow.payload++s6Step14EntryGvFresh) s6Step14EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step15EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step15EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step15EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step15EntryFFresh : List Wire := []
theorem s6Step15EntryF_distinct : (s6Step15EntryFRow.sign::s6Step15EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step15EntryF_owned : (s6Step15EntryFRow.sign::s6Step15EntryFRow.payload).toFinset⊆s6Step15EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step15EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15EntryF_reserved : s6Step15EntryFBefore.reserve s6Step15EntryFFresh.toFinset=some s6Step15EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step15EntryFFresh,arenaWires]
  · norm_num [s6Step15EntryFBefore,s6Step15EntryFFresh,arenaWires]
  · simp only [s6Step15EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step15EntryF_checked : planRowResizeLog s6Step15EntryFBefore s6Step15EntryFRow 256 s6Step15EntryFFresh=
    some (s6Step15EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩,growRow 795 s6Step15EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step15EntryFBefore s6Step15EntryFAfter s6Step15EntryFRow 256 s6Step15EntryFFresh
    s6Step15EntryF_distinct s6Step15EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step15EntryF_reserved
  have rowEq : WindowRow.mk (s6Step15EntryFRow.payload++s6Step15EntryFFresh) s6Step15EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step15EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step15EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step15EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254],777⟩
def s6Step15EntryGFresh : List Wire := [862]
theorem s6Step15EntryG_distinct : (s6Step15EntryGRow.sign::s6Step15EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step15EntryG_owned : (s6Step15EntryGRow.sign::s6Step15EntryGRow.payload).toFinset⊆s6Step15EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step15EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15EntryG_reserved : s6Step15EntryGBefore.reserve s6Step15EntryGFresh.toFinset=some s6Step15EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step15EntryGFresh,arenaWires]
  · norm_num [s6Step15EntryGBefore,s6Step15EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step15EntryGAfter,s6Step15EntryGBefore,s6Step15EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step15EntryG_checked : planRowResizeLog s6Step15EntryGBefore s6Step15EntryGRow 256 s6Step15EntryGFresh=
    some (s6Step15EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩,growRow 777 s6Step15EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step15EntryGBefore s6Step15EntryGAfter s6Step15EntryGRow 256 s6Step15EntryGFresh
    s6Step15EntryG_distinct s6Step15EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step15EntryG_reserved
  have rowEq : WindowRow.mk (s6Step15EntryGRow.payload++s6Step15EntryGFresh) s6Step15EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step15EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step15EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step15EntryFvRow : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882],776⟩
def s6Step15EntryFvFresh : List Wire := []
theorem s6Step15EntryFv_distinct : (s6Step15EntryFvRow.sign::s6Step15EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step15EntryFv_owned : (s6Step15EntryFvRow.sign::s6Step15EntryFvRow.payload).toFinset⊆s6Step15EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step15EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15EntryFv_reserved : s6Step15EntryFvBefore.reserve s6Step15EntryFvFresh.toFinset=some s6Step15EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step15EntryFvFresh,arenaWires]
  · norm_num [s6Step15EntryFvBefore,s6Step15EntryFvFresh,arenaWires]
  · simp only [s6Step15EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step15EntryFv_checked : planRowResizeLog s6Step15EntryFvBefore s6Step15EntryFvRow 16 s6Step15EntryFvFresh=
    some (s6Step15EntryFvAfter,⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882],776⟩,growRow 776 s6Step15EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step15EntryFvBefore s6Step15EntryFvAfter s6Step15EntryFvRow 16 s6Step15EntryFvFresh
    s6Step15EntryFv_distinct s6Step15EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step15EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step15EntryFvRow.payload++s6Step15EntryFvFresh) s6Step15EntryFvRow.sign=⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step15EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step15EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step15EntryGvRow : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864],775⟩
def s6Step15EntryGvFresh : List Wire := [828, 887]
theorem s6Step15EntryGv_distinct : (s6Step15EntryGvRow.sign::s6Step15EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step15EntryGv_owned : (s6Step15EntryGvRow.sign::s6Step15EntryGvRow.payload).toFinset⊆s6Step15EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step15EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15EntryGv_reserved : s6Step15EntryGvBefore.reserve s6Step15EntryGvFresh.toFinset=some s6Step15EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step15EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step15EntryGvBefore,s6Step15EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step15EntryGvAfter,s6Step15EntryGvBefore,s6Step15EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step15EntryGv_checked : planRowResizeLog s6Step15EntryGvBefore s6Step15EntryGvRow 16 s6Step15EntryGvFresh=
    some (s6Step15EntryGvAfter,⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 887],775⟩,growRow 775 s6Step15EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step15EntryGvBefore s6Step15EntryGvAfter s6Step15EntryGvRow 16 s6Step15EntryGvFresh
    s6Step15EntryGv_distinct s6Step15EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step15EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step15EntryGvRow.payload++s6Step15EntryGvFresh) s6Step15EntryGvRow.sign=⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step498EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩
def s6Step498EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩
def s6Step498EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279],795⟩
def s6Step498EntryFFresh : List Wire := [915]
theorem s6Step498EntryF_distinct : (s6Step498EntryFRow.sign::s6Step498EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step498EntryF_owned : (s6Step498EntryFRow.sign::s6Step498EntryFRow.payload).toFinset⊆s6Step498EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step498EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498EntryF_reserved : s6Step498EntryFBefore.reserve s6Step498EntryFFresh.toFinset=some s6Step498EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step498EntryFFresh,arenaWires]
  · norm_num [s6Step498EntryFBefore,s6Step498EntryFFresh,arenaWires]
  · ext q
    simp only [s6Step498EntryFAfter,s6Step498EntryFBefore,s6Step498EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step498EntryF_checked : planRowResizeLog s6Step498EntryFBefore s6Step498EntryFRow 25 s6Step498EntryFFresh=
    some (s6Step498EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 915],795⟩,growRow 795 s6Step498EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step498EntryFBefore s6Step498EntryFAfter s6Step498EntryFRow 25 s6Step498EntryFFresh
    s6Step498EntryF_distinct s6Step498EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step498EntryF_reserved
  have rowEq : WindowRow.mk (s6Step498EntryFRow.payload++s6Step498EntryFFresh) s6Step498EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 915],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step498EntryGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩
def s6Step498EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩
def s6Step498EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 855],777⟩
def s6Step498EntryGFresh : List Wire := []
theorem s6Step498EntryG_distinct : (s6Step498EntryGRow.sign::s6Step498EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step498EntryG_owned : (s6Step498EntryGRow.sign::s6Step498EntryGRow.payload).toFinset⊆s6Step498EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step498EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498EntryG_reserved : s6Step498EntryGBefore.reserve s6Step498EntryGFresh.toFinset=some s6Step498EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step498EntryGFresh,arenaWires]
  · norm_num [s6Step498EntryGBefore,s6Step498EntryGFresh,arenaWires]
  · simp only [s6Step498EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step498EntryG_checked : planRowResizeLog s6Step498EntryGBefore s6Step498EntryGRow 25 s6Step498EntryGFresh=
    some (s6Step498EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 855],777⟩,growRow 777 s6Step498EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step498EntryGBefore s6Step498EntryGAfter s6Step498EntryGRow 25 s6Step498EntryGFresh
    s6Step498EntryG_distinct s6Step498EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step498EntryG_reserved
  have rowEq : WindowRow.mk (s6Step498EntryGRow.payload++s6Step498EntryGFresh) s6Step498EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 855],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step498EntryFvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩
def s6Step498EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩
def s6Step498EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 778, 848, 812, 825, 906, 888, 869, 898, 823, 839, 863, 876, 903, 920, 818, 864, 853, 891, 821, 784, 793, 833, 927, 856, 907, 768, 845, 838, 822, 780, 809, 908, 813, 779],776⟩
def s6Step498EntryFvFresh : List Wire := []
theorem s6Step498EntryFv_distinct : (s6Step498EntryFvRow.sign::s6Step498EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step498EntryFv_owned : (s6Step498EntryFvRow.sign::s6Step498EntryFvRow.payload).toFinset⊆s6Step498EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step498EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498EntryFv_reserved : s6Step498EntryFvBefore.reserve s6Step498EntryFvFresh.toFinset=some s6Step498EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step498EntryFvFresh,arenaWires]
  · norm_num [s6Step498EntryFvBefore,s6Step498EntryFvFresh,arenaWires]
  · simp only [s6Step498EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step498EntryFv_checked : planRowResizeLog s6Step498EntryFvBefore s6Step498EntryFvRow 266 s6Step498EntryFvFresh=
    some (s6Step498EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 778, 848, 812, 825, 906, 888, 869, 898, 823, 839, 863, 876, 903, 920, 818, 864, 853, 891, 821, 784, 793, 833, 927, 856, 907, 768, 845, 838, 822, 780, 809, 908, 813, 779],776⟩,growRow 776 s6Step498EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step498EntryFvBefore s6Step498EntryFvAfter s6Step498EntryFvRow 266 s6Step498EntryFvFresh
    s6Step498EntryFv_distinct s6Step498EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step498EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step498EntryFvRow.payload++s6Step498EntryFvFresh) s6Step498EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 778, 848, 812, 825, 906, 888, 869, 898, 823, 839, 863, 876, 903, 920, 818, 864, 853, 891, 821, 784, 793, 833, 927, 856, 907, 768, 845, 838, 822, 780, 809, 908, 813, 779],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step498EntryGvBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩
def s6Step498EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩
def s6Step498EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 336, 335, 334, 333, 332, 331, 330, 329, 328, 326, 327, 325, 323, 324, 322, 321, 320, 319, 317, 318, 316, 315, 314, 313, 312, 311, 310, 309, 308, 307, 306, 305, 304, 303, 302, 300, 301, 299, 298, 297, 296, 295, 294, 293, 292, 291, 290, 289, 288, 287, 286, 285, 284, 283, 282, 280, 281, 886, 887, 922, 807, 858, 802, 786, 796, 792, 803, 805, 850, 828, 862, 814, 868, 890, 794, 841, 867, 880, 830, 857, 859, 854, 882, 810, 865, 817, 860, 816, 789, 873, 875],775⟩
def s6Step498EntryGvFresh : List Wire := []
theorem s6Step498EntryGv_distinct : (s6Step498EntryGvRow.sign::s6Step498EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step498EntryGv_owned : (s6Step498EntryGvRow.sign::s6Step498EntryGvRow.payload).toFinset⊆s6Step498EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step498EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498EntryGv_reserved : s6Step498EntryGvBefore.reserve s6Step498EntryGvFresh.toFinset=some s6Step498EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step498EntryGvFresh,arenaWires]
  · norm_num [s6Step498EntryGvBefore,s6Step498EntryGvFresh,arenaWires]
  · simp only [s6Step498EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step498EntryGv_checked : planRowResizeLog s6Step498EntryGvBefore s6Step498EntryGvRow 266 s6Step498EntryGvFresh=
    some (s6Step498EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 336, 335, 334, 333, 332, 331, 330, 329, 328, 326, 327, 325, 323, 324, 322, 321, 320, 319, 317, 318, 316, 315, 314, 313, 312, 311, 310, 309, 308, 307, 306, 305, 304, 303, 302, 300, 301, 299, 298, 297, 296, 295, 294, 293, 292, 291, 290, 289, 288, 287, 286, 285, 284, 283, 282, 280, 281, 886, 887, 922, 807, 858, 802, 786, 796, 792, 803, 805, 850, 828, 862, 814, 868, 890, 794, 841, 867, 880, 830, 857, 859, 854, 882, 810, 865, 817, 860, 816, 789, 873, 875],775⟩,growRow 775 s6Step498EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step498EntryGvBefore s6Step498EntryGvAfter s6Step498EntryGvRow 266 s6Step498EntryGvFresh
    s6Step498EntryGv_distinct s6Step498EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step498EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step498EntryGvRow.payload++s6Step498EntryGvFresh) s6Step498EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 336, 335, 334, 333, 332, 331, 330, 329, 328, 326, 327, 325, 323, 324, 322, 321, 320, 319, 317, 318, 316, 315, 314, 313, 312, 311, 310, 309, 308, 307, 306, 305, 304, 303, 302, 300, 301, 299, 298, 297, 296, 295, 294, 293, 292, 291, 290, 289, 288, 287, 286, 285, 284, 283, 282, 280, 281, 886, 887, 922, 807, 858, 802, 786, 796, 792, 803, 805, 850, 828, 862, 814, 868, 890, 794, 841, 867, 880, 830, 857, 859, 854, 882, 810, 865, 817, 860, 816, 789, 873, 875],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
end ECDSAAdd.Arithmetic.Paper935
