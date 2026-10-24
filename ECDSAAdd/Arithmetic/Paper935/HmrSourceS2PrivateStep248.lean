import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep246
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

private def s2Step248CompleteMoves : List (Wire × Wire) := [(803,145)]

private def s2Step248EarlyControlLog : HmrEarlyControlLog := ⟨[803, 842, 830, 809, 835],[792],[800],[885, 891, 894, 896, 901, 902],[]⟩

private def s2Step248FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [809], [], [799]],[[835], [830], [842], [834]],[[], [], [], []]⟩,[814],[810],[792],[800],[885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[792, 800, 885, 891]⟩

private def s2Step248CompleteLog : HmrEarlyStepLog := ⟨s2Step248FrontLog,s2Step248CompleteMoves,s2Step248EarlyControlLog⟩

private def s2Step248ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩

private def s2Step248ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834],770⟩

private def s2Step248ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144],769⟩

private def s2Step248ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799],771⟩

private def s2Step248FrontOut : WindowBank := ⟨s2Step248ExitFOut,s2Step248ExitGOut,s2Step248ExitFvOut,s2Step248ExitGvOut⟩

private def s2Step248CompleteOut : WindowBank := s2Step248FrontOut.repacked s2Step248CompleteMoves

private def s2Step248EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step248EarlyControlPositiveArena,[792],s2Step248EarlyControlEqualityArena,[800],⟨⟨814,false⟩,[⟨⟨792,false⟩,800⟩]⟩⟩

private def s2Step248EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step248EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step248EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,803⟩,⟨⟨774,false⟩,842⟩,⟨⟨775,false⟩,830⟩,⟨⟨776,false⟩,809⟩,⟨⟨777,false⟩,835⟩]⟩

private def s2Step248EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step248EarlyControlZeroArena,s2Step248EarlyControlZeroPlan,s2Step248EarlyControlClassPlan,s2Step248EarlyControlFlagArena,s2Step248EarlyControlFittedArena,s2Step248EarlyControlHistoryArena,s2Step248EarlyControlSigmaArena,s2Step248EarlyControlOutputArena,s2Step248EarlyControlLog⟩

private def s2Step248CounterWork : List Wire := [792, 800, 885, 891]

private theorem s2Step248Counter_bounded : s2Step248CounterWork.toFinset⊆arenaWires := by norm_num [s2Step248CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step248HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248CounterDuring : Arena := ⟨s2Step248HeadFvAfter.live∪s2Step248CounterWork.toFinset,Finset.union_subset s2Step248HeadFvAfter.bounded s2Step248Counter_bounded⟩

private def s2Step248EntryFFresh : List Wire := []

private def s2Step248EntryFvFresh : List Wire := []

private def s2Step248EntryGFresh : List Wire := [809]

private def s2Step248EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248EntryGvFresh : List Wire := [799]

private def s2Step248ExitFExtra : List Wire := [830]

private def s2Step248ExitGExtra : List Wire := [145, 809, 835]

private def s2Step248ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248ExitGvExtra : List Wire := [842]

private def s2Step248Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248Add0Work : List Wire := [885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step248Add0_bounded : s2Step248Add0Work.toFinset⊆arenaWires := by
  have h : s2Step248Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step248Add0During : Arena := ⟨s2Step248Add0Arena.live∪s2Step248Add0Work.toFinset,Finset.union_subset s2Step248Add0Arena.bounded s2Step248Add0_bounded⟩

private def s2Step248Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248Add1Work : List Wire := [885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step248Add1_bounded : s2Step248Add1Work.toFinset⊆arenaWires := by
  have h : s2Step248Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step248Add1During : Arena := ⟨s2Step248Add1Arena.live∪s2Step248Add1Work.toFinset,Finset.union_subset s2Step248Add1Arena.bounded s2Step248Add1_bounded⟩

private def s2Step248F4FlagArena : Arena := ⟨s2Step248HeadFvAfter.live∪{792},Finset.union_subset s2Step248HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step248F4Plan : HmrHybridF4Plan := ⟨s2Step248F4FlagArena,[792],s2Step248Add0Arena,[800],s2Step248Add0During,s2Step248Add0Work,s2Step248Add1During,s2Step248Add1Work⟩

private def s2Step248HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 830],768⟩

private def s2Step248HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834],770⟩

private def s2Step248HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 809, 835],769⟩

private def s2Step248HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 842],771⟩

private def s2Step248FrontHead : WindowBank := ⟨s2Step248HeadFOut,s2Step248HeadGOut,s2Step248HeadFvOut,s2Step248HeadGvOut⟩

private def s2Step248EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩

private def s2Step248EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824],770⟩

private def s2Step248EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 809],769⟩

private def s2Step248EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799],771⟩

private def s2Step248FrontPair : WindowBank := ⟨s2Step248EntryFOut,s2Step248EntryGOut,s2Step248EntryFvOut,s2Step248EntryGvOut⟩

private def s2Step248FrontSigmaArena : Arena := ⟨s2Step248EntryGvAfter.live∪{814},Finset.union_subset s2Step248EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step248HeadFFresh : List Wire := [830]

private def s2Step248HeadFvFresh : List Wire := [834]

private def s2Step248HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248HeadGFresh : List Wire := [835]

private def s2Step248HeadGvFresh : List Wire := [842]

private def s2Step248FrontPlan : HmrSourceFront := ⟨s2Step248EntryGvAfter,s2Step248FrontPair,(growRow 768 s2Step248EntryFFresh ++ (growRow 769 s2Step248EntryGFresh ++ (growRow 770 s2Step248EntryFvFresh ++ (growRow 771 s2Step248EntryGvFresh ++ [])))),s2Step248FrontSigmaArena,[814],s2Step248HeadGBefore,[810],
  s2Step248HeadFvAfter,s2Step248FrontHead,(growRow 769 s2Step248HeadGFresh ++ (growRow 768 s2Step248HeadFFresh ++ (growRow 771 s2Step248HeadGvFresh ++ (growRow 770 s2Step248HeadFvFresh ++ [])))),s2Step248F4Plan,s2Step248CounterDuring,s2Step248CounterWork,s2Step248ExitGvAfter,s2Step248FrontOut,(shrinkRow 769 s2Step248ExitGExtra ++ (shrinkRow 768 s2Step248ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step248ExitGvExtra ++ []))))⟩

private def s2Step248CompletePlan : HmrEarlyStepPlan := ⟨s2Step248FrontPlan,s2Step248EarlyControlArena,s2Step248EarlyControlPlan,s2Step248CompleteMoves⟩

private theorem s2Step248Complete_apart : List.Disjoint (s2Step248CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [814, 810, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := by
  have nd : ((s2Step248CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[814, 810, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step248Complete_owned : (s2Step248CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step248EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step248EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private def s2Step248CompleteMoveArena : Arena := ⟨s2Step248ExitGvAfter.live∪{145},Finset.union_subset s2Step248ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step248Complete_repack : s2Step248ExitGvAfter.checkRepack s2Step248CompleteMoves=some s2Step248EarlyControlArena := by
  have owned : 803∈s2Step248ExitGvAfter.live := by norm_num [s2Step248ExitGvAfter,arenaWires]
  have reserve : s2Step248ExitGvAfter.reserve {145}=some s2Step248CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step248ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step248CompleteMoveArena.retireSet {803}=s2Step248EarlyControlArena := by
    unfold Arena.retireSet s2Step248EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step248CompleteMoveArena,s2Step248ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step248CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step248CompleteMoveArena.retireSet {803}).checkRepack []=some s2Step248EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step248EarlyControl_branchOwned : ([810] : List Wire).toFinset⊆s2Step248EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step248EarlyControlSigmaArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248EarlyControl_branch : compileHmrBranchRetirement s2Step248EarlyControlSigmaArena 810=some s2Step248EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step248EarlyControl_branchOwned
  · ext q
    simp [s2Step248EarlyControlOutputArena,s2Step248EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step248EarlyControl_classEqualityBorrow : s2Step248EarlyControlPositiveArena.checkBorrow (([814, 792] : List Wire).length-1) s2Step248EarlyControlLog.classWork=some s2Step248EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step248EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step248EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step248EarlyControlEqualityArena,s2Step248EarlyControlPositiveArena,s2Step248EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step248EarlyControl_classEqualityOwned : ([814, 792] : List Wire).toFinset⊆s2Step248EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step248EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248EarlyControl_classEquality : compileHmrEqualityLog s2Step248EarlyControlPositiveArena [814, 792] 0 s2Step248EarlyControlLog.classWork=some (s2Step248EarlyControlEqualityArena,s2Step248EarlyControlLog.classWork,s2Step248EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step248EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step248EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step248EarlyControl_classOwned : ([777, 835, 814] : List Wire).toFinset⊆s2Step248EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step248EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248EarlyControl_positiveBorrow : s2Step248EarlyControlZeroArena.checkBorrow (1) s2Step248EarlyControlLog.positiveWork=some s2Step248EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step248EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step248EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step248EarlyControlPositiveArena,s2Step248EarlyControlZeroArena,s2Step248EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step248EarlyControl_class : compileHmrSourceClassLog s2Step248EarlyControlZeroArena false 777 s2Step248EarlyControlZeroPlan.top 0 814 s2Step248EarlyControlLog.positiveWork s2Step248EarlyControlLog.classWork=some s2Step248EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step248EarlyControlClassPlan s2Step248EarlyControlZeroArena false 777 s2Step248EarlyControlZeroPlan.top 0 814
  constructor
  · decide +kernel
  · exact s2Step248EarlyControl_classOwned
  · exact s2Step248EarlyControl_positiveBorrow
  · exact s2Step248EarlyControl_classEquality

private theorem s2Step248EarlyControl_entryRecordOwned : ([810, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step248EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step248EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248EarlyControl_entrySigmaOwned : ([814, 254] : List Wire).toFinset⊆s2Step248EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step248EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248EarlyControl_fitBorrow : s2Step248EarlyControlFlagArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step248EarlyControlLog.recordFresh=some s2Step248EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step248EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step248EarlyControlFlagArena (fun q => (0≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step248EarlyControlFittedArena,s2Step248EarlyControlFlagArena,s2Step248EarlyControlLog,arenaWires]

private theorem s2Step248EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step248EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step248EarlyControlFlagArena (fun q => (0≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step248EarlyControl_fit : compileHmrRecordGrowLog s2Step248EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step248EarlyControlLog.recordFresh=some s2Step248EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step248EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step248EarlyControl_fitBorrow

private theorem s2Step248EarlyControl_flagsBorrow : s2Step248EarlyControlEqualityArena.checkBorrow (6) s2Step248EarlyControlLog.flagWork=some s2Step248EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step248EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step248EarlyControlEqualityArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step248EarlyControlFlagArena,s2Step248EarlyControlEqualityArena,s2Step248EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step248EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step248EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step248EarlyControlEqualityArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248EarlyControl_flags : compileHmrFlagsLog s2Step248EarlyControlClassPlan.equalityArena s2Step248EarlyControlClassPlan.equality.top 253 252 251 s2Step248EarlyControlLog.flagWork=some s2Step248EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step248EarlyControl_flagsOwned⟩
  · exact s2Step248EarlyControl_flagsBorrow

private theorem s2Step248EarlyControl_historyBorrow : s2Step248EarlyControlArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step248EarlyControlLog.recordFresh=some s2Step248EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step248EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step248EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step248EarlyControlHistoryArena,s2Step248EarlyControlArena,s2Step248EarlyControlLog,arenaWires]

private theorem s2Step248EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step248EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step248EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248EarlyControl_history : compileHmrRecordGrowLog s2Step248EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step248EarlyControlLog.recordFresh=some s2Step248EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step248EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step248EarlyControl_historyBorrow

private theorem s2Step248EarlyControl_sigmaOwned : ([254, 814] : List Wire).toFinset⊆s2Step248EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step248EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248EarlyControl_sigmaReleaseOwned : ([814] : List Wire).toFinset⊆s2Step248EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step248EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248EarlyControl_sigmaRelease : s2Step248EarlyControlHistoryArena.release {814} (fun _ => false)=some s2Step248EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step248EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step248EarlyControlSigmaArena,s2Step248EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step248EarlyControl_sigma : compileHmrSigmaDropLog s2Step248EarlyControlHistoryArena false 0 0 254 814 []=some s2Step248EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step248EarlyControl_sigmaOwned⟩
  · exact s2Step248EarlyControl_sigmaRelease

private theorem s2Step248EarlyControl_zeroBorrow : s2Step248EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step248EarlyControlLog.zeroWork=some s2Step248EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step248EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step248EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step248EarlyControlZeroArena,s2Step248EarlyControlArena,s2Step248EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step248EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step248EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step248EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248EarlyControl_zero : compileHmrEqualityLog s2Step248EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step248EarlyControlLog.zeroWork=some (s2Step248EarlyControlZeroArena,s2Step248EarlyControlLog.zeroWork,s2Step248EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step248EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step248EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step248EarlyControl_logged : s2Step248EarlyControlPlan.Logged s2Step248EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 254 253 252 251 810 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step248EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step248EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step248EarlyControl_zero
  · exact s2Step248EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step248EarlyControl_flags
  · exact s2Step248EarlyControl_fit
  · exact s2Step248EarlyControl_history
  · exact s2Step248EarlyControl_sigma
  · exact s2Step248EarlyControl_branch

private theorem s2Step248EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step248EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 254 253 252 251 810 51 s2Step248EarlyControlLog=some s2Step248EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step248EarlyControlPlan s2Step248EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 254 253 252 251 810 51 s2Step248EarlyControl_logged

private def s2Step248EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩

private def s2Step248EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824],770⟩

private def s2Step248EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145],769⟩

private def s2Step248EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802],771⟩

private def s2Step248FrontBank : WindowBank := ⟨s2Step248EntryFRow,s2Step248EntryGRow,s2Step248EntryFvRow,s2Step248EntryGvRow⟩

private def s2Step248Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 830, 768]

private def s2Step248Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 809, 835, 769]

private def s2Step248Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 770]

private def s2Step248Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 842, 771]

private theorem s2Step248Counter_apart : Disjoint s2Step248HeadFvAfter.live s2Step248CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step248HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248Counter_borrowed : s2Step248HeadFvAfter.checkBorrow 4 s2Step248CounterWork=some s2Step248CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step248HeadFvAfter s2Step248CounterDuring s2Step248CounterWork.toFinset s2Step248Counter_bounded s2Step248Counter_apart rfl

private theorem s2Step248Counter_owned : (814::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step248HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step248HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248Counter_checked : compileHmrCounterStepLog s2Step248HeadFvAfter true 814 [772, 773, 774, 775, 776, 777] s2Step248CounterWork=some s2Step248CounterDuring := by
  have owned : ∀q∈814::[772, 773, 774, 775, 776, 777],q∈s2Step248HeadFvAfter.live := fun q hq => s2Step248Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step248Counter_borrowed

private def s2Step248EntryFAfter : Arena := s2Step248EntryFBefore

private theorem s2Step248EntryBank_incomingDistinct : ([s2Step248EntryFRow,s2Step248EntryGRow,s2Step248EntryFvRow,s2Step248EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step248EntryF_Incoming : rowsOwned s2Step248EntryFBefore [s2Step248EntryFRow,s2Step248EntryGRow,s2Step248EntryFvRow,s2Step248EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step248EntryFRow,s2Step248EntryGRow,s2Step248EntryFvRow,s2Step248EntryGvRow] 0 s2Step248EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step248EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step248EntryBank_outgoingOwned : rowsOwned s2Step248EntryGvAfter [s2Step248EntryFOut,s2Step248EntryGOut,s2Step248EntryFvOut,s2Step248EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step248EntryGvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step248EntryF_Outgoing : rowsOwned s2Step248EntryGvAfter [s2Step248EntryFOut,s2Step248EntryGOut,s2Step248EntryFvOut,s2Step248EntryGvOut] :=
  hmrRows_owned_drop s2Step248EntryGvAfter [s2Step248EntryFOut,s2Step248EntryGOut,s2Step248EntryFvOut,s2Step248EntryGvOut] 0 s2Step248EntryBank_outgoingOwned

private theorem s2Step248EntryF_distinct : (s2Step248EntryFRow.sign::s2Step248EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step248EntryF_owned : (s2Step248EntryFRow.sign::s2Step248EntryFRow.payload).toFinset⊆s2Step248EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step248EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248EntryF_reserved : s2Step248EntryFBefore.reserve s2Step248EntryFFresh.toFinset=some s2Step248EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step248EntryFFresh,arenaWires]
  · norm_num [s2Step248EntryFBefore,s2Step248EntryFFresh,arenaWires]
  · simp only [s2Step248EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step248EntryF_checked : planRowResizeLog s2Step248EntryFBefore s2Step248EntryFRow 147 s2Step248EntryFFresh=
    some (s2Step248EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩,growRow 768 s2Step248EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step248EntryFBefore s2Step248EntryFAfter s2Step248EntryFRow 147 s2Step248EntryFFresh
    s2Step248EntryF_distinct s2Step248EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step248EntryF_reserved
  have rowEq : WindowRow.mk (s2Step248EntryFRow.payload++s2Step248EntryFFresh) s2Step248EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step248EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248EntryFvAfter : Arena := s2Step248EntryGAfter

private def s2Step248EntryFvBefore : Arena := s2Step248EntryGAfter

private theorem s2Step248EntryFv_Incoming : rowsOwned s2Step248EntryFvBefore [s2Step248EntryFvRow,s2Step248EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step248EntryFRow,s2Step248EntryGRow,s2Step248EntryFvRow,s2Step248EntryGvRow] 2 s2Step248EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step248EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step248EntryFv_Outgoing : rowsOwned s2Step248EntryGvAfter [s2Step248EntryFvOut,s2Step248EntryGvOut] :=
  hmrRows_owned_drop s2Step248EntryGvAfter [s2Step248EntryFOut,s2Step248EntryGOut,s2Step248EntryFvOut,s2Step248EntryGvOut] 2 s2Step248EntryBank_outgoingOwned

private theorem s2Step248EntryFv_distinct : (s2Step248EntryFvRow.sign::s2Step248EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step248EntryFv_owned : (s2Step248EntryFvRow.sign::s2Step248EntryFvRow.payload).toFinset⊆s2Step248EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step248EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248EntryFv_reserved : s2Step248EntryFvBefore.reserve s2Step248EntryFvFresh.toFinset=some s2Step248EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step248EntryFvFresh,arenaWires]
  · norm_num [s2Step248EntryFvBefore,s2Step248EntryGAfter,s2Step248EntryFvFresh,arenaWires]
  · simp only [s2Step248EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step248EntryFv_checked : planRowResizeLog s2Step248EntryFvBefore s2Step248EntryFvRow 139 s2Step248EntryFvFresh=
    some (s2Step248EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824],770⟩,growRow 770 s2Step248EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step248EntryFvBefore s2Step248EntryFvAfter s2Step248EntryFvRow 139 s2Step248EntryFvFresh
    s2Step248EntryFv_distinct s2Step248EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step248EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step248EntryFvRow.payload++s2Step248EntryFvFresh) s2Step248EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step248EntryGBefore : Arena := s2Step248EntryFBefore

private theorem s2Step248EntryG_Incoming : rowsOwned s2Step248EntryGBefore [s2Step248EntryGRow,s2Step248EntryFvRow,s2Step248EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step248EntryFRow,s2Step248EntryGRow,s2Step248EntryFvRow,s2Step248EntryGvRow] 1 s2Step248EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step248EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step248EntryG_Outgoing : rowsOwned s2Step248EntryGvAfter [s2Step248EntryGOut,s2Step248EntryFvOut,s2Step248EntryGvOut] :=
  hmrRows_owned_drop s2Step248EntryGvAfter [s2Step248EntryFOut,s2Step248EntryGOut,s2Step248EntryFvOut,s2Step248EntryGvOut] 1 s2Step248EntryBank_outgoingOwned

private theorem s2Step248EntryG_distinct : (s2Step248EntryGRow.sign::s2Step248EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step248EntryG_owned : (s2Step248EntryGRow.sign::s2Step248EntryGRow.payload).toFinset⊆s2Step248EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step248EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248EntryG_reserved : s2Step248EntryGBefore.reserve s2Step248EntryGFresh.toFinset=some s2Step248EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step248EntryGFresh,arenaWires]
  · norm_num [s2Step248EntryGBefore,s2Step248EntryFBefore,s2Step248EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step248EntryGAfter,s2Step248EntryGBefore,s2Step248EntryFBefore,s2Step248EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step248EntryG_checked : planRowResizeLog s2Step248EntryGBefore s2Step248EntryGRow 147 s2Step248EntryGFresh=
    some (s2Step248EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 809],769⟩,growRow 769 s2Step248EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step248EntryGBefore s2Step248EntryGAfter s2Step248EntryGRow 147 s2Step248EntryGFresh
    s2Step248EntryG_distinct s2Step248EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step248EntryG_reserved
  have rowEq : WindowRow.mk (s2Step248EntryGRow.payload++s2Step248EntryGFresh) s2Step248EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 809],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step248EntryGvBefore : Arena := s2Step248EntryGAfter

private theorem s2Step248EntryGv_Incoming : rowsOwned s2Step248EntryGvBefore [s2Step248EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step248EntryFRow,s2Step248EntryGRow,s2Step248EntryFvRow,s2Step248EntryGvRow] 3 s2Step248EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step248EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step248EntryGv_Outgoing : rowsOwned s2Step248EntryGvAfter [s2Step248EntryGvOut] :=
  hmrRows_owned_drop s2Step248EntryGvAfter [s2Step248EntryFOut,s2Step248EntryGOut,s2Step248EntryFvOut,s2Step248EntryGvOut] 3 s2Step248EntryBank_outgoingOwned

private theorem s2Step248EntryGv_distinct : (s2Step248EntryGvRow.sign::s2Step248EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step248EntryGv_owned : (s2Step248EntryGvRow.sign::s2Step248EntryGvRow.payload).toFinset⊆s2Step248EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step248EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248EntryGv_reserved : s2Step248EntryGvBefore.reserve s2Step248EntryGvFresh.toFinset=some s2Step248EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step248EntryGvFresh,arenaWires]
  · norm_num [s2Step248EntryGvBefore,s2Step248EntryGAfter,s2Step248EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step248EntryGvAfter,s2Step248EntryGvBefore,s2Step248EntryGAfter,s2Step248EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step248EntryGv_checked : planRowResizeLog s2Step248EntryGvBefore s2Step248EntryGvRow 139 s2Step248EntryGvFresh=
    some (s2Step248EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799],771⟩,growRow 771 s2Step248EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step248EntryGvBefore s2Step248EntryGvAfter s2Step248EntryGvRow 139 s2Step248EntryGvFresh
    s2Step248EntryGv_distinct s2Step248EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step248EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step248EntryGvRow.payload++s2Step248EntryGvFresh) s2Step248EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step248EntryBank_rows : planWindowRowsLog s2Step248EntryFBefore [(s2Step248EntryFRow,147),(s2Step248EntryGRow,147),(s2Step248EntryFvRow,139),(s2Step248EntryGvRow,139)] [s2Step248EntryFFresh,s2Step248EntryGFresh,s2Step248EntryFvFresh,s2Step248EntryGvFresh]=
    some (s2Step248EntryGvAfter,[s2Step248EntryFOut,s2Step248EntryGOut,s2Step248EntryFvOut,s2Step248EntryGvOut],(growRow 768 s2Step248EntryFFresh ++ (growRow 769 s2Step248EntryGFresh ++ (growRow 770 s2Step248EntryFvFresh ++ (growRow 771 s2Step248EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step248EntryGvAfter [] []=some (s2Step248EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step248EntryGvBefore s2Step248EntryGvAfter s2Step248EntryGvAfter
    s2Step248EntryGvRow s2Step248EntryGvOut 139 s2Step248EntryGvFresh [] [] []
    (growRow 771 s2Step248EntryGvFresh) ([]) s2Step248EntryGv_Incoming s2Step248EntryGv_checked h4 s2Step248EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step248EntryFvBefore s2Step248EntryFvAfter s2Step248EntryGvAfter
    s2Step248EntryFvRow s2Step248EntryFvOut 139 s2Step248EntryFvFresh [(s2Step248EntryGvRow,139)] [s2Step248EntryGvFresh] [s2Step248EntryGvOut]
    (growRow 770 s2Step248EntryFvFresh) ((growRow 771 s2Step248EntryGvFresh ++ [])) s2Step248EntryFv_Incoming s2Step248EntryFv_checked h3 s2Step248EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step248EntryGBefore s2Step248EntryGAfter s2Step248EntryGvAfter
    s2Step248EntryGRow s2Step248EntryGOut 147 s2Step248EntryGFresh [(s2Step248EntryFvRow,139),(s2Step248EntryGvRow,139)] [s2Step248EntryFvFresh,s2Step248EntryGvFresh] [s2Step248EntryFvOut,s2Step248EntryGvOut]
    (growRow 769 s2Step248EntryGFresh) ((growRow 770 s2Step248EntryFvFresh ++ (growRow 771 s2Step248EntryGvFresh ++ []))) s2Step248EntryG_Incoming s2Step248EntryG_checked h2 s2Step248EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step248EntryFBefore s2Step248EntryFAfter s2Step248EntryGvAfter
    s2Step248EntryFRow s2Step248EntryFOut 147 s2Step248EntryFFresh [(s2Step248EntryGRow,147),(s2Step248EntryFvRow,139),(s2Step248EntryGvRow,139)] [s2Step248EntryGFresh,s2Step248EntryFvFresh,s2Step248EntryGvFresh] [s2Step248EntryGOut,s2Step248EntryFvOut,s2Step248EntryGvOut]
    (growRow 768 s2Step248EntryFFresh) ((growRow 769 s2Step248EntryGFresh ++ (growRow 770 s2Step248EntryFvFresh ++ (growRow 771 s2Step248EntryGvFresh ++ [])))) s2Step248EntryF_Incoming s2Step248EntryF_checked h1 s2Step248EntryF_Outgoing
  exact h0

private theorem s2Step248EntryBank_checked : compileHmrBankResizeLog .entry s2Step248EntryFBefore ⟨s2Step248EntryFRow,s2Step248EntryGRow,s2Step248EntryFvRow,s2Step248EntryGvRow⟩ ⟨147,147,139,139⟩ [s2Step248EntryFFresh,s2Step248EntryGFresh,s2Step248EntryFvFresh,s2Step248EntryGvFresh]=
    some (s2Step248EntryGvAfter,⟨s2Step248EntryFOut,s2Step248EntryGOut,s2Step248EntryFvOut,s2Step248EntryGvOut⟩,(growRow 768 s2Step248EntryFFresh ++ (growRow 769 s2Step248EntryGFresh ++ (growRow 770 s2Step248EntryFvFresh ++ (growRow 771 s2Step248EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step248EntryBank_rows]
  rfl

private def s2Step248ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248ExitFBefore : Arena := s2Step248ExitGAfter

private def s2Step248ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 830],768⟩

private def s2Step248ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834],770⟩

private def s2Step248ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 809, 835],769⟩

private def s2Step248ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 842],771⟩

private theorem s2Step248ExitBank_incomingDistinct : ([s2Step248ExitGRow,s2Step248ExitFRow,s2Step248ExitFvRow,s2Step248ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step248ExitF_Incoming : rowsOwned s2Step248ExitFBefore [s2Step248ExitFRow,s2Step248ExitFvRow,s2Step248ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step248ExitGRow,s2Step248ExitFRow,s2Step248ExitFvRow,s2Step248ExitGvRow] 1 s2Step248ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step248ExitFBefore (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step248ExitBank_outgoingOwned : rowsOwned s2Step248ExitGvAfter [s2Step248ExitGOut,s2Step248ExitFOut,s2Step248ExitFvOut,s2Step248ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step248ExitGvAfter (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step248ExitF_Outgoing : rowsOwned s2Step248ExitGvAfter [s2Step248ExitFOut,s2Step248ExitFvOut,s2Step248ExitGvOut] :=
  hmrRows_owned_drop s2Step248ExitGvAfter [s2Step248ExitGOut,s2Step248ExitFOut,s2Step248ExitFvOut,s2Step248ExitGvOut] 1 s2Step248ExitBank_outgoingOwned

private theorem s2Step248ExitF_distinct : (s2Step248ExitFRow.sign::s2Step248ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step248ExitF_owned : (s2Step248ExitFRow.sign::s2Step248ExitFRow.payload).toFinset⊆s2Step248ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step248ExitFBefore (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248ExitF_retired : s2Step248ExitFBefore.retireSet s2Step248ExitFExtra.toFinset=s2Step248ExitFAfter := by
  unfold Arena.retireSet s2Step248ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step248ExitFBefore,s2Step248ExitGAfter,s2Step248ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step248ExitF_checked : planRowResizeLog s2Step248ExitFBefore s2Step248ExitFRow 147 []=
    some (s2Step248ExitFAfter,s2Step248ExitFOut,shrinkRow 768 s2Step248ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step248ExitFBefore s2Step248ExitFRow 147 s2Step248ExitF_distinct s2Step248ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step248ExitFRow.payload.take 147) s2Step248ExitFRow.sign=s2Step248ExitFOut := by decide +kernel
  have hi : s2Step248ExitFRow.payload.drop 147=s2Step248ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step248ExitF_retired] at result
  exact result

private def s2Step248ExitFvAfter : Arena := s2Step248ExitFAfter

private def s2Step248ExitFvBefore : Arena := s2Step248ExitFAfter

private theorem s2Step248ExitFv_Incoming : rowsOwned s2Step248ExitFvBefore [s2Step248ExitFvRow,s2Step248ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step248ExitGRow,s2Step248ExitFRow,s2Step248ExitFvRow,s2Step248ExitGvRow] 2 s2Step248ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step248ExitFvBefore (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step248ExitFv_Outgoing : rowsOwned s2Step248ExitGvAfter [s2Step248ExitFvOut,s2Step248ExitGvOut] :=
  hmrRows_owned_drop s2Step248ExitGvAfter [s2Step248ExitGOut,s2Step248ExitFOut,s2Step248ExitFvOut,s2Step248ExitGvOut] 2 s2Step248ExitBank_outgoingOwned

private theorem s2Step248ExitFv_distinct : (s2Step248ExitFvRow.sign::s2Step248ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step248ExitFv_owned : (s2Step248ExitFvRow.sign::s2Step248ExitFvRow.payload).toFinset⊆s2Step248ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step248ExitFvBefore (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248ExitFv_reserved : s2Step248ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step248ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step248ExitFv_checked : planRowResizeLog s2Step248ExitFvBefore s2Step248ExitFvRow 140 []=
    some (s2Step248ExitFvAfter,s2Step248ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step248ExitFvBefore s2Step248ExitFvAfter s2Step248ExitFvRow 140 []
    s2Step248ExitFv_distinct s2Step248ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step248ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step248ExitFvRow.payload++[]) s2Step248ExitFvRow.sign=s2Step248ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step248ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private theorem s2Step248ExitG_Incoming : rowsOwned s2Step248ExitGBefore [s2Step248ExitGRow,s2Step248ExitFRow,s2Step248ExitFvRow,s2Step248ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step248ExitGRow,s2Step248ExitFRow,s2Step248ExitFvRow,s2Step248ExitGvRow] 0 s2Step248ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step248ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step248ExitG_Outgoing : rowsOwned s2Step248ExitGvAfter [s2Step248ExitGOut,s2Step248ExitFOut,s2Step248ExitFvOut,s2Step248ExitGvOut] :=
  hmrRows_owned_drop s2Step248ExitGvAfter [s2Step248ExitGOut,s2Step248ExitFOut,s2Step248ExitFvOut,s2Step248ExitGvOut] 0 s2Step248ExitBank_outgoingOwned

private theorem s2Step248ExitG_distinct : (s2Step248ExitGRow.sign::s2Step248ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step248ExitG_owned : (s2Step248ExitGRow.sign::s2Step248ExitGRow.payload).toFinset⊆s2Step248ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step248ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248ExitG_retired : s2Step248ExitGBefore.retireSet s2Step248ExitGExtra.toFinset=s2Step248ExitGAfter := by
  unfold Arena.retireSet s2Step248ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step248ExitGBefore,s2Step248ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step248ExitG_checked : planRowResizeLog s2Step248ExitGBefore s2Step248ExitGRow 145 []=
    some (s2Step248ExitGAfter,s2Step248ExitGOut,shrinkRow 769 s2Step248ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step248ExitGBefore s2Step248ExitGRow 145 s2Step248ExitG_distinct s2Step248ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step248ExitGRow.payload.take 145) s2Step248ExitGRow.sign=s2Step248ExitGOut := by decide +kernel
  have hi : s2Step248ExitGRow.payload.drop 145=s2Step248ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step248ExitG_retired] at result
  exact result

private def s2Step248ExitGvBefore : Arena := s2Step248ExitFAfter

private theorem s2Step248ExitGv_Incoming : rowsOwned s2Step248ExitGvBefore [s2Step248ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step248ExitGRow,s2Step248ExitFRow,s2Step248ExitFvRow,s2Step248ExitGvRow] 3 s2Step248ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step248ExitGvBefore (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step248ExitGv_Outgoing : rowsOwned s2Step248ExitGvAfter [s2Step248ExitGvOut] :=
  hmrRows_owned_drop s2Step248ExitGvAfter [s2Step248ExitGOut,s2Step248ExitFOut,s2Step248ExitFvOut,s2Step248ExitGvOut] 3 s2Step248ExitBank_outgoingOwned

private theorem s2Step248ExitGv_distinct : (s2Step248ExitGvRow.sign::s2Step248ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step248ExitGv_owned : (s2Step248ExitGvRow.sign::s2Step248ExitGvRow.payload).toFinset⊆s2Step248ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step248ExitGvBefore (fun q => (0≤q ∧ q<145) ∨ (146≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248ExitGv_retired : s2Step248ExitGvBefore.retireSet s2Step248ExitGvExtra.toFinset=s2Step248ExitGvAfter := by
  unfold Arena.retireSet s2Step248ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step248ExitGvBefore,s2Step248ExitFAfter,s2Step248ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step248ExitGv_checked : planRowResizeLog s2Step248ExitGvBefore s2Step248ExitGvRow 139 []=
    some (s2Step248ExitGvAfter,s2Step248ExitGvOut,shrinkRow 771 s2Step248ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step248ExitGvBefore s2Step248ExitGvRow 139 s2Step248ExitGv_distinct s2Step248ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step248ExitGvRow.payload.take 139) s2Step248ExitGvRow.sign=s2Step248ExitGvOut := by decide +kernel
  have hi : s2Step248ExitGvRow.payload.drop 139=s2Step248ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step248ExitGv_retired] at result
  exact result

private theorem s2Step248ExitBank_rows : planWindowRowsLog s2Step248ExitGBefore [(s2Step248ExitGRow,145),(s2Step248ExitFRow,147),(s2Step248ExitFvRow,140),(s2Step248ExitGvRow,139)] [[],[],[],[]]=
    some (s2Step248ExitGvAfter,[s2Step248ExitGOut,s2Step248ExitFOut,s2Step248ExitFvOut,s2Step248ExitGvOut],(shrinkRow 769 s2Step248ExitGExtra ++ (shrinkRow 768 s2Step248ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step248ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step248ExitGvAfter [] []=some (s2Step248ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step248ExitGvBefore s2Step248ExitGvAfter s2Step248ExitGvAfter
    s2Step248ExitGvRow s2Step248ExitGvOut 139 [] [] [] []
    (shrinkRow 771 s2Step248ExitGvExtra) ([]) s2Step248ExitGv_Incoming s2Step248ExitGv_checked h4 s2Step248ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step248ExitFvBefore s2Step248ExitFvAfter s2Step248ExitGvAfter
    s2Step248ExitFvRow s2Step248ExitFvOut 140 [] [(s2Step248ExitGvRow,139)] [[]] [s2Step248ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step248ExitGvExtra ++ [])) s2Step248ExitFv_Incoming s2Step248ExitFv_checked h3 s2Step248ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step248ExitFBefore s2Step248ExitFAfter s2Step248ExitGvAfter
    s2Step248ExitFRow s2Step248ExitFOut 147 [] [(s2Step248ExitFvRow,140),(s2Step248ExitGvRow,139)] [[],[]] [s2Step248ExitFvOut,s2Step248ExitGvOut]
    (shrinkRow 768 s2Step248ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step248ExitGvExtra ++ []))) s2Step248ExitF_Incoming s2Step248ExitF_checked h2 s2Step248ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step248ExitGBefore s2Step248ExitGAfter s2Step248ExitGvAfter
    s2Step248ExitGRow s2Step248ExitGOut 145 [] [(s2Step248ExitFRow,147),(s2Step248ExitFvRow,140),(s2Step248ExitGvRow,139)] [[],[],[]] [s2Step248ExitFOut,s2Step248ExitFvOut,s2Step248ExitGvOut]
    (shrinkRow 769 s2Step248ExitGExtra) ((shrinkRow 768 s2Step248ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step248ExitGvExtra ++ [])))) s2Step248ExitG_Incoming s2Step248ExitG_checked h1 s2Step248ExitG_Outgoing
  exact h0

private theorem s2Step248ExitBank_checked : compileHmrBankResizeLog .exit s2Step248ExitGBefore ⟨s2Step248ExitFRow,s2Step248ExitGRow,s2Step248ExitFvRow,s2Step248ExitGvRow⟩ ⟨147,145,140,139⟩ [[],[],[],[]]=
    some (s2Step248ExitGvAfter,⟨s2Step248ExitFOut,s2Step248ExitGOut,s2Step248ExitFvOut,s2Step248ExitGvOut⟩,(shrinkRow 769 s2Step248ExitGExtra ++ (shrinkRow 768 s2Step248ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step248ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step248ExitBank_rows]
  rfl

private theorem s2Step248Add0_apart : Disjoint s2Step248Add0Arena.live s2Step248Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step248Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248Add0_card : s2Step248Add0Arena.live.card=897 := by
  decide +kernel

private theorem s2Step248Add0_borrowed : s2Step248Add0Arena.checkBorrow (hmrHybridCount s2Step248Add0Arena s2Step248Add0B.length) s2Step248Add0Work=some s2Step248Add0During := by
  have len : s2Step248Add0Work.length=hmrHybridCount s2Step248Add0Arena s2Step248Add0B.length := by
    rw [hmrHybridCount,s2Step248Add0_card]
    decide +kernel
  have nd : s2Step248Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step248Add0Arena s2Step248Add0During s2Step248Add0Work.toFinset s2Step248Add0_bounded s2Step248Add0_apart rfl

private theorem s2Step248Add0_distinct : (792::810::800::(s2Step248Add0A++s2Step248Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step248Add0_owned : (792::810::800::(s2Step248Add0A++s2Step248Add0B)).toFinset⊆s2Step248Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step248Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248Add0_checked : compileHmrHybridCinLog s2Step248Add0Arena 810 792 800 s2Step248Add0A s2Step248Add0B s2Step248Add0Work=some s2Step248Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step248Add0Arena s2Step248Add0During 810 792 800 s2Step248Add0A s2Step248Add0B s2Step248Add0Work
    (by decide +kernel) (by decide +kernel) s2Step248Add0_distinct
    (fun q hq => s2Step248Add0_owned (List.mem_toFinset.mpr hq)) s2Step248Add0_borrowed

private theorem s2Step248Add1_apart : Disjoint s2Step248Add1Arena.live s2Step248Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step248Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248Add1_card : s2Step248Add1Arena.live.card=897 := by
  decide +kernel

private theorem s2Step248Add1_borrowed : s2Step248Add1Arena.checkBorrow (hmrHybridCount s2Step248Add1Arena s2Step248Add1B.length) s2Step248Add1Work=some s2Step248Add1During := by
  have len : s2Step248Add1Work.length=hmrHybridCount s2Step248Add1Arena s2Step248Add1B.length := by
    rw [hmrHybridCount,s2Step248Add1_card]
    decide +kernel
  have nd : s2Step248Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step248Add1Arena s2Step248Add1During s2Step248Add1Work.toFinset s2Step248Add1_bounded s2Step248Add1_apart rfl

private theorem s2Step248Add1_distinct : (792::810::800::(s2Step248Add1A++s2Step248Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step248Add1_owned : (792::810::800::(s2Step248Add1A++s2Step248Add1B)).toFinset⊆s2Step248Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step248Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248Add1_checked : compileHmrHybridCinLog s2Step248Add1Arena 810 792 800 s2Step248Add1A s2Step248Add1B s2Step248Add1Work=some s2Step248Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step248Add1Arena s2Step248Add1During 810 792 800 s2Step248Add1A s2Step248Add1B s2Step248Add1Work
    (by decide +kernel) (by decide +kernel) s2Step248Add1_distinct
    (fun q hq => s2Step248Add1_owned (List.mem_toFinset.mpr hq)) s2Step248Add1_borrowed

private theorem s2Step248F4_apart : Disjoint (s2Step248Add0A++s2Step248Add0B).toFinset (s2Step248Add1A++s2Step248Add1B).toFinset := by
  have nd : ((s2Step248Add0A++s2Step248Add0B)++(s2Step248Add1A++s2Step248Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step248F4_carry : s2Step248F4FlagArena.checkBorrow 1 [800]=some s2Step248Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step248F4FlagArena,s2Step248HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step248F4FlagArena,s2Step248HeadFvAfter,s2Step248Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step248F4_distinct : (814::810::792::800::((s2Step248Add0A++s2Step248Add1A)++(s2Step248Add0B++s2Step248Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step248F4_flag : s2Step248HeadFvAfter.checkBorrow 1 [792]=some s2Step248F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step248HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step248F4_owned : (814::810::((s2Step248Add0A++s2Step248Add1A)++(s2Step248Add0B++s2Step248Add1B))).toFinset⊆s2Step248HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step248HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248F4_checked : compileHmrHybridF4Log s2Step248HeadFvAfter 814 810 s2Step248Add0A s2Step248Add0B s2Step248Add1A s2Step248Add1B [792] [800] s2Step248Add0Work s2Step248Add1Work=some s2Step248F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step248HeadFvAfter s2Step248F4FlagArena s2Step248Add0Arena s2Step248Add0During s2Step248Add1During 814 810
    s2Step248Add0A s2Step248Add0B s2Step248Add1A s2Step248Add1B [792] [800] s2Step248Add0Work s2Step248Add1Work
    (fun q hq => s2Step248F4_owned (List.mem_toFinset.mpr hq)) s2Step248F4_flag s2Step248F4_carry
    s2Step248F4_distinct s2Step248F4_apart s2Step248Add0_checked s2Step248Add1_checked

private theorem s2Step248Front_branch : s2Step248FrontSigmaArena.checkBorrow 1 [810]=some s2Step248HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step248FrontSigmaArena,s2Step248EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step248FrontSigmaArena,s2Step248EntryGvAfter,s2Step248HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step248Front_entry : HmrFrontEntryValid s2Step248EntryFBefore s2Step248FrontBank 147 139 ⟨147,145,140,139⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step248FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step248EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step248EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step248FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step248Front_sigma : s2Step248EntryGvAfter.checkBorrow 1 [814]=some s2Step248FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step248EntryGvAfter,arenaWires]
  · rfl

private def s2Step248HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248HeadFBefore : Arena := s2Step248HeadGAfter

private def s2Step248HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩

private def s2Step248HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824],770⟩

private def s2Step248HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 809],769⟩

private def s2Step248HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799],771⟩

private theorem s2Step248HeadBank_incomingDistinct : ([s2Step248HeadGRow,s2Step248HeadFRow,s2Step248HeadGvRow,s2Step248HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step248HeadF_Incoming : rowsOwned s2Step248HeadFBefore [s2Step248HeadFRow,s2Step248HeadGvRow,s2Step248HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step248HeadGRow,s2Step248HeadFRow,s2Step248HeadGvRow,s2Step248HeadFvRow] 1 s2Step248HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step248HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step248HeadBank_outgoingOwned : rowsOwned s2Step248HeadFvAfter [s2Step248HeadGOut,s2Step248HeadFOut,s2Step248HeadGvOut,s2Step248HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step248HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step248HeadF_Outgoing : rowsOwned s2Step248HeadFvAfter [s2Step248HeadFOut,s2Step248HeadGvOut,s2Step248HeadFvOut] :=
  hmrRows_owned_drop s2Step248HeadFvAfter [s2Step248HeadGOut,s2Step248HeadFOut,s2Step248HeadGvOut,s2Step248HeadFvOut] 1 s2Step248HeadBank_outgoingOwned

private theorem s2Step248HeadF_distinct : (s2Step248HeadFRow.sign::s2Step248HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step248HeadF_owned : (s2Step248HeadFRow.sign::s2Step248HeadFRow.payload).toFinset⊆s2Step248HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step248HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248HeadF_reserved : s2Step248HeadFBefore.reserve s2Step248HeadFFresh.toFinset=some s2Step248HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step248HeadFFresh,arenaWires]
  · norm_num [s2Step248HeadFBefore,s2Step248HeadGAfter,s2Step248HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step248HeadFAfter,s2Step248HeadFBefore,s2Step248HeadGAfter,s2Step248HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step248HeadF_checked : planRowResizeLog s2Step248HeadFBefore s2Step248HeadFRow 148 s2Step248HeadFFresh=
    some (s2Step248HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 830],768⟩,growRow 768 s2Step248HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step248HeadFBefore s2Step248HeadFAfter s2Step248HeadFRow 148 s2Step248HeadFFresh
    s2Step248HeadF_distinct s2Step248HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step248HeadF_reserved
  have rowEq : WindowRow.mk (s2Step248HeadFRow.payload++s2Step248HeadFFresh) s2Step248HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 830],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step248HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step248HeadFvBefore : Arena := s2Step248HeadGvAfter

private theorem s2Step248HeadFv_Incoming : rowsOwned s2Step248HeadFvBefore [s2Step248HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step248HeadGRow,s2Step248HeadFRow,s2Step248HeadGvRow,s2Step248HeadFvRow] 3 s2Step248HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step248HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step248HeadFv_Outgoing : rowsOwned s2Step248HeadFvAfter [s2Step248HeadFvOut] :=
  hmrRows_owned_drop s2Step248HeadFvAfter [s2Step248HeadGOut,s2Step248HeadFOut,s2Step248HeadGvOut,s2Step248HeadFvOut] 3 s2Step248HeadBank_outgoingOwned

private theorem s2Step248HeadFv_distinct : (s2Step248HeadFvRow.sign::s2Step248HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step248HeadFv_owned : (s2Step248HeadFvRow.sign::s2Step248HeadFvRow.payload).toFinset⊆s2Step248HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step248HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248HeadFv_reserved : s2Step248HeadFvBefore.reserve s2Step248HeadFvFresh.toFinset=some s2Step248HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step248HeadFvFresh,arenaWires]
  · norm_num [s2Step248HeadFvBefore,s2Step248HeadGvAfter,s2Step248HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step248HeadFvAfter,s2Step248HeadFvBefore,s2Step248HeadGvAfter,s2Step248HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step248HeadFv_checked : planRowResizeLog s2Step248HeadFvBefore s2Step248HeadFvRow 140 s2Step248HeadFvFresh=
    some (s2Step248HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834],770⟩,growRow 770 s2Step248HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step248HeadFvBefore s2Step248HeadFvAfter s2Step248HeadFvRow 140 s2Step248HeadFvFresh
    s2Step248HeadFv_distinct s2Step248HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step248HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step248HeadFvRow.payload++s2Step248HeadFvFresh) s2Step248HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step248HeadG_Incoming : rowsOwned s2Step248HeadGBefore [s2Step248HeadGRow,s2Step248HeadFRow,s2Step248HeadGvRow,s2Step248HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step248HeadGRow,s2Step248HeadFRow,s2Step248HeadGvRow,s2Step248HeadFvRow] 0 s2Step248HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step248HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step248HeadG_Outgoing : rowsOwned s2Step248HeadFvAfter [s2Step248HeadGOut,s2Step248HeadFOut,s2Step248HeadGvOut,s2Step248HeadFvOut] :=
  hmrRows_owned_drop s2Step248HeadFvAfter [s2Step248HeadGOut,s2Step248HeadFOut,s2Step248HeadGvOut,s2Step248HeadFvOut] 0 s2Step248HeadBank_outgoingOwned

private theorem s2Step248HeadG_distinct : (s2Step248HeadGRow.sign::s2Step248HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step248HeadG_owned : (s2Step248HeadGRow.sign::s2Step248HeadGRow.payload).toFinset⊆s2Step248HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step248HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248HeadG_reserved : s2Step248HeadGBefore.reserve s2Step248HeadGFresh.toFinset=some s2Step248HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step248HeadGFresh,arenaWires]
  · norm_num [s2Step248HeadGBefore,s2Step248HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step248HeadGAfter,s2Step248HeadGBefore,s2Step248HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step248HeadG_checked : planRowResizeLog s2Step248HeadGBefore s2Step248HeadGRow 148 s2Step248HeadGFresh=
    some (s2Step248HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 809, 835],769⟩,growRow 769 s2Step248HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step248HeadGBefore s2Step248HeadGAfter s2Step248HeadGRow 148 s2Step248HeadGFresh
    s2Step248HeadG_distinct s2Step248HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step248HeadG_reserved
  have rowEq : WindowRow.mk (s2Step248HeadGRow.payload++s2Step248HeadGFresh) s2Step248HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 809, 835],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step248HeadGvBefore : Arena := s2Step248HeadFAfter

private theorem s2Step248HeadGv_Incoming : rowsOwned s2Step248HeadGvBefore [s2Step248HeadGvRow,s2Step248HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step248HeadGRow,s2Step248HeadFRow,s2Step248HeadGvRow,s2Step248HeadFvRow] 2 s2Step248HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step248HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step248HeadGv_Outgoing : rowsOwned s2Step248HeadFvAfter [s2Step248HeadGvOut,s2Step248HeadFvOut] :=
  hmrRows_owned_drop s2Step248HeadFvAfter [s2Step248HeadGOut,s2Step248HeadFOut,s2Step248HeadGvOut,s2Step248HeadFvOut] 2 s2Step248HeadBank_outgoingOwned

private theorem s2Step248HeadGv_distinct : (s2Step248HeadGvRow.sign::s2Step248HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step248HeadGv_owned : (s2Step248HeadGvRow.sign::s2Step248HeadGvRow.payload).toFinset⊆s2Step248HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step248HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step248HeadGv_reserved : s2Step248HeadGvBefore.reserve s2Step248HeadGvFresh.toFinset=some s2Step248HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step248HeadGvFresh,arenaWires]
  · norm_num [s2Step248HeadGvBefore,s2Step248HeadFAfter,s2Step248HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step248HeadGvAfter,s2Step248HeadGvBefore,s2Step248HeadFAfter,s2Step248HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step248HeadGv_checked : planRowResizeLog s2Step248HeadGvBefore s2Step248HeadGvRow 140 s2Step248HeadGvFresh=
    some (s2Step248HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 842],771⟩,growRow 771 s2Step248HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step248HeadGvBefore s2Step248HeadGvAfter s2Step248HeadGvRow 140 s2Step248HeadGvFresh
    s2Step248HeadGv_distinct s2Step248HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step248HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step248HeadGvRow.payload++s2Step248HeadGvFresh) s2Step248HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 842],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step248HeadBank_rows : planWindowRowsLog s2Step248HeadGBefore [(s2Step248HeadGRow,148),(s2Step248HeadFRow,148),(s2Step248HeadGvRow,140),(s2Step248HeadFvRow,140)] [s2Step248HeadGFresh,s2Step248HeadFFresh,s2Step248HeadGvFresh,s2Step248HeadFvFresh]=
    some (s2Step248HeadFvAfter,[s2Step248HeadGOut,s2Step248HeadFOut,s2Step248HeadGvOut,s2Step248HeadFvOut],(growRow 769 s2Step248HeadGFresh ++ (growRow 768 s2Step248HeadFFresh ++ (growRow 771 s2Step248HeadGvFresh ++ (growRow 770 s2Step248HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step248HeadFvAfter [] []=some (s2Step248HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step248HeadFvBefore s2Step248HeadFvAfter s2Step248HeadFvAfter
    s2Step248HeadFvRow s2Step248HeadFvOut 140 s2Step248HeadFvFresh [] [] []
    (growRow 770 s2Step248HeadFvFresh) ([]) s2Step248HeadFv_Incoming s2Step248HeadFv_checked h4 s2Step248HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step248HeadGvBefore s2Step248HeadGvAfter s2Step248HeadFvAfter
    s2Step248HeadGvRow s2Step248HeadGvOut 140 s2Step248HeadGvFresh [(s2Step248HeadFvRow,140)] [s2Step248HeadFvFresh] [s2Step248HeadFvOut]
    (growRow 771 s2Step248HeadGvFresh) ((growRow 770 s2Step248HeadFvFresh ++ [])) s2Step248HeadGv_Incoming s2Step248HeadGv_checked h3 s2Step248HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step248HeadFBefore s2Step248HeadFAfter s2Step248HeadFvAfter
    s2Step248HeadFRow s2Step248HeadFOut 148 s2Step248HeadFFresh [(s2Step248HeadGvRow,140),(s2Step248HeadFvRow,140)] [s2Step248HeadGvFresh,s2Step248HeadFvFresh] [s2Step248HeadGvOut,s2Step248HeadFvOut]
    (growRow 768 s2Step248HeadFFresh) ((growRow 771 s2Step248HeadGvFresh ++ (growRow 770 s2Step248HeadFvFresh ++ []))) s2Step248HeadF_Incoming s2Step248HeadF_checked h2 s2Step248HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step248HeadGBefore s2Step248HeadGAfter s2Step248HeadFvAfter
    s2Step248HeadGRow s2Step248HeadGOut 148 s2Step248HeadGFresh [(s2Step248HeadFRow,148),(s2Step248HeadGvRow,140),(s2Step248HeadFvRow,140)] [s2Step248HeadFFresh,s2Step248HeadGvFresh,s2Step248HeadFvFresh] [s2Step248HeadFOut,s2Step248HeadGvOut,s2Step248HeadFvOut]
    (growRow 769 s2Step248HeadGFresh) ((growRow 768 s2Step248HeadFFresh ++ (growRow 771 s2Step248HeadGvFresh ++ (growRow 770 s2Step248HeadFvFresh ++ [])))) s2Step248HeadG_Incoming s2Step248HeadG_checked h1 s2Step248HeadG_Outgoing
  exact h0

private theorem s2Step248HeadBank_checked : compileHmrBankResizeLog .headroom s2Step248HeadGBefore ⟨s2Step248HeadFRow,s2Step248HeadGRow,s2Step248HeadFvRow,s2Step248HeadGvRow⟩ ⟨148,148,140,140⟩ [s2Step248HeadGFresh,s2Step248HeadFFresh,s2Step248HeadGvFresh,s2Step248HeadFvFresh]=
    some (s2Step248HeadFvAfter,⟨s2Step248HeadFOut,s2Step248HeadGOut,s2Step248HeadFvOut,s2Step248HeadGvOut⟩,(growRow 769 s2Step248HeadGFresh ++ (growRow 768 s2Step248HeadFFresh ++ (growRow 771 s2Step248HeadGvFresh ++ (growRow 770 s2Step248HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step248HeadBank_rows]
  rfl

private theorem s2Step248Front_checked : compileHmrSourceFrontLog s2Step248EntryFBefore s2Step248FrontBank 147 139 ⟨147,145,140,139⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step248FrontLog=some s2Step248FrontPlan := by
  have pairEq : s2Step248FrontPair=⟨s2Step248HeadFRow,s2Step248HeadGRow,s2Step248HeadFvRow,s2Step248HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step248FrontHead=⟨s2Step248ExitFRow,s2Step248ExitGRow,s2Step248ExitFvRow,s2Step248ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step248Add0A=s2Step248FrontHead.f.wires := by decide +kernel
  have gEq : s2Step248Add0B=s2Step248FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step248Add1A=s2Step248FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step248Add1B=s2Step248FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step248EntryFBefore s2Step248FrontBank 147 139 ⟨147,145,140,139⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step248FrontLog s2Step248FrontPlan
  · exact s2Step248Front_entry
  · exact s2Step248EntryBank_checked
  · exact s2Step248Front_sigma
  · rfl
  · exact s2Step248Front_branch
  · rfl
  · simpa only [s2Step248FrontPlan,pairEq] using s2Step248HeadBank_checked
  · simpa only [s2Step248FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step248F4_checked
  · exact s2Step248Counter_checked
  · rfl
  · simpa only [s2Step248FrontPlan,headEq] using s2Step248ExitBank_checked

private theorem s2Step248Complete_explicit_checked : compileHmrEarlyStepLog s2Step248EntryFBefore s2Step248FrontBank 147 139 ⟨147,145,140,139⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step248CompleteLog=some s2Step248CompletePlan := by
  let Q := s2Step248EarlyControlPlan
  have hq := s2Step248EarlyControl_plan_checked
  have fv1 : s2Step248CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step248CompleteOut.fv.payload[2]?.getD s2Step248CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step248CompleteOut.fv.payload[3]?.getD s2Step248CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step248CompleteOut.fv.payload[4]?.getD s2Step248CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step248EntryFBefore s2Step248EarlyControlArena s2Step248FrontBank 147 139 ⟨147,145,140,139⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step248CompleteLog s2Step248FrontPlan Q
    s2Step248Front_checked s2Step248Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step248Complete_owned s2Step248Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step248EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 s2Step248CompleteOut.fv.second (s2Step248CompleteOut.fv.payload[2]?.getD s2Step248CompleteOut.fv.sign) (s2Step248CompleteOut.fv.payload[3]?.getD s2Step248CompleteOut.fv.sign) (s2Step248CompleteOut.fv.payload[4]?.getD s2Step248CompleteOut.fv.sign) 810 51 s2Step248EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep248Arena : Arena := s2Step248EntryFBefore
def s2PrivateStep248Bank : WindowBank := s2Step248FrontBank
def s2PrivateStep248Spec : HmrSourceWalkStepLog := ⟨147,139,⟨147,145,140,139⟩,51,.early s2Step248CompleteLog⟩
def s2PrivateStep248Plan : HmrSourceStepPlan := .early s2Step248CompletePlan
theorem s2PrivateStep248_source : s2PrivateStep248Spec=s2ObservedLogs240[8] := rfl
theorem s2PrivateStep248_checked : compileHmrSourceStepLog s2PrivateStep248Arena s2PrivateStep248Bank
    s2PrivateStep248Spec.fgWidth s2PrivateStep248Spec.vWidth s2PrivateStep248Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]
    6 498 248 s2PrivateStep248Spec.need none s2PrivateStep248Spec.log=some s2PrivateStep248Plan := by
  change compileHmrSourceStepLog s2Step248EntryFBefore s2Step248FrontBank 147 139 ⟨147,145,140,139⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 6 498 248 51 none (.early s2Step248CompleteLog)=some (.early s2Step248CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 248<498)]
  rw [s2Step248Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
