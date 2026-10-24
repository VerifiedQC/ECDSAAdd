import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep343
import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable
import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrFrontComposition
import ECDSAAdd.Arithmetic.Paper935.HmrHybridF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedArmedCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFront
import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFront
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs

namespace ECDSAAdd.Arithmetic.Paper935
private local instance privateStepDisjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

private def s2Step345CompleteMoves : List (Wire × Wire) := [(788,611),(845,612)]

private def s2Step345EarlyControlLog : HmrEarlyControlLog := ⟨[845, 788, 844, 894, 839],[800],[907],[913, 914, 915, 916, 917, 918],[]⟩

private def s2Step345FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [827, 839], [], [798, 877]],[[800], [894], [844], [789]],[[], [], [], []]⟩,[901],[903],[907],[913],[914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[907, 913, 914, 915]⟩

private def s2Step345CompleteLog : HmrEarlyStepLog := ⟨s2Step345FrontLog,s2Step345CompleteMoves,s2Step345EarlyControlLog⟩

private def s2Step345ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610],768⟩

private def s2Step345ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 789],770⟩

private def s2Step345ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827],769⟩

private def s2Step345ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877],771⟩

private def s2Step345FrontOut : WindowBank := ⟨s2Step345ExitFOut,s2Step345ExitGOut,s2Step345ExitFvOut,s2Step345ExitGvOut⟩

private def s2Step345CompleteOut : WindowBank := s2Step345FrontOut.repacked s2Step345CompleteMoves

private def s2Step345EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step345EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step345EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step345EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step345EarlyControlPositiveArena,[800],s2Step345EarlyControlEqualityArena,[907],⟨⟨901,false⟩,[⟨⟨800,false⟩,907⟩]⟩⟩

private def s2Step345EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<919)),Finset.filter_subset _ _⟩

private def s2Step345EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<919)),Finset.filter_subset _ _⟩

private def s2Step345EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step345EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step345EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step345EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step345EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,845⟩,⟨⟨774,false⟩,788⟩,⟨⟨775,false⟩,844⟩,⟨⟨776,false⟩,894⟩,⟨⟨777,false⟩,839⟩]⟩

private def s2Step345EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step345EarlyControlZeroArena,s2Step345EarlyControlZeroPlan,s2Step345EarlyControlClassPlan,s2Step345EarlyControlFlagArena,s2Step345EarlyControlFittedArena,s2Step345EarlyControlHistoryArena,s2Step345EarlyControlSigmaArena,s2Step345EarlyControlOutputArena,s2Step345EarlyControlLog⟩

private def s2Step345CounterWork : List Wire := [907, 913, 914, 915]

private theorem s2Step345Counter_bounded : s2Step345CounterWork.toFinset⊆arenaWires := by norm_num [s2Step345CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step345HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step345CounterDuring : Arena := ⟨s2Step345HeadFvAfter.live∪s2Step345CounterWork.toFinset,Finset.union_subset s2Step345HeadFvAfter.bounded s2Step345Counter_bounded⟩

private def s2Step345EntryFFresh : List Wire := []

private def s2Step345EntryFvFresh : List Wire := []

private def s2Step345EntryGFresh : List Wire := [827, 839]

private def s2Step345EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step345EntryGvFresh : List Wire := [798, 877]

private def s2Step345ExitFExtra : List Wire := [611, 612, 894]

private def s2Step345ExitGExtra : List Wire := [839, 800]

private def s2Step345ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<611) ∨ (613≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step345ExitGvExtra : List Wire := [844]

private def s2Step345Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step345Add0Work : List Wire := [914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step345Add0_bounded : s2Step345Add0Work.toFinset⊆arenaWires := by
  have h : s2Step345Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step345Add0During : Arena := ⟨s2Step345Add0Arena.live∪s2Step345Add0Work.toFinset,Finset.union_subset s2Step345Add0Arena.bounded s2Step345Add0_bounded⟩

private def s2Step345Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<914)),Finset.filter_subset _ _⟩

private def s2Step345Add1Work : List Wire := [914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step345Add1_bounded : s2Step345Add1Work.toFinset⊆arenaWires := by
  have h : s2Step345Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step345Add1During : Arena := ⟨s2Step345Add1Arena.live∪s2Step345Add1Work.toFinset,Finset.union_subset s2Step345Add1Arena.bounded s2Step345Add1_bounded⟩

private def s2Step345F4FlagArena : Arena := ⟨s2Step345HeadFvAfter.live∪{907},Finset.union_subset s2Step345HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step345F4Plan : HmrHybridF4Plan := ⟨s2Step345F4FlagArena,[907],s2Step345Add0Arena,[913],s2Step345Add0During,s2Step345Add0Work,s2Step345Add1During,s2Step345Add1Work⟩

private def s2Step345HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 894],768⟩

private def s2Step345HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 789],770⟩

private def s2Step345HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827, 839, 800],769⟩

private def s2Step345HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 844],771⟩

private def s2Step345FrontHead : WindowBank := ⟨s2Step345HeadFOut,s2Step345HeadGOut,s2Step345HeadFvOut,s2Step345HeadGvOut⟩

private def s2Step345EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612],768⟩

private def s2Step345EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778],770⟩

private def s2Step345EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827, 839],769⟩

private def s2Step345EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877],771⟩

private def s2Step345FrontPair : WindowBank := ⟨s2Step345EntryFOut,s2Step345EntryGOut,s2Step345EntryFvOut,s2Step345EntryGvOut⟩

private def s2Step345FrontSigmaArena : Arena := ⟨s2Step345EntryGvAfter.live∪{901},Finset.union_subset s2Step345EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step345HeadFFresh : List Wire := [894]

private def s2Step345HeadFvFresh : List Wire := [789]

private def s2Step345HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step345HeadGFresh : List Wire := [800]

private def s2Step345HeadGvFresh : List Wire := [844]

private def s2Step345FrontPlan : HmrSourceFront := ⟨s2Step345EntryGvAfter,s2Step345FrontPair,(growRow 768 s2Step345EntryFFresh ++ (growRow 769 s2Step345EntryGFresh ++ (growRow 770 s2Step345EntryFvFresh ++ (growRow 771 s2Step345EntryGvFresh ++ [])))),s2Step345FrontSigmaArena,[901],s2Step345HeadGBefore,[903],
  s2Step345HeadFvAfter,s2Step345FrontHead,(growRow 769 s2Step345HeadGFresh ++ (growRow 768 s2Step345HeadFFresh ++ (growRow 771 s2Step345HeadGvFresh ++ (growRow 770 s2Step345HeadFvFresh ++ [])))),s2Step345F4Plan,s2Step345CounterDuring,s2Step345CounterWork,s2Step345ExitGvAfter,s2Step345FrontOut,(shrinkRow 769 s2Step345ExitGExtra ++ (shrinkRow 768 s2Step345ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step345ExitGvExtra ++ []))))⟩

private def s2Step345CompletePlan : HmrEarlyStepPlan := ⟨s2Step345FrontPlan,s2Step345EarlyControlArena,s2Step345EarlyControlPlan,s2Step345CompleteMoves⟩

private theorem s2Step345Complete_apart : List.Disjoint (s2Step345CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [901, 903, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  have nd : ((s2Step345CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[901, 903, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step345Complete_owned : (s2Step345CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step345EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step345EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private def s2Step345CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,612),(613,788),(789,800),(801,839),(840,844),(845,894),(895,907),(908,913)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step345CompleteRelocationMove0Borrowed : Arena := ⟨s2Step345ExitGvAfter.live∪{611},Finset.union_subset s2Step345ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step345CompleteRelocationMove1Borrowed : Arena := ⟨s2Step345CompleteRelocationMove0After.live∪{612},Finset.union_subset s2Step345CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step345CompleteRelocation_move0_owned : 788∈s2Step345ExitGvAfter.live := by norm_num [s2Step345ExitGvAfter,arenaWires]

private theorem s2Step345CompleteRelocation_move0_reserve : s2Step345ExitGvAfter.reserve {611}=some s2Step345CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step345ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step345CompleteRelocation_move0_retire : s2Step345CompleteRelocationMove0Borrowed.retireSet {788}=s2Step345CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step345CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step345CompleteRelocationMove0Borrowed,s2Step345ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step345CompleteRelocation_move1_owned : 845∈s2Step345CompleteRelocationMove0After.live := by norm_num [s2Step345CompleteRelocationMove0After,arenaWires]

private theorem s2Step345CompleteRelocation_move1_reserve : s2Step345CompleteRelocationMove0After.reserve {612}=some s2Step345CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step345CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step345CompleteRelocation_move1_retire : s2Step345CompleteRelocationMove1Borrowed.retireSet {845}=s2Step345EarlyControlArena := by
  unfold Arena.retireSet s2Step345EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step345CompleteRelocationMove1Borrowed,s2Step345CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step345CompleteRelocation_checked : s2Step345ExitGvAfter.checkRepack [(788,611),(845,612)]=some s2Step345EarlyControlArena := by
  have tail2 : s2Step345EarlyControlArena.checkRepack []=some s2Step345EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step345CompleteRelocationMove0After s2Step345CompleteRelocationMove1Borrowed s2Step345EarlyControlArena s2Step345EarlyControlArena 845 612 []
    s2Step345CompleteRelocation_move1_owned s2Step345CompleteRelocation_move1_reserve s2Step345CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step345ExitGvAfter s2Step345CompleteRelocationMove0Borrowed s2Step345CompleteRelocationMove0After s2Step345EarlyControlArena 788 611 [(845,612)]
    s2Step345CompleteRelocation_move0_owned s2Step345CompleteRelocation_move0_reserve s2Step345CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step345Complete_repack : s2Step345ExitGvAfter.checkRepack s2Step345CompleteMoves=some s2Step345EarlyControlArena := by
  simpa only [s2Step345CompleteMoves] using s2Step345CompleteRelocation_checked

private theorem s2Step345EarlyControl_branchOwned : ([903] : List Wire).toFinset⊆s2Step345EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step345EarlyControlSigmaArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345EarlyControl_branch : compileHmrBranchRetirement s2Step345EarlyControlSigmaArena 903=some s2Step345EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step345EarlyControl_branchOwned
  · ext q
    simp [s2Step345EarlyControlOutputArena,s2Step345EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step345EarlyControl_classEqualityBorrow : s2Step345EarlyControlPositiveArena.checkBorrow (([901, 800] : List Wire).length-1) s2Step345EarlyControlLog.classWork=some s2Step345EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step345EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step345EarlyControlPositiveArena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step345EarlyControlEqualityArena,s2Step345EarlyControlPositiveArena,s2Step345EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step345EarlyControl_classEqualityOwned : ([901, 800] : List Wire).toFinset⊆s2Step345EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step345EarlyControlPositiveArena (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345EarlyControl_classEquality : compileHmrEqualityLog s2Step345EarlyControlPositiveArena [901, 800] 0 s2Step345EarlyControlLog.classWork=some (s2Step345EarlyControlEqualityArena,s2Step345EarlyControlLog.classWork,s2Step345EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step345EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step345EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step345EarlyControl_classOwned : ([777, 839, 901] : List Wire).toFinset⊆s2Step345EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step345EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345EarlyControl_positiveBorrow : s2Step345EarlyControlZeroArena.checkBorrow (1) s2Step345EarlyControlLog.positiveWork=some s2Step345EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step345EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step345EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step345EarlyControlPositiveArena,s2Step345EarlyControlZeroArena,s2Step345EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step345EarlyControl_class : compileHmrSourceClassLog s2Step345EarlyControlZeroArena false 777 s2Step345EarlyControlZeroPlan.top 0 901 s2Step345EarlyControlLog.positiveWork s2Step345EarlyControlLog.classWork=some s2Step345EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step345EarlyControlClassPlan s2Step345EarlyControlZeroArena false 777 s2Step345EarlyControlZeroPlan.top 0 901
  constructor
  · decide +kernel
  · exact s2Step345EarlyControl_classOwned
  · exact s2Step345EarlyControl_positiveBorrow
  · exact s2Step345EarlyControl_classEquality

private theorem s2Step345EarlyControl_entryRecordOwned : ([903, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step345EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step345EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345EarlyControl_entrySigmaOwned : ([901, 254] : List Wire).toFinset⊆s2Step345EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step345EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345EarlyControl_fitBorrow : s2Step345EarlyControlFlagArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step345EarlyControlLog.recordFresh=some s2Step345EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step345EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step345EarlyControlFlagArena (fun q => (0≤q ∧ q<919)) rfl
      decide +kernel
    · ext q
      simp [s2Step345EarlyControlFittedArena,s2Step345EarlyControlFlagArena,s2Step345EarlyControlLog,arenaWires]

private theorem s2Step345EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step345EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step345EarlyControlFlagArena (fun q => (0≤q ∧ q<919)) rfl
  decide +kernel

private theorem s2Step345EarlyControl_fit : compileHmrRecordGrowLog s2Step345EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step345EarlyControlLog.recordFresh=some s2Step345EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step345EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step345EarlyControl_fitBorrow

private theorem s2Step345EarlyControl_flagsBorrow : s2Step345EarlyControlEqualityArena.checkBorrow (6) s2Step345EarlyControlLog.flagWork=some s2Step345EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step345EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step345EarlyControlEqualityArena (fun q => (0≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step345EarlyControlFlagArena,s2Step345EarlyControlEqualityArena,s2Step345EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step345EarlyControl_flagsOwned : ([907, 253, 252, 251] : List Wire).toFinset⊆s2Step345EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step345EarlyControlEqualityArena (fun q => (0≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345EarlyControl_flags : compileHmrFlagsLog s2Step345EarlyControlClassPlan.equalityArena s2Step345EarlyControlClassPlan.equality.top 253 252 251 s2Step345EarlyControlLog.flagWork=some s2Step345EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step345EarlyControl_flagsOwned⟩
  · exact s2Step345EarlyControl_flagsBorrow

private theorem s2Step345EarlyControl_historyBorrow : s2Step345EarlyControlArena.checkBorrow ((60-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).length)) s2Step345EarlyControlLog.recordFresh=some s2Step345EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step345EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step345EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step345EarlyControlHistoryArena,s2Step345EarlyControlArena,s2Step345EarlyControlLog,arenaWires]

private theorem s2Step345EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] : List Wire).toFinset⊆s2Step345EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step345EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345EarlyControl_history : compileHmrRecordGrowLog s2Step345EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step345EarlyControlLog.recordFresh=some s2Step345EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step345EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step345EarlyControl_historyBorrow

private theorem s2Step345EarlyControl_sigmaOwned : ([254, 901] : List Wire).toFinset⊆s2Step345EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step345EarlyControlHistoryArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345EarlyControl_sigmaReleaseOwned : ([901] : List Wire).toFinset⊆s2Step345EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step345EarlyControlHistoryArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345EarlyControl_sigmaRelease : s2Step345EarlyControlHistoryArena.release {901} (fun _ => false)=some s2Step345EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step345EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step345EarlyControlSigmaArena,s2Step345EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step345EarlyControl_sigma : compileHmrSigmaDropLog s2Step345EarlyControlHistoryArena false 0 0 254 901 []=some s2Step345EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step345EarlyControl_sigmaOwned⟩
  · exact s2Step345EarlyControl_sigmaRelease

private theorem s2Step345EarlyControl_zeroBorrow : s2Step345EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step345EarlyControlLog.zeroWork=some s2Step345EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step345EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step345EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
      decide +kernel
    · ext q
      simp [s2Step345EarlyControlZeroArena,s2Step345EarlyControlArena,s2Step345EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step345EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step345EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step345EarlyControlArena (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (846≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345EarlyControl_zero : compileHmrEqualityLog s2Step345EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step345EarlyControlLog.zeroWork=some (s2Step345EarlyControlZeroArena,s2Step345EarlyControlLog.zeroWork,s2Step345EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step345EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step345EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step345EarlyControl_logged : s2Step345EarlyControlPlan.Logged s2Step345EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 901 254 253 252 251 903 60 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step345EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step345EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step345EarlyControl_zero
  · exact s2Step345EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step345EarlyControl_flags
  · exact s2Step345EarlyControl_fit
  · exact s2Step345EarlyControl_history
  · exact s2Step345EarlyControl_sigma
  · exact s2Step345EarlyControl_branch

private theorem s2Step345EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step345EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 901 254 253 252 251 903 60 s2Step345EarlyControlLog=some s2Step345EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step345EarlyControlPlan s2Step345EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 901 254 253 252 251 903 60 s2Step345EarlyControl_logged

private def s2Step345EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step345EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612],768⟩

private def s2Step345EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778],770⟩

private def s2Step345EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98],769⟩

private def s2Step345EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784],771⟩

private def s2Step345FrontBank : WindowBank := ⟨s2Step345EntryFRow,s2Step345EntryGRow,s2Step345EntryFvRow,s2Step345EntryGvRow⟩

private def s2Step345Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 894, 768]

private def s2Step345Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827, 839, 800, 769]

private def s2Step345Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 789, 770]

private def s2Step345Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 844, 771]

private theorem s2Step345Counter_apart : Disjoint s2Step345HeadFvAfter.live s2Step345CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step345HeadFvAfter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345Counter_borrowed : s2Step345HeadFvAfter.checkBorrow 4 s2Step345CounterWork=some s2Step345CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step345HeadFvAfter s2Step345CounterDuring s2Step345CounterWork.toFinset s2Step345Counter_bounded s2Step345Counter_apart rfl

private theorem s2Step345Counter_owned : (901::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step345HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step345HeadFvAfter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345Counter_checked : compileHmrCounterStepLog s2Step345HeadFvAfter true 901 [772, 773, 774, 775, 776, 777] s2Step345CounterWork=some s2Step345CounterDuring := by
  have owned : ∀q∈901::[772, 773, 774, 775, 776, 777],q∈s2Step345HeadFvAfter.live := fun q hq => s2Step345Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step345Counter_borrowed

private def s2Step345EntryFAfter : Arena := s2Step345EntryFBefore

private theorem s2Step345EntryBank_incomingDistinct : ([s2Step345EntryFRow,s2Step345EntryGRow,s2Step345EntryFvRow,s2Step345EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step345EntryF_Incoming : rowsOwned s2Step345EntryFBefore [s2Step345EntryFRow,s2Step345EntryGRow,s2Step345EntryFvRow,s2Step345EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step345EntryFRow,s2Step345EntryGRow,s2Step345EntryFvRow,s2Step345EntryGvRow] 0 s2Step345EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step345EntryFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step345EntryBank_outgoingOwned : rowsOwned s2Step345EntryGvAfter [s2Step345EntryFOut,s2Step345EntryGOut,s2Step345EntryFvOut,s2Step345EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step345EntryGvAfter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step345EntryF_Outgoing : rowsOwned s2Step345EntryGvAfter [s2Step345EntryFOut,s2Step345EntryGOut,s2Step345EntryFvOut,s2Step345EntryGvOut] :=
  hmrRows_owned_drop s2Step345EntryGvAfter [s2Step345EntryFOut,s2Step345EntryGOut,s2Step345EntryFvOut,s2Step345EntryGvOut] 0 s2Step345EntryBank_outgoingOwned

private theorem s2Step345EntryF_distinct : (s2Step345EntryFRow.sign::s2Step345EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step345EntryF_owned : (s2Step345EntryFRow.sign::s2Step345EntryFRow.payload).toFinset⊆s2Step345EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step345EntryFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345EntryF_reserved : s2Step345EntryFBefore.reserve s2Step345EntryFFresh.toFinset=some s2Step345EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step345EntryFFresh,arenaWires]
  · norm_num [s2Step345EntryFBefore,s2Step345EntryFFresh,arenaWires]
  · simp only [s2Step345EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step345EntryF_checked : planRowResizeLog s2Step345EntryFBefore s2Step345EntryFRow 101 s2Step345EntryFFresh=
    some (s2Step345EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612],768⟩,growRow 768 s2Step345EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step345EntryFBefore s2Step345EntryFAfter s2Step345EntryFRow 101 s2Step345EntryFFresh
    s2Step345EntryF_distinct s2Step345EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step345EntryF_reserved
  have rowEq : WindowRow.mk (s2Step345EntryFRow.payload++s2Step345EntryFFresh) s2Step345EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step345EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step345EntryFvAfter : Arena := s2Step345EntryGAfter

private def s2Step345EntryFvBefore : Arena := s2Step345EntryGAfter

private theorem s2Step345EntryFv_Incoming : rowsOwned s2Step345EntryFvBefore [s2Step345EntryFvRow,s2Step345EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step345EntryFRow,s2Step345EntryGRow,s2Step345EntryFvRow,s2Step345EntryGvRow] 2 s2Step345EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step345EntryFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step345EntryFv_Outgoing : rowsOwned s2Step345EntryGvAfter [s2Step345EntryFvOut,s2Step345EntryGvOut] :=
  hmrRows_owned_drop s2Step345EntryGvAfter [s2Step345EntryFOut,s2Step345EntryGOut,s2Step345EntryFvOut,s2Step345EntryGvOut] 2 s2Step345EntryBank_outgoingOwned

private theorem s2Step345EntryFv_distinct : (s2Step345EntryFvRow.sign::s2Step345EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step345EntryFv_owned : (s2Step345EntryFvRow.sign::s2Step345EntryFvRow.payload).toFinset⊆s2Step345EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step345EntryFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345EntryFv_reserved : s2Step345EntryFvBefore.reserve s2Step345EntryFvFresh.toFinset=some s2Step345EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step345EntryFvFresh,arenaWires]
  · norm_num [s2Step345EntryFvBefore,s2Step345EntryGAfter,s2Step345EntryFvFresh,arenaWires]
  · simp only [s2Step345EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step345EntryFv_checked : planRowResizeLog s2Step345EntryFvBefore s2Step345EntryFvRow 189 s2Step345EntryFvFresh=
    some (s2Step345EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778],770⟩,growRow 770 s2Step345EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step345EntryFvBefore s2Step345EntryFvAfter s2Step345EntryFvRow 189 s2Step345EntryFvFresh
    s2Step345EntryFv_distinct s2Step345EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step345EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step345EntryFvRow.payload++s2Step345EntryFvFresh) s2Step345EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step345EntryGBefore : Arena := s2Step345EntryFBefore

private theorem s2Step345EntryG_Incoming : rowsOwned s2Step345EntryGBefore [s2Step345EntryGRow,s2Step345EntryFvRow,s2Step345EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step345EntryFRow,s2Step345EntryGRow,s2Step345EntryFvRow,s2Step345EntryGvRow] 1 s2Step345EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step345EntryGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step345EntryG_Outgoing : rowsOwned s2Step345EntryGvAfter [s2Step345EntryGOut,s2Step345EntryFvOut,s2Step345EntryGvOut] :=
  hmrRows_owned_drop s2Step345EntryGvAfter [s2Step345EntryFOut,s2Step345EntryGOut,s2Step345EntryFvOut,s2Step345EntryGvOut] 1 s2Step345EntryBank_outgoingOwned

private theorem s2Step345EntryG_distinct : (s2Step345EntryGRow.sign::s2Step345EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step345EntryG_owned : (s2Step345EntryGRow.sign::s2Step345EntryGRow.payload).toFinset⊆s2Step345EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step345EntryGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345EntryG_reserved : s2Step345EntryGBefore.reserve s2Step345EntryGFresh.toFinset=some s2Step345EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step345EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step345EntryGBefore,s2Step345EntryFBefore,s2Step345EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step345EntryGAfter,s2Step345EntryGBefore,s2Step345EntryFBefore,s2Step345EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step345EntryG_checked : planRowResizeLog s2Step345EntryGBefore s2Step345EntryGRow 101 s2Step345EntryGFresh=
    some (s2Step345EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827, 839],769⟩,growRow 769 s2Step345EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step345EntryGBefore s2Step345EntryGAfter s2Step345EntryGRow 101 s2Step345EntryGFresh
    s2Step345EntryG_distinct s2Step345EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step345EntryG_reserved
  have rowEq : WindowRow.mk (s2Step345EntryGRow.payload++s2Step345EntryGFresh) s2Step345EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827, 839],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step345EntryGvBefore : Arena := s2Step345EntryGAfter

private theorem s2Step345EntryGv_Incoming : rowsOwned s2Step345EntryGvBefore [s2Step345EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step345EntryFRow,s2Step345EntryGRow,s2Step345EntryFvRow,s2Step345EntryGvRow] 3 s2Step345EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step345EntryGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step345EntryGv_Outgoing : rowsOwned s2Step345EntryGvAfter [s2Step345EntryGvOut] :=
  hmrRows_owned_drop s2Step345EntryGvAfter [s2Step345EntryFOut,s2Step345EntryGOut,s2Step345EntryFvOut,s2Step345EntryGvOut] 3 s2Step345EntryBank_outgoingOwned

private theorem s2Step345EntryGv_distinct : (s2Step345EntryGvRow.sign::s2Step345EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step345EntryGv_owned : (s2Step345EntryGvRow.sign::s2Step345EntryGvRow.payload).toFinset⊆s2Step345EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step345EntryGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345EntryGv_reserved : s2Step345EntryGvBefore.reserve s2Step345EntryGvFresh.toFinset=some s2Step345EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step345EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step345EntryGvBefore,s2Step345EntryGAfter,s2Step345EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step345EntryGvAfter,s2Step345EntryGvBefore,s2Step345EntryGAfter,s2Step345EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step345EntryGv_checked : planRowResizeLog s2Step345EntryGvBefore s2Step345EntryGvRow 189 s2Step345EntryGvFresh=
    some (s2Step345EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877],771⟩,growRow 771 s2Step345EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step345EntryGvBefore s2Step345EntryGvAfter s2Step345EntryGvRow 189 s2Step345EntryGvFresh
    s2Step345EntryGv_distinct s2Step345EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step345EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step345EntryGvRow.payload++s2Step345EntryGvFresh) s2Step345EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step345EntryBank_rows : planWindowRowsLog s2Step345EntryFBefore [(s2Step345EntryFRow,101),(s2Step345EntryGRow,101),(s2Step345EntryFvRow,189),(s2Step345EntryGvRow,189)] [s2Step345EntryFFresh,s2Step345EntryGFresh,s2Step345EntryFvFresh,s2Step345EntryGvFresh]=
    some (s2Step345EntryGvAfter,[s2Step345EntryFOut,s2Step345EntryGOut,s2Step345EntryFvOut,s2Step345EntryGvOut],(growRow 768 s2Step345EntryFFresh ++ (growRow 769 s2Step345EntryGFresh ++ (growRow 770 s2Step345EntryFvFresh ++ (growRow 771 s2Step345EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step345EntryGvAfter [] []=some (s2Step345EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step345EntryGvBefore s2Step345EntryGvAfter s2Step345EntryGvAfter
    s2Step345EntryGvRow s2Step345EntryGvOut 189 s2Step345EntryGvFresh [] [] []
    (growRow 771 s2Step345EntryGvFresh) ([]) s2Step345EntryGv_Incoming s2Step345EntryGv_checked h4 s2Step345EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step345EntryFvBefore s2Step345EntryFvAfter s2Step345EntryGvAfter
    s2Step345EntryFvRow s2Step345EntryFvOut 189 s2Step345EntryFvFresh [(s2Step345EntryGvRow,189)] [s2Step345EntryGvFresh] [s2Step345EntryGvOut]
    (growRow 770 s2Step345EntryFvFresh) ((growRow 771 s2Step345EntryGvFresh ++ [])) s2Step345EntryFv_Incoming s2Step345EntryFv_checked h3 s2Step345EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step345EntryGBefore s2Step345EntryGAfter s2Step345EntryGvAfter
    s2Step345EntryGRow s2Step345EntryGOut 101 s2Step345EntryGFresh [(s2Step345EntryFvRow,189),(s2Step345EntryGvRow,189)] [s2Step345EntryFvFresh,s2Step345EntryGvFresh] [s2Step345EntryFvOut,s2Step345EntryGvOut]
    (growRow 769 s2Step345EntryGFresh) ((growRow 770 s2Step345EntryFvFresh ++ (growRow 771 s2Step345EntryGvFresh ++ []))) s2Step345EntryG_Incoming s2Step345EntryG_checked h2 s2Step345EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step345EntryFBefore s2Step345EntryFAfter s2Step345EntryGvAfter
    s2Step345EntryFRow s2Step345EntryFOut 101 s2Step345EntryFFresh [(s2Step345EntryGRow,101),(s2Step345EntryFvRow,189),(s2Step345EntryGvRow,189)] [s2Step345EntryGFresh,s2Step345EntryFvFresh,s2Step345EntryGvFresh] [s2Step345EntryGOut,s2Step345EntryFvOut,s2Step345EntryGvOut]
    (growRow 768 s2Step345EntryFFresh) ((growRow 769 s2Step345EntryGFresh ++ (growRow 770 s2Step345EntryFvFresh ++ (growRow 771 s2Step345EntryGvFresh ++ [])))) s2Step345EntryF_Incoming s2Step345EntryF_checked h1 s2Step345EntryF_Outgoing
  exact h0

private theorem s2Step345EntryBank_checked : compileHmrBankResizeLog .entry s2Step345EntryFBefore ⟨s2Step345EntryFRow,s2Step345EntryGRow,s2Step345EntryFvRow,s2Step345EntryGvRow⟩ ⟨101,101,189,189⟩ [s2Step345EntryFFresh,s2Step345EntryGFresh,s2Step345EntryFvFresh,s2Step345EntryGvFresh]=
    some (s2Step345EntryGvAfter,⟨s2Step345EntryFOut,s2Step345EntryGOut,s2Step345EntryFvOut,s2Step345EntryGvOut⟩,(growRow 768 s2Step345EntryFFresh ++ (growRow 769 s2Step345EntryGFresh ++ (growRow 770 s2Step345EntryFvFresh ++ (growRow 771 s2Step345EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step345EntryBank_rows]
  rfl

private def s2Step345ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<611) ∨ (613≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step345ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step345ExitFBefore : Arena := s2Step345ExitGAfter

private def s2Step345ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 894],768⟩

private def s2Step345ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 789],770⟩

private def s2Step345ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827, 839, 800],769⟩

private def s2Step345ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 844],771⟩

private theorem s2Step345ExitBank_incomingDistinct : ([s2Step345ExitGRow,s2Step345ExitFRow,s2Step345ExitFvRow,s2Step345ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step345ExitF_Incoming : rowsOwned s2Step345ExitFBefore [s2Step345ExitFRow,s2Step345ExitFvRow,s2Step345ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step345ExitGRow,s2Step345ExitFRow,s2Step345ExitFvRow,s2Step345ExitGvRow] 1 s2Step345ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step345ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step345ExitBank_outgoingOwned : rowsOwned s2Step345ExitGvAfter [s2Step345ExitGOut,s2Step345ExitFOut,s2Step345ExitFvOut,s2Step345ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step345ExitGvAfter (fun q => (0≤q ∧ q<611) ∨ (613≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step345ExitF_Outgoing : rowsOwned s2Step345ExitGvAfter [s2Step345ExitFOut,s2Step345ExitFvOut,s2Step345ExitGvOut] :=
  hmrRows_owned_drop s2Step345ExitGvAfter [s2Step345ExitGOut,s2Step345ExitFOut,s2Step345ExitFvOut,s2Step345ExitGvOut] 1 s2Step345ExitBank_outgoingOwned

private theorem s2Step345ExitF_distinct : (s2Step345ExitFRow.sign::s2Step345ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step345ExitF_owned : (s2Step345ExitFRow.sign::s2Step345ExitFRow.payload).toFinset⊆s2Step345ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step345ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345ExitF_retired : s2Step345ExitFBefore.retireSet s2Step345ExitFExtra.toFinset=s2Step345ExitFAfter := by
  unfold Arena.retireSet s2Step345ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step345ExitFBefore,s2Step345ExitGAfter,s2Step345ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step345ExitF_checked : planRowResizeLog s2Step345ExitFBefore s2Step345ExitFRow 99 []=
    some (s2Step345ExitFAfter,s2Step345ExitFOut,shrinkRow 768 s2Step345ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step345ExitFBefore s2Step345ExitFRow 99 s2Step345ExitF_distinct s2Step345ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step345ExitFRow.payload.take 99) s2Step345ExitFRow.sign=s2Step345ExitFOut := by decide +kernel
  have hi : s2Step345ExitFRow.payload.drop 99=s2Step345ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step345ExitF_retired] at result
  exact result

private def s2Step345ExitFvAfter : Arena := s2Step345ExitFAfter

private def s2Step345ExitFvBefore : Arena := s2Step345ExitFAfter

private theorem s2Step345ExitFv_Incoming : rowsOwned s2Step345ExitFvBefore [s2Step345ExitFvRow,s2Step345ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step345ExitGRow,s2Step345ExitFRow,s2Step345ExitFvRow,s2Step345ExitGvRow] 2 s2Step345ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step345ExitFvBefore (fun q => (0≤q ∧ q<611) ∨ (613≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step345ExitFv_Outgoing : rowsOwned s2Step345ExitGvAfter [s2Step345ExitFvOut,s2Step345ExitGvOut] :=
  hmrRows_owned_drop s2Step345ExitGvAfter [s2Step345ExitGOut,s2Step345ExitFOut,s2Step345ExitFvOut,s2Step345ExitGvOut] 2 s2Step345ExitBank_outgoingOwned

private theorem s2Step345ExitFv_distinct : (s2Step345ExitFvRow.sign::s2Step345ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step345ExitFv_owned : (s2Step345ExitFvRow.sign::s2Step345ExitFvRow.payload).toFinset⊆s2Step345ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step345ExitFvBefore (fun q => (0≤q ∧ q<611) ∨ (613≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345ExitFv_reserved : s2Step345ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step345ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step345ExitFv_checked : planRowResizeLog s2Step345ExitFvBefore s2Step345ExitFvRow 190 []=
    some (s2Step345ExitFvAfter,s2Step345ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step345ExitFvBefore s2Step345ExitFvAfter s2Step345ExitFvRow 190 []
    s2Step345ExitFv_distinct s2Step345ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step345ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step345ExitFvRow.payload++[]) s2Step345ExitFvRow.sign=s2Step345ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step345ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private theorem s2Step345ExitG_Incoming : rowsOwned s2Step345ExitGBefore [s2Step345ExitGRow,s2Step345ExitFRow,s2Step345ExitFvRow,s2Step345ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step345ExitGRow,s2Step345ExitFRow,s2Step345ExitFvRow,s2Step345ExitGvRow] 0 s2Step345ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step345ExitGBefore (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step345ExitG_Outgoing : rowsOwned s2Step345ExitGvAfter [s2Step345ExitGOut,s2Step345ExitFOut,s2Step345ExitFvOut,s2Step345ExitGvOut] :=
  hmrRows_owned_drop s2Step345ExitGvAfter [s2Step345ExitGOut,s2Step345ExitFOut,s2Step345ExitFvOut,s2Step345ExitGvOut] 0 s2Step345ExitBank_outgoingOwned

private theorem s2Step345ExitG_distinct : (s2Step345ExitGRow.sign::s2Step345ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step345ExitG_owned : (s2Step345ExitGRow.sign::s2Step345ExitGRow.payload).toFinset⊆s2Step345ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step345ExitGBefore (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345ExitG_retired : s2Step345ExitGBefore.retireSet s2Step345ExitGExtra.toFinset=s2Step345ExitGAfter := by
  unfold Arena.retireSet s2Step345ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step345ExitGBefore,s2Step345ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step345ExitG_checked : planRowResizeLog s2Step345ExitGBefore s2Step345ExitGRow 100 []=
    some (s2Step345ExitGAfter,s2Step345ExitGOut,shrinkRow 769 s2Step345ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step345ExitGBefore s2Step345ExitGRow 100 s2Step345ExitG_distinct s2Step345ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step345ExitGRow.payload.take 100) s2Step345ExitGRow.sign=s2Step345ExitGOut := by decide +kernel
  have hi : s2Step345ExitGRow.payload.drop 100=s2Step345ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step345ExitG_retired] at result
  exact result

private def s2Step345ExitGvBefore : Arena := s2Step345ExitFAfter

private theorem s2Step345ExitGv_Incoming : rowsOwned s2Step345ExitGvBefore [s2Step345ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step345ExitGRow,s2Step345ExitFRow,s2Step345ExitFvRow,s2Step345ExitGvRow] 3 s2Step345ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step345ExitGvBefore (fun q => (0≤q ∧ q<611) ∨ (613≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step345ExitGv_Outgoing : rowsOwned s2Step345ExitGvAfter [s2Step345ExitGvOut] :=
  hmrRows_owned_drop s2Step345ExitGvAfter [s2Step345ExitGOut,s2Step345ExitFOut,s2Step345ExitFvOut,s2Step345ExitGvOut] 3 s2Step345ExitBank_outgoingOwned

private theorem s2Step345ExitGv_distinct : (s2Step345ExitGvRow.sign::s2Step345ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step345ExitGv_owned : (s2Step345ExitGvRow.sign::s2Step345ExitGvRow.payload).toFinset⊆s2Step345ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step345ExitGvBefore (fun q => (0≤q ∧ q<611) ∨ (613≤q ∧ q<800) ∨ (801≤q ∧ q<839) ∨ (840≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345ExitGv_retired : s2Step345ExitGvBefore.retireSet s2Step345ExitGvExtra.toFinset=s2Step345ExitGvAfter := by
  unfold Arena.retireSet s2Step345ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step345ExitGvBefore,s2Step345ExitFAfter,s2Step345ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step345ExitGv_checked : planRowResizeLog s2Step345ExitGvBefore s2Step345ExitGvRow 189 []=
    some (s2Step345ExitGvAfter,s2Step345ExitGvOut,shrinkRow 771 s2Step345ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step345ExitGvBefore s2Step345ExitGvRow 189 s2Step345ExitGv_distinct s2Step345ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step345ExitGvRow.payload.take 189) s2Step345ExitGvRow.sign=s2Step345ExitGvOut := by decide +kernel
  have hi : s2Step345ExitGvRow.payload.drop 189=s2Step345ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step345ExitGv_retired] at result
  exact result

private theorem s2Step345ExitBank_rows : planWindowRowsLog s2Step345ExitGBefore [(s2Step345ExitGRow,100),(s2Step345ExitFRow,99),(s2Step345ExitFvRow,190),(s2Step345ExitGvRow,189)] [[],[],[],[]]=
    some (s2Step345ExitGvAfter,[s2Step345ExitGOut,s2Step345ExitFOut,s2Step345ExitFvOut,s2Step345ExitGvOut],(shrinkRow 769 s2Step345ExitGExtra ++ (shrinkRow 768 s2Step345ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step345ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step345ExitGvAfter [] []=some (s2Step345ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step345ExitGvBefore s2Step345ExitGvAfter s2Step345ExitGvAfter
    s2Step345ExitGvRow s2Step345ExitGvOut 189 [] [] [] []
    (shrinkRow 771 s2Step345ExitGvExtra) ([]) s2Step345ExitGv_Incoming s2Step345ExitGv_checked h4 s2Step345ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step345ExitFvBefore s2Step345ExitFvAfter s2Step345ExitGvAfter
    s2Step345ExitFvRow s2Step345ExitFvOut 190 [] [(s2Step345ExitGvRow,189)] [[]] [s2Step345ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step345ExitGvExtra ++ [])) s2Step345ExitFv_Incoming s2Step345ExitFv_checked h3 s2Step345ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step345ExitFBefore s2Step345ExitFAfter s2Step345ExitGvAfter
    s2Step345ExitFRow s2Step345ExitFOut 99 [] [(s2Step345ExitFvRow,190),(s2Step345ExitGvRow,189)] [[],[]] [s2Step345ExitFvOut,s2Step345ExitGvOut]
    (shrinkRow 768 s2Step345ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step345ExitGvExtra ++ []))) s2Step345ExitF_Incoming s2Step345ExitF_checked h2 s2Step345ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step345ExitGBefore s2Step345ExitGAfter s2Step345ExitGvAfter
    s2Step345ExitGRow s2Step345ExitGOut 100 [] [(s2Step345ExitFRow,99),(s2Step345ExitFvRow,190),(s2Step345ExitGvRow,189)] [[],[],[]] [s2Step345ExitFOut,s2Step345ExitFvOut,s2Step345ExitGvOut]
    (shrinkRow 769 s2Step345ExitGExtra) ((shrinkRow 768 s2Step345ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step345ExitGvExtra ++ [])))) s2Step345ExitG_Incoming s2Step345ExitG_checked h1 s2Step345ExitG_Outgoing
  exact h0

private theorem s2Step345ExitBank_checked : compileHmrBankResizeLog .exit s2Step345ExitGBefore ⟨s2Step345ExitFRow,s2Step345ExitGRow,s2Step345ExitFvRow,s2Step345ExitGvRow⟩ ⟨99,100,190,189⟩ [[],[],[],[]]=
    some (s2Step345ExitGvAfter,⟨s2Step345ExitFOut,s2Step345ExitGOut,s2Step345ExitFvOut,s2Step345ExitGvOut⟩,(shrinkRow 769 s2Step345ExitGExtra ++ (shrinkRow 768 s2Step345ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step345ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step345ExitBank_rows]
  rfl

private theorem s2Step345Add0_apart : Disjoint s2Step345Add0Arena.live s2Step345Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step345Add0Arena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step345Add0_card : s2Step345Add0Arena.live.card=914 := by
  decide +kernel

private theorem s2Step345Add0_borrowed : s2Step345Add0Arena.checkBorrow (hmrHybridCount s2Step345Add0Arena s2Step345Add0B.length) s2Step345Add0Work=some s2Step345Add0During := by
  have len : s2Step345Add0Work.length=hmrHybridCount s2Step345Add0Arena s2Step345Add0B.length := by
    rw [hmrHybridCount,s2Step345Add0_card]
    decide +kernel
  have nd : s2Step345Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step345Add0Arena s2Step345Add0During s2Step345Add0Work.toFinset s2Step345Add0_bounded s2Step345Add0_apart rfl

private theorem s2Step345Add0_distinct : (907::903::913::(s2Step345Add0A++s2Step345Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step345Add0_owned : (907::903::913::(s2Step345Add0A++s2Step345Add0B)).toFinset⊆s2Step345Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step345Add0Arena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step345Add0_checked : compileHmrHybridCinLog s2Step345Add0Arena 903 907 913 s2Step345Add0A s2Step345Add0B s2Step345Add0Work=some s2Step345Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step345Add0Arena s2Step345Add0During 903 907 913 s2Step345Add0A s2Step345Add0B s2Step345Add0Work
    (by decide +kernel) (by decide +kernel) s2Step345Add0_distinct
    (fun q hq => s2Step345Add0_owned (List.mem_toFinset.mpr hq)) s2Step345Add0_borrowed

private theorem s2Step345Add1_apart : Disjoint s2Step345Add1Arena.live s2Step345Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step345Add1Arena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step345Add1_card : s2Step345Add1Arena.live.card=914 := by
  decide +kernel

private theorem s2Step345Add1_borrowed : s2Step345Add1Arena.checkBorrow (hmrHybridCount s2Step345Add1Arena s2Step345Add1B.length) s2Step345Add1Work=some s2Step345Add1During := by
  have len : s2Step345Add1Work.length=hmrHybridCount s2Step345Add1Arena s2Step345Add1B.length := by
    rw [hmrHybridCount,s2Step345Add1_card]
    decide +kernel
  have nd : s2Step345Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step345Add1Arena s2Step345Add1During s2Step345Add1Work.toFinset s2Step345Add1_bounded s2Step345Add1_apart rfl

private theorem s2Step345Add1_distinct : (907::903::913::(s2Step345Add1A++s2Step345Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step345Add1_owned : (907::903::913::(s2Step345Add1A++s2Step345Add1B)).toFinset⊆s2Step345Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step345Add1Arena (fun q => (0≤q ∧ q<914)) rfl
  decide +kernel

private theorem s2Step345Add1_checked : compileHmrHybridCinLog s2Step345Add1Arena 903 907 913 s2Step345Add1A s2Step345Add1B s2Step345Add1Work=some s2Step345Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step345Add1Arena s2Step345Add1During 903 907 913 s2Step345Add1A s2Step345Add1B s2Step345Add1Work
    (by decide +kernel) (by decide +kernel) s2Step345Add1_distinct
    (fun q hq => s2Step345Add1_owned (List.mem_toFinset.mpr hq)) s2Step345Add1_borrowed

private theorem s2Step345F4_apart : Disjoint (s2Step345Add0A++s2Step345Add0B).toFinset (s2Step345Add1A++s2Step345Add1B).toFinset := by
  have nd : ((s2Step345Add0A++s2Step345Add0B)++(s2Step345Add1A++s2Step345Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step345F4_carry : s2Step345F4FlagArena.checkBorrow 1 [913]=some s2Step345Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step345F4FlagArena,s2Step345HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step345F4FlagArena,s2Step345HeadFvAfter,s2Step345Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step345F4_distinct : (901::903::907::913::((s2Step345Add0A++s2Step345Add1A)++(s2Step345Add0B++s2Step345Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step345F4_flag : s2Step345HeadFvAfter.checkBorrow 1 [907]=some s2Step345F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step345HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step345F4_owned : (901::903::((s2Step345Add0A++s2Step345Add1A)++(s2Step345Add0B++s2Step345Add1B))).toFinset⊆s2Step345HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step345HeadFvAfter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345F4_checked : compileHmrHybridF4Log s2Step345HeadFvAfter 901 903 s2Step345Add0A s2Step345Add0B s2Step345Add1A s2Step345Add1B [907] [913] s2Step345Add0Work s2Step345Add1Work=some s2Step345F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step345HeadFvAfter s2Step345F4FlagArena s2Step345Add0Arena s2Step345Add0During s2Step345Add1During 901 903
    s2Step345Add0A s2Step345Add0B s2Step345Add1A s2Step345Add1B [907] [913] s2Step345Add0Work s2Step345Add1Work
    (fun q hq => s2Step345F4_owned (List.mem_toFinset.mpr hq)) s2Step345F4_flag s2Step345F4_carry
    s2Step345F4_distinct s2Step345F4_apart s2Step345Add0_checked s2Step345Add1_checked

private theorem s2Step345Front_branch : s2Step345FrontSigmaArena.checkBorrow 1 [903]=some s2Step345HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step345FrontSigmaArena,s2Step345EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step345FrontSigmaArena,s2Step345EntryGvAfter,s2Step345HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step345Front_entry : HmrFrontEntryValid s2Step345EntryFBefore s2Step345FrontBank 101 189 ⟨99,100,190,189⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step345FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step345EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step345EntryFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step345FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step345Front_sigma : s2Step345EntryGvAfter.checkBorrow 1 [901]=some s2Step345FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step345EntryGvAfter,arenaWires]
  · rfl

private def s2Step345HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step345HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step345HeadFBefore : Arena := s2Step345HeadGAfter

private def s2Step345HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612],768⟩

private def s2Step345HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778],770⟩

private def s2Step345HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827, 839],769⟩

private def s2Step345HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877],771⟩

private theorem s2Step345HeadBank_incomingDistinct : ([s2Step345HeadGRow,s2Step345HeadFRow,s2Step345HeadGvRow,s2Step345HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step345HeadF_Incoming : rowsOwned s2Step345HeadFBefore [s2Step345HeadFRow,s2Step345HeadGvRow,s2Step345HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step345HeadGRow,s2Step345HeadFRow,s2Step345HeadGvRow,s2Step345HeadFvRow] 1 s2Step345HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step345HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step345HeadBank_outgoingOwned : rowsOwned s2Step345HeadFvAfter [s2Step345HeadGOut,s2Step345HeadFOut,s2Step345HeadGvOut,s2Step345HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step345HeadFvAfter (fun q => (0≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step345HeadF_Outgoing : rowsOwned s2Step345HeadFvAfter [s2Step345HeadFOut,s2Step345HeadGvOut,s2Step345HeadFvOut] :=
  hmrRows_owned_drop s2Step345HeadFvAfter [s2Step345HeadGOut,s2Step345HeadFOut,s2Step345HeadGvOut,s2Step345HeadFvOut] 1 s2Step345HeadBank_outgoingOwned

private theorem s2Step345HeadF_distinct : (s2Step345HeadFRow.sign::s2Step345HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step345HeadF_owned : (s2Step345HeadFRow.sign::s2Step345HeadFRow.payload).toFinset⊆s2Step345HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step345HeadFBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345HeadF_reserved : s2Step345HeadFBefore.reserve s2Step345HeadFFresh.toFinset=some s2Step345HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step345HeadFFresh,arenaWires]
  · norm_num [s2Step345HeadFBefore,s2Step345HeadGAfter,s2Step345HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step345HeadFAfter,s2Step345HeadFBefore,s2Step345HeadGAfter,s2Step345HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step345HeadF_checked : planRowResizeLog s2Step345HeadFBefore s2Step345HeadFRow 102 s2Step345HeadFFresh=
    some (s2Step345HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 894],768⟩,growRow 768 s2Step345HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step345HeadFBefore s2Step345HeadFAfter s2Step345HeadFRow 102 s2Step345HeadFFresh
    s2Step345HeadF_distinct s2Step345HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step345HeadF_reserved
  have rowEq : WindowRow.mk (s2Step345HeadFRow.payload++s2Step345HeadFFresh) s2Step345HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 894],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step345HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<907) ∨ (908≤q ∧ q<913)),Finset.filter_subset _ _⟩

private def s2Step345HeadFvBefore : Arena := s2Step345HeadGvAfter

private theorem s2Step345HeadFv_Incoming : rowsOwned s2Step345HeadFvBefore [s2Step345HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step345HeadGRow,s2Step345HeadFRow,s2Step345HeadGvRow,s2Step345HeadFvRow] 3 s2Step345HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step345HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step345HeadFv_Outgoing : rowsOwned s2Step345HeadFvAfter [s2Step345HeadFvOut] :=
  hmrRows_owned_drop s2Step345HeadFvAfter [s2Step345HeadGOut,s2Step345HeadFOut,s2Step345HeadGvOut,s2Step345HeadFvOut] 3 s2Step345HeadBank_outgoingOwned

private theorem s2Step345HeadFv_distinct : (s2Step345HeadFvRow.sign::s2Step345HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step345HeadFv_owned : (s2Step345HeadFvRow.sign::s2Step345HeadFvRow.payload).toFinset⊆s2Step345HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step345HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345HeadFv_reserved : s2Step345HeadFvBefore.reserve s2Step345HeadFvFresh.toFinset=some s2Step345HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step345HeadFvFresh,arenaWires]
  · norm_num [s2Step345HeadFvBefore,s2Step345HeadGvAfter,s2Step345HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step345HeadFvAfter,s2Step345HeadFvBefore,s2Step345HeadGvAfter,s2Step345HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step345HeadFv_checked : planRowResizeLog s2Step345HeadFvBefore s2Step345HeadFvRow 190 s2Step345HeadFvFresh=
    some (s2Step345HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 789],770⟩,growRow 770 s2Step345HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step345HeadFvBefore s2Step345HeadFvAfter s2Step345HeadFvRow 190 s2Step345HeadFvFresh
    s2Step345HeadFv_distinct s2Step345HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step345HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step345HeadFvRow.payload++s2Step345HeadFvFresh) s2Step345HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 814, 879, 867, 807, 782, 836, 829, 779, 822, 851, 806, 896, 778, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step345HeadG_Incoming : rowsOwned s2Step345HeadGBefore [s2Step345HeadGRow,s2Step345HeadFRow,s2Step345HeadGvRow,s2Step345HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step345HeadGRow,s2Step345HeadFRow,s2Step345HeadGvRow,s2Step345HeadFvRow] 0 s2Step345HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step345HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step345HeadG_Outgoing : rowsOwned s2Step345HeadFvAfter [s2Step345HeadGOut,s2Step345HeadFOut,s2Step345HeadGvOut,s2Step345HeadFvOut] :=
  hmrRows_owned_drop s2Step345HeadFvAfter [s2Step345HeadGOut,s2Step345HeadFOut,s2Step345HeadGvOut,s2Step345HeadFvOut] 0 s2Step345HeadBank_outgoingOwned

private theorem s2Step345HeadG_distinct : (s2Step345HeadGRow.sign::s2Step345HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step345HeadG_owned : (s2Step345HeadGRow.sign::s2Step345HeadGRow.payload).toFinset⊆s2Step345HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step345HeadGBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (845≤q ∧ q<894) ∨ (895≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345HeadG_reserved : s2Step345HeadGBefore.reserve s2Step345HeadGFresh.toFinset=some s2Step345HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step345HeadGFresh,arenaWires]
  · norm_num [s2Step345HeadGBefore,s2Step345HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step345HeadGAfter,s2Step345HeadGBefore,s2Step345HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step345HeadG_checked : planRowResizeLog s2Step345HeadGBefore s2Step345HeadGRow 102 s2Step345HeadGFresh=
    some (s2Step345HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827, 839, 800],769⟩,growRow 769 s2Step345HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step345HeadGBefore s2Step345HeadGAfter s2Step345HeadGRow 102 s2Step345HeadGFresh
    s2Step345HeadG_distinct s2Step345HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step345HeadG_reserved
  have rowEq : WindowRow.mk (s2Step345HeadGRow.payload++s2Step345HeadGFresh) s2Step345HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 827, 839, 800],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step345HeadGvBefore : Arena := s2Step345HeadFAfter

private theorem s2Step345HeadGv_Incoming : rowsOwned s2Step345HeadGvBefore [s2Step345HeadGvRow,s2Step345HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step345HeadGRow,s2Step345HeadFRow,s2Step345HeadGvRow,s2Step345HeadFvRow] 2 s2Step345HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step345HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
    decide +kernel

private theorem s2Step345HeadGv_Outgoing : rowsOwned s2Step345HeadFvAfter [s2Step345HeadGvOut,s2Step345HeadFvOut] :=
  hmrRows_owned_drop s2Step345HeadFvAfter [s2Step345HeadGOut,s2Step345HeadFOut,s2Step345HeadGvOut,s2Step345HeadFvOut] 2 s2Step345HeadBank_outgoingOwned

private theorem s2Step345HeadGv_distinct : (s2Step345HeadGvRow.sign::s2Step345HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step345HeadGv_owned : (s2Step345HeadGvRow.sign::s2Step345HeadGvRow.payload).toFinset⊆s2Step345HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step345HeadGvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (845≤q ∧ q<907) ∨ (908≤q ∧ q<913)) rfl
  decide +kernel

private theorem s2Step345HeadGv_reserved : s2Step345HeadGvBefore.reserve s2Step345HeadGvFresh.toFinset=some s2Step345HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step345HeadGvFresh,arenaWires]
  · norm_num [s2Step345HeadGvBefore,s2Step345HeadFAfter,s2Step345HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step345HeadGvAfter,s2Step345HeadGvBefore,s2Step345HeadFAfter,s2Step345HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step345HeadGv_checked : planRowResizeLog s2Step345HeadGvBefore s2Step345HeadGvRow 190 s2Step345HeadGvFresh=
    some (s2Step345HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 844],771⟩,growRow 771 s2Step345HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step345HeadGvBefore s2Step345HeadGvAfter s2Step345HeadGvRow 190 s2Step345HeadGvFresh
    s2Step345HeadGv_distinct s2Step345HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step345HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step345HeadGvRow.payload++s2Step345HeadGvFresh) s2Step345HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 792, 840, 885, 830, 787, 817, 834, 816, 786, 841, 794, 784, 798, 877, 844],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step345HeadBank_rows : planWindowRowsLog s2Step345HeadGBefore [(s2Step345HeadGRow,102),(s2Step345HeadFRow,102),(s2Step345HeadGvRow,190),(s2Step345HeadFvRow,190)] [s2Step345HeadGFresh,s2Step345HeadFFresh,s2Step345HeadGvFresh,s2Step345HeadFvFresh]=
    some (s2Step345HeadFvAfter,[s2Step345HeadGOut,s2Step345HeadFOut,s2Step345HeadGvOut,s2Step345HeadFvOut],(growRow 769 s2Step345HeadGFresh ++ (growRow 768 s2Step345HeadFFresh ++ (growRow 771 s2Step345HeadGvFresh ++ (growRow 770 s2Step345HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step345HeadFvAfter [] []=some (s2Step345HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step345HeadFvBefore s2Step345HeadFvAfter s2Step345HeadFvAfter
    s2Step345HeadFvRow s2Step345HeadFvOut 190 s2Step345HeadFvFresh [] [] []
    (growRow 770 s2Step345HeadFvFresh) ([]) s2Step345HeadFv_Incoming s2Step345HeadFv_checked h4 s2Step345HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step345HeadGvBefore s2Step345HeadGvAfter s2Step345HeadFvAfter
    s2Step345HeadGvRow s2Step345HeadGvOut 190 s2Step345HeadGvFresh [(s2Step345HeadFvRow,190)] [s2Step345HeadFvFresh] [s2Step345HeadFvOut]
    (growRow 771 s2Step345HeadGvFresh) ((growRow 770 s2Step345HeadFvFresh ++ [])) s2Step345HeadGv_Incoming s2Step345HeadGv_checked h3 s2Step345HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step345HeadFBefore s2Step345HeadFAfter s2Step345HeadFvAfter
    s2Step345HeadFRow s2Step345HeadFOut 102 s2Step345HeadFFresh [(s2Step345HeadGvRow,190),(s2Step345HeadFvRow,190)] [s2Step345HeadGvFresh,s2Step345HeadFvFresh] [s2Step345HeadGvOut,s2Step345HeadFvOut]
    (growRow 768 s2Step345HeadFFresh) ((growRow 771 s2Step345HeadGvFresh ++ (growRow 770 s2Step345HeadFvFresh ++ []))) s2Step345HeadF_Incoming s2Step345HeadF_checked h2 s2Step345HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step345HeadGBefore s2Step345HeadGAfter s2Step345HeadFvAfter
    s2Step345HeadGRow s2Step345HeadGOut 102 s2Step345HeadGFresh [(s2Step345HeadFRow,102),(s2Step345HeadGvRow,190),(s2Step345HeadFvRow,190)] [s2Step345HeadFFresh,s2Step345HeadGvFresh,s2Step345HeadFvFresh] [s2Step345HeadFOut,s2Step345HeadGvOut,s2Step345HeadFvOut]
    (growRow 769 s2Step345HeadGFresh) ((growRow 768 s2Step345HeadFFresh ++ (growRow 771 s2Step345HeadGvFresh ++ (growRow 770 s2Step345HeadFvFresh ++ [])))) s2Step345HeadG_Incoming s2Step345HeadG_checked h1 s2Step345HeadG_Outgoing
  exact h0

private theorem s2Step345HeadBank_checked : compileHmrBankResizeLog .headroom s2Step345HeadGBefore ⟨s2Step345HeadFRow,s2Step345HeadGRow,s2Step345HeadFvRow,s2Step345HeadGvRow⟩ ⟨102,102,190,190⟩ [s2Step345HeadGFresh,s2Step345HeadFFresh,s2Step345HeadGvFresh,s2Step345HeadFvFresh]=
    some (s2Step345HeadFvAfter,⟨s2Step345HeadFOut,s2Step345HeadGOut,s2Step345HeadFvOut,s2Step345HeadGvOut⟩,(growRow 769 s2Step345HeadGFresh ++ (growRow 768 s2Step345HeadFFresh ++ (growRow 771 s2Step345HeadGvFresh ++ (growRow 770 s2Step345HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step345HeadBank_rows]
  rfl

private theorem s2Step345Front_checked : compileHmrSourceFrontLog s2Step345EntryFBefore s2Step345FrontBank 101 189 ⟨99,100,190,189⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step345FrontLog=some s2Step345FrontPlan := by
  have pairEq : s2Step345FrontPair=⟨s2Step345HeadFRow,s2Step345HeadGRow,s2Step345HeadFvRow,s2Step345HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step345FrontHead=⟨s2Step345ExitFRow,s2Step345ExitGRow,s2Step345ExitFvRow,s2Step345ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step345Add0A=s2Step345FrontHead.f.wires := by decide +kernel
  have gEq : s2Step345Add0B=s2Step345FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step345Add1A=s2Step345FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step345Add1B=s2Step345FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step345EntryFBefore s2Step345FrontBank 101 189 ⟨99,100,190,189⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step345FrontLog s2Step345FrontPlan
  · exact s2Step345Front_entry
  · exact s2Step345EntryBank_checked
  · exact s2Step345Front_sigma
  · rfl
  · exact s2Step345Front_branch
  · rfl
  · simpa only [s2Step345FrontPlan,pairEq] using s2Step345HeadBank_checked
  · simpa only [s2Step345FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step345F4_checked
  · exact s2Step345Counter_checked
  · rfl
  · simpa only [s2Step345FrontPlan,headEq] using s2Step345ExitBank_checked

private theorem s2Step345Complete_explicit_checked : compileHmrEarlyStepLog s2Step345EntryFBefore s2Step345FrontBank 101 189 ⟨99,100,190,189⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step345CompleteLog=some s2Step345CompletePlan := by
  let Q := s2Step345EarlyControlPlan
  have hq := s2Step345EarlyControl_plan_checked
  have fv1 : s2Step345CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step345CompleteOut.fv.payload[2]?.getD s2Step345CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step345CompleteOut.fv.payload[3]?.getD s2Step345CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step345CompleteOut.fv.payload[4]?.getD s2Step345CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step345EntryFBefore s2Step345EarlyControlArena s2Step345FrontBank 101 189 ⟨99,100,190,189⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 60 s2Step345CompleteLog s2Step345FrontPlan Q
    s2Step345Front_checked s2Step345Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step345Complete_owned s2Step345Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step345EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 777 901 s2Step345CompleteOut.fv.second (s2Step345CompleteOut.fv.payload[2]?.getD s2Step345CompleteOut.fv.sign) (s2Step345CompleteOut.fv.payload[3]?.getD s2Step345CompleteOut.fv.sign) (s2Step345CompleteOut.fv.payload[4]?.getD s2Step345CompleteOut.fv.sign) 903 60 s2Step345EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep345Arena : Arena := s2Step345EntryFBefore
def s2PrivateStep345Bank : WindowBank := s2Step345FrontBank
def s2PrivateStep345Spec : HmrSourceWalkStepLog := ⟨101,189,⟨99,100,190,189⟩,60,.early s2Step345CompleteLog⟩
def s2PrivateStep345Plan : HmrSourceStepPlan := .early s2Step345CompletePlan
theorem s2PrivateStep345_source : s2PrivateStep345Spec=s2ObservedLogs336[9] := rfl
theorem s2PrivateStep345_checked : compileHmrSourceStepLog s2PrivateStep345Arena s2PrivateStep345Bank
    s2PrivateStep345Spec.fgWidth s2PrivateStep345Spec.vWidth s2PrivateStep345Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
    6 498 345 s2PrivateStep345Spec.need none s2PrivateStep345Spec.log=some s2PrivateStep345Plan := by
  change compileHmrSourceStepLog s2Step345EntryFBefore s2Step345FrontBank 101 189 ⟨99,100,190,189⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] 6 498 345 60 none (.early s2Step345CompleteLog)=some (.early s2Step345CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 345<498)]
  rw [s2Step345Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
