import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep245
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

private def s2Step247CompleteMoves : List (Wire × Wire) := []

private def s2Step247EarlyControlLog : HmrEarlyControlLog := ⟨[814, 810, 835, 830, 842],[834],[792],[800, 885, 891, 894, 896, 901],[]⟩

private def s2Step247FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [835], [], [802]],[[830], [810], [814], [824]],[[], [], [], []]⟩,[799],[809],[842],[834],[792, 800, 885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[792, 800, 885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[842, 834, 792, 800]⟩

private def s2Step247CompleteLog : HmrEarlyStepLog := ⟨s2Step247FrontLog,s2Step247CompleteMoves,s2Step247EarlyControlLog⟩

private def s2Step247ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩

private def s2Step247ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824],770⟩

private def s2Step247ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145],769⟩

private def s2Step247ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802],771⟩

private def s2Step247FrontOut : WindowBank := ⟨s2Step247ExitFOut,s2Step247ExitGOut,s2Step247ExitFvOut,s2Step247ExitGvOut⟩

private def s2Step247CompleteOut : WindowBank := s2Step247FrontOut.repacked s2Step247CompleteMoves

private def s2Step247EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step247EarlyControlPositiveArena,[834],s2Step247EarlyControlEqualityArena,[792],⟨⟨799,false⟩,[⟨⟨834,false⟩,792⟩]⟩⟩

private def s2Step247EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<902)),Finset.filter_subset _ _⟩

private def s2Step247EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<902)),Finset.filter_subset _ _⟩

private def s2Step247EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,814⟩,⟨⟨774,false⟩,810⟩,⟨⟨775,false⟩,835⟩,⟨⟨776,false⟩,830⟩,⟨⟨777,false⟩,842⟩]⟩

private def s2Step247EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step247EarlyControlZeroArena,s2Step247EarlyControlZeroPlan,s2Step247EarlyControlClassPlan,s2Step247EarlyControlFlagArena,s2Step247EarlyControlFittedArena,s2Step247EarlyControlHistoryArena,s2Step247EarlyControlSigmaArena,s2Step247EarlyControlOutputArena,s2Step247EarlyControlLog⟩

private def s2Step247CounterWork : List Wire := [842, 834, 792, 800]

private theorem s2Step247Counter_bounded : s2Step247CounterWork.toFinset⊆arenaWires := by norm_num [s2Step247CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step247HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247CounterDuring : Arena := ⟨s2Step247HeadFvAfter.live∪s2Step247CounterWork.toFinset,Finset.union_subset s2Step247HeadFvAfter.bounded s2Step247Counter_bounded⟩

private def s2Step247EntryFFresh : List Wire := []

private def s2Step247EntryFvFresh : List Wire := []

private def s2Step247EntryGFresh : List Wire := [835]

private def s2Step247EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247EntryGvFresh : List Wire := [802]

private def s2Step247ExitFExtra : List Wire := [810]

private def s2Step247ExitGExtra : List Wire := [835, 830]

private def s2Step247ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247ExitGvExtra : List Wire := [814]

private def s2Step247Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247Add0Work : List Wire := [792, 800, 885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step247Add0_bounded : s2Step247Add0Work.toFinset⊆arenaWires := by
  have h : s2Step247Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step247Add0During : Arena := ⟨s2Step247Add0Arena.live∪s2Step247Add0Work.toFinset,Finset.union_subset s2Step247Add0Arena.bounded s2Step247Add0_bounded⟩

private def s2Step247Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247Add1Work : List Wire := [792, 800, 885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step247Add1_bounded : s2Step247Add1Work.toFinset⊆arenaWires := by
  have h : s2Step247Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step247Add1During : Arena := ⟨s2Step247Add1Arena.live∪s2Step247Add1Work.toFinset,Finset.union_subset s2Step247Add1Arena.bounded s2Step247Add1_bounded⟩

private def s2Step247F4FlagArena : Arena := ⟨s2Step247HeadFvAfter.live∪{842},Finset.union_subset s2Step247HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step247F4Plan : HmrHybridF4Plan := ⟨s2Step247F4FlagArena,[842],s2Step247Add0Arena,[834],s2Step247Add0During,s2Step247Add0Work,s2Step247Add1During,s2Step247Add1Work⟩

private def s2Step247HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 810],768⟩

private def s2Step247HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824],770⟩

private def s2Step247HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 835, 830],769⟩

private def s2Step247HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 814],771⟩

private def s2Step247FrontHead : WindowBank := ⟨s2Step247HeadFOut,s2Step247HeadGOut,s2Step247HeadFvOut,s2Step247HeadGvOut⟩

private def s2Step247EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩

private def s2Step247EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831],770⟩

private def s2Step247EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 835],769⟩

private def s2Step247EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802],771⟩

private def s2Step247FrontPair : WindowBank := ⟨s2Step247EntryFOut,s2Step247EntryGOut,s2Step247EntryFvOut,s2Step247EntryGvOut⟩

private def s2Step247FrontSigmaArena : Arena := ⟨s2Step247EntryGvAfter.live∪{799},Finset.union_subset s2Step247EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step247HeadFFresh : List Wire := [810]

private def s2Step247HeadFvFresh : List Wire := [824]

private def s2Step247HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247HeadGFresh : List Wire := [830]

private def s2Step247HeadGvFresh : List Wire := [814]

private def s2Step247FrontPlan : HmrSourceFront := ⟨s2Step247EntryGvAfter,s2Step247FrontPair,(growRow 768 s2Step247EntryFFresh ++ (growRow 769 s2Step247EntryGFresh ++ (growRow 770 s2Step247EntryFvFresh ++ (growRow 771 s2Step247EntryGvFresh ++ [])))),s2Step247FrontSigmaArena,[799],s2Step247HeadGBefore,[809],
  s2Step247HeadFvAfter,s2Step247FrontHead,(growRow 769 s2Step247HeadGFresh ++ (growRow 768 s2Step247HeadFFresh ++ (growRow 771 s2Step247HeadGvFresh ++ (growRow 770 s2Step247HeadFvFresh ++ [])))),s2Step247F4Plan,s2Step247CounterDuring,s2Step247CounterWork,s2Step247ExitGvAfter,s2Step247FrontOut,(shrinkRow 769 s2Step247ExitGExtra ++ (shrinkRow 768 s2Step247ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step247ExitGvExtra ++ []))))⟩

private def s2Step247CompletePlan : HmrEarlyStepPlan := ⟨s2Step247FrontPlan,s2Step247EarlyControlArena,s2Step247EarlyControlPlan,s2Step247CompleteMoves⟩

private theorem s2Step247Complete_apart : List.Disjoint (s2Step247CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [799, 809, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := by
  have nd : ((s2Step247CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[799, 809, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step247Complete_owned : (s2Step247CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step247EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step247EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247Complete_repack : s2Step247ExitGvAfter.checkRepack s2Step247CompleteMoves=some s2Step247EarlyControlArena := by rfl

private theorem s2Step247EarlyControl_branchOwned : ([809] : List Wire).toFinset⊆s2Step247EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step247EarlyControlSigmaArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247EarlyControl_branch : compileHmrBranchRetirement s2Step247EarlyControlSigmaArena 809=some s2Step247EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step247EarlyControl_branchOwned
  · ext q
    simp [s2Step247EarlyControlOutputArena,s2Step247EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step247EarlyControl_classEqualityBorrow : s2Step247EarlyControlPositiveArena.checkBorrow (([799, 834] : List Wire).length-1) s2Step247EarlyControlLog.classWork=some s2Step247EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step247EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step247EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step247EarlyControlEqualityArena,s2Step247EarlyControlPositiveArena,s2Step247EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step247EarlyControl_classEqualityOwned : ([799, 834] : List Wire).toFinset⊆s2Step247EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step247EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247EarlyControl_classEquality : compileHmrEqualityLog s2Step247EarlyControlPositiveArena [799, 834] 0 s2Step247EarlyControlLog.classWork=some (s2Step247EarlyControlEqualityArena,s2Step247EarlyControlLog.classWork,s2Step247EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step247EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step247EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step247EarlyControl_classOwned : ([777, 842, 799] : List Wire).toFinset⊆s2Step247EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step247EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247EarlyControl_positiveBorrow : s2Step247EarlyControlZeroArena.checkBorrow (1) s2Step247EarlyControlLog.positiveWork=some s2Step247EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step247EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step247EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step247EarlyControlPositiveArena,s2Step247EarlyControlZeroArena,s2Step247EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step247EarlyControl_class : compileHmrSourceClassLog s2Step247EarlyControlZeroArena false 777 s2Step247EarlyControlZeroPlan.top 0 799 s2Step247EarlyControlLog.positiveWork s2Step247EarlyControlLog.classWork=some s2Step247EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step247EarlyControlClassPlan s2Step247EarlyControlZeroArena false 777 s2Step247EarlyControlZeroPlan.top 0 799
  constructor
  · decide +kernel
  · exact s2Step247EarlyControl_classOwned
  · exact s2Step247EarlyControl_positiveBorrow
  · exact s2Step247EarlyControl_classEquality

private theorem s2Step247EarlyControl_entryRecordOwned : ([809, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step247EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step247EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247EarlyControl_entrySigmaOwned : ([799, 254] : List Wire).toFinset⊆s2Step247EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step247EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247EarlyControl_fitBorrow : s2Step247EarlyControlFlagArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step247EarlyControlLog.recordFresh=some s2Step247EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step247EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step247EarlyControlFlagArena (fun q => (0≤q ∧ q<902)) rfl
      decide +kernel
    · ext q
      simp [s2Step247EarlyControlFittedArena,s2Step247EarlyControlFlagArena,s2Step247EarlyControlLog,arenaWires]

private theorem s2Step247EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step247EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step247EarlyControlFlagArena (fun q => (0≤q ∧ q<902)) rfl
  decide +kernel

private theorem s2Step247EarlyControl_fit : compileHmrRecordGrowLog s2Step247EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step247EarlyControlLog.recordFresh=some s2Step247EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step247EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step247EarlyControl_fitBorrow

private theorem s2Step247EarlyControl_flagsBorrow : s2Step247EarlyControlEqualityArena.checkBorrow (6) s2Step247EarlyControlLog.flagWork=some s2Step247EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step247EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step247EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step247EarlyControlFlagArena,s2Step247EarlyControlEqualityArena,s2Step247EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step247EarlyControl_flagsOwned : ([792, 253, 252, 251] : List Wire).toFinset⊆s2Step247EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step247EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247EarlyControl_flags : compileHmrFlagsLog s2Step247EarlyControlClassPlan.equalityArena s2Step247EarlyControlClassPlan.equality.top 253 252 251 s2Step247EarlyControlLog.flagWork=some s2Step247EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step247EarlyControl_flagsOwned⟩
  · exact s2Step247EarlyControl_flagsBorrow

private theorem s2Step247EarlyControl_historyBorrow : s2Step247EarlyControlArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step247EarlyControlLog.recordFresh=some s2Step247EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step247EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step247EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step247EarlyControlHistoryArena,s2Step247EarlyControlArena,s2Step247EarlyControlLog,arenaWires]

private theorem s2Step247EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step247EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step247EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247EarlyControl_history : compileHmrRecordGrowLog s2Step247EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step247EarlyControlLog.recordFresh=some s2Step247EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step247EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step247EarlyControl_historyBorrow

private theorem s2Step247EarlyControl_sigmaOwned : ([254, 799] : List Wire).toFinset⊆s2Step247EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step247EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247EarlyControl_sigmaReleaseOwned : ([799] : List Wire).toFinset⊆s2Step247EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step247EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247EarlyControl_sigmaRelease : s2Step247EarlyControlHistoryArena.release {799} (fun _ => false)=some s2Step247EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step247EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step247EarlyControlSigmaArena,s2Step247EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step247EarlyControl_sigma : compileHmrSigmaDropLog s2Step247EarlyControlHistoryArena false 0 0 254 799 []=some s2Step247EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step247EarlyControl_sigmaOwned⟩
  · exact s2Step247EarlyControl_sigmaRelease

private theorem s2Step247EarlyControl_zeroBorrow : s2Step247EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step247EarlyControlLog.zeroWork=some s2Step247EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step247EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step247EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step247EarlyControlZeroArena,s2Step247EarlyControlArena,s2Step247EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step247EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step247EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step247EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247EarlyControl_zero : compileHmrEqualityLog s2Step247EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step247EarlyControlLog.zeroWork=some (s2Step247EarlyControlZeroArena,s2Step247EarlyControlLog.zeroWork,s2Step247EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step247EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step247EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step247EarlyControl_logged : s2Step247EarlyControlPlan.Logged s2Step247EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 799 254 253 252 251 809 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step247EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step247EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step247EarlyControl_zero
  · exact s2Step247EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step247EarlyControl_flags
  · exact s2Step247EarlyControl_fit
  · exact s2Step247EarlyControl_history
  · exact s2Step247EarlyControl_sigma
  · exact s2Step247EarlyControl_branch

private theorem s2Step247EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step247EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 799 254 253 252 251 809 51 s2Step247EarlyControlLog=some s2Step247EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step247EarlyControlPlan s2Step247EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 799 254 253 252 251 809 51 s2Step247EarlyControl_logged

private def s2Step247EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩

private def s2Step247EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831],770⟩

private def s2Step247EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145],769⟩

private def s2Step247EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819],771⟩

private def s2Step247FrontBank : WindowBank := ⟨s2Step247EntryFRow,s2Step247EntryGRow,s2Step247EntryFvRow,s2Step247EntryGvRow⟩

private def s2Step247Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 810, 768]

private def s2Step247Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 835, 830, 769]

private def s2Step247Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 770]

private def s2Step247Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 814, 771]

private theorem s2Step247Counter_apart : Disjoint s2Step247HeadFvAfter.live s2Step247CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step247HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247Counter_borrowed : s2Step247HeadFvAfter.checkBorrow 4 s2Step247CounterWork=some s2Step247CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step247HeadFvAfter s2Step247CounterDuring s2Step247CounterWork.toFinset s2Step247Counter_bounded s2Step247Counter_apart rfl

private theorem s2Step247Counter_owned : (799::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step247HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step247HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247Counter_checked : compileHmrCounterStepLog s2Step247HeadFvAfter true 799 [772, 773, 774, 775, 776, 777] s2Step247CounterWork=some s2Step247CounterDuring := by
  have owned : ∀q∈799::[772, 773, 774, 775, 776, 777],q∈s2Step247HeadFvAfter.live := fun q hq => s2Step247Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step247Counter_borrowed

private def s2Step247EntryFAfter : Arena := s2Step247EntryFBefore

private theorem s2Step247EntryBank_incomingDistinct : ([s2Step247EntryFRow,s2Step247EntryGRow,s2Step247EntryFvRow,s2Step247EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step247EntryF_Incoming : rowsOwned s2Step247EntryFBefore [s2Step247EntryFRow,s2Step247EntryGRow,s2Step247EntryFvRow,s2Step247EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step247EntryFRow,s2Step247EntryGRow,s2Step247EntryFvRow,s2Step247EntryGvRow] 0 s2Step247EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step247EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step247EntryBank_outgoingOwned : rowsOwned s2Step247EntryGvAfter [s2Step247EntryFOut,s2Step247EntryGOut,s2Step247EntryFvOut,s2Step247EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step247EntryGvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step247EntryF_Outgoing : rowsOwned s2Step247EntryGvAfter [s2Step247EntryFOut,s2Step247EntryGOut,s2Step247EntryFvOut,s2Step247EntryGvOut] :=
  hmrRows_owned_drop s2Step247EntryGvAfter [s2Step247EntryFOut,s2Step247EntryGOut,s2Step247EntryFvOut,s2Step247EntryGvOut] 0 s2Step247EntryBank_outgoingOwned

private theorem s2Step247EntryF_distinct : (s2Step247EntryFRow.sign::s2Step247EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step247EntryF_owned : (s2Step247EntryFRow.sign::s2Step247EntryFRow.payload).toFinset⊆s2Step247EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step247EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247EntryF_reserved : s2Step247EntryFBefore.reserve s2Step247EntryFFresh.toFinset=some s2Step247EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step247EntryFFresh,arenaWires]
  · norm_num [s2Step247EntryFBefore,s2Step247EntryFFresh,arenaWires]
  · simp only [s2Step247EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step247EntryF_checked : planRowResizeLog s2Step247EntryFBefore s2Step247EntryFRow 147 s2Step247EntryFFresh=
    some (s2Step247EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩,growRow 768 s2Step247EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step247EntryFBefore s2Step247EntryFAfter s2Step247EntryFRow 147 s2Step247EntryFFresh
    s2Step247EntryF_distinct s2Step247EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step247EntryF_reserved
  have rowEq : WindowRow.mk (s2Step247EntryFRow.payload++s2Step247EntryFFresh) s2Step247EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step247EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247EntryFvAfter : Arena := s2Step247EntryGAfter

private def s2Step247EntryFvBefore : Arena := s2Step247EntryGAfter

private theorem s2Step247EntryFv_Incoming : rowsOwned s2Step247EntryFvBefore [s2Step247EntryFvRow,s2Step247EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step247EntryFRow,s2Step247EntryGRow,s2Step247EntryFvRow,s2Step247EntryGvRow] 2 s2Step247EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step247EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step247EntryFv_Outgoing : rowsOwned s2Step247EntryGvAfter [s2Step247EntryFvOut,s2Step247EntryGvOut] :=
  hmrRows_owned_drop s2Step247EntryGvAfter [s2Step247EntryFOut,s2Step247EntryGOut,s2Step247EntryFvOut,s2Step247EntryGvOut] 2 s2Step247EntryBank_outgoingOwned

private theorem s2Step247EntryFv_distinct : (s2Step247EntryFvRow.sign::s2Step247EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step247EntryFv_owned : (s2Step247EntryFvRow.sign::s2Step247EntryFvRow.payload).toFinset⊆s2Step247EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step247EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247EntryFv_reserved : s2Step247EntryFvBefore.reserve s2Step247EntryFvFresh.toFinset=some s2Step247EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step247EntryFvFresh,arenaWires]
  · norm_num [s2Step247EntryFvBefore,s2Step247EntryGAfter,s2Step247EntryFvFresh,arenaWires]
  · simp only [s2Step247EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step247EntryFv_checked : planRowResizeLog s2Step247EntryFvBefore s2Step247EntryFvRow 138 s2Step247EntryFvFresh=
    some (s2Step247EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831],770⟩,growRow 770 s2Step247EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step247EntryFvBefore s2Step247EntryFvAfter s2Step247EntryFvRow 138 s2Step247EntryFvFresh
    s2Step247EntryFv_distinct s2Step247EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step247EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step247EntryFvRow.payload++s2Step247EntryFvFresh) s2Step247EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step247EntryGBefore : Arena := s2Step247EntryFBefore

private theorem s2Step247EntryG_Incoming : rowsOwned s2Step247EntryGBefore [s2Step247EntryGRow,s2Step247EntryFvRow,s2Step247EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step247EntryFRow,s2Step247EntryGRow,s2Step247EntryFvRow,s2Step247EntryGvRow] 1 s2Step247EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step247EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step247EntryG_Outgoing : rowsOwned s2Step247EntryGvAfter [s2Step247EntryGOut,s2Step247EntryFvOut,s2Step247EntryGvOut] :=
  hmrRows_owned_drop s2Step247EntryGvAfter [s2Step247EntryFOut,s2Step247EntryGOut,s2Step247EntryFvOut,s2Step247EntryGvOut] 1 s2Step247EntryBank_outgoingOwned

private theorem s2Step247EntryG_distinct : (s2Step247EntryGRow.sign::s2Step247EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step247EntryG_owned : (s2Step247EntryGRow.sign::s2Step247EntryGRow.payload).toFinset⊆s2Step247EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step247EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247EntryG_reserved : s2Step247EntryGBefore.reserve s2Step247EntryGFresh.toFinset=some s2Step247EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step247EntryGFresh,arenaWires]
  · norm_num [s2Step247EntryGBefore,s2Step247EntryFBefore,s2Step247EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step247EntryGAfter,s2Step247EntryGBefore,s2Step247EntryFBefore,s2Step247EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step247EntryG_checked : planRowResizeLog s2Step247EntryGBefore s2Step247EntryGRow 147 s2Step247EntryGFresh=
    some (s2Step247EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 835],769⟩,growRow 769 s2Step247EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step247EntryGBefore s2Step247EntryGAfter s2Step247EntryGRow 147 s2Step247EntryGFresh
    s2Step247EntryG_distinct s2Step247EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step247EntryG_reserved
  have rowEq : WindowRow.mk (s2Step247EntryGRow.payload++s2Step247EntryGFresh) s2Step247EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 835],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step247EntryGvBefore : Arena := s2Step247EntryGAfter

private theorem s2Step247EntryGv_Incoming : rowsOwned s2Step247EntryGvBefore [s2Step247EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step247EntryFRow,s2Step247EntryGRow,s2Step247EntryFvRow,s2Step247EntryGvRow] 3 s2Step247EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step247EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step247EntryGv_Outgoing : rowsOwned s2Step247EntryGvAfter [s2Step247EntryGvOut] :=
  hmrRows_owned_drop s2Step247EntryGvAfter [s2Step247EntryFOut,s2Step247EntryGOut,s2Step247EntryFvOut,s2Step247EntryGvOut] 3 s2Step247EntryBank_outgoingOwned

private theorem s2Step247EntryGv_distinct : (s2Step247EntryGvRow.sign::s2Step247EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step247EntryGv_owned : (s2Step247EntryGvRow.sign::s2Step247EntryGvRow.payload).toFinset⊆s2Step247EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step247EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247EntryGv_reserved : s2Step247EntryGvBefore.reserve s2Step247EntryGvFresh.toFinset=some s2Step247EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step247EntryGvFresh,arenaWires]
  · norm_num [s2Step247EntryGvBefore,s2Step247EntryGAfter,s2Step247EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step247EntryGvAfter,s2Step247EntryGvBefore,s2Step247EntryGAfter,s2Step247EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step247EntryGv_checked : planRowResizeLog s2Step247EntryGvBefore s2Step247EntryGvRow 138 s2Step247EntryGvFresh=
    some (s2Step247EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802],771⟩,growRow 771 s2Step247EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step247EntryGvBefore s2Step247EntryGvAfter s2Step247EntryGvRow 138 s2Step247EntryGvFresh
    s2Step247EntryGv_distinct s2Step247EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step247EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step247EntryGvRow.payload++s2Step247EntryGvFresh) s2Step247EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step247EntryBank_rows : planWindowRowsLog s2Step247EntryFBefore [(s2Step247EntryFRow,147),(s2Step247EntryGRow,147),(s2Step247EntryFvRow,138),(s2Step247EntryGvRow,138)] [s2Step247EntryFFresh,s2Step247EntryGFresh,s2Step247EntryFvFresh,s2Step247EntryGvFresh]=
    some (s2Step247EntryGvAfter,[s2Step247EntryFOut,s2Step247EntryGOut,s2Step247EntryFvOut,s2Step247EntryGvOut],(growRow 768 s2Step247EntryFFresh ++ (growRow 769 s2Step247EntryGFresh ++ (growRow 770 s2Step247EntryFvFresh ++ (growRow 771 s2Step247EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step247EntryGvAfter [] []=some (s2Step247EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step247EntryGvBefore s2Step247EntryGvAfter s2Step247EntryGvAfter
    s2Step247EntryGvRow s2Step247EntryGvOut 138 s2Step247EntryGvFresh [] [] []
    (growRow 771 s2Step247EntryGvFresh) ([]) s2Step247EntryGv_Incoming s2Step247EntryGv_checked h4 s2Step247EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step247EntryFvBefore s2Step247EntryFvAfter s2Step247EntryGvAfter
    s2Step247EntryFvRow s2Step247EntryFvOut 138 s2Step247EntryFvFresh [(s2Step247EntryGvRow,138)] [s2Step247EntryGvFresh] [s2Step247EntryGvOut]
    (growRow 770 s2Step247EntryFvFresh) ((growRow 771 s2Step247EntryGvFresh ++ [])) s2Step247EntryFv_Incoming s2Step247EntryFv_checked h3 s2Step247EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step247EntryGBefore s2Step247EntryGAfter s2Step247EntryGvAfter
    s2Step247EntryGRow s2Step247EntryGOut 147 s2Step247EntryGFresh [(s2Step247EntryFvRow,138),(s2Step247EntryGvRow,138)] [s2Step247EntryFvFresh,s2Step247EntryGvFresh] [s2Step247EntryFvOut,s2Step247EntryGvOut]
    (growRow 769 s2Step247EntryGFresh) ((growRow 770 s2Step247EntryFvFresh ++ (growRow 771 s2Step247EntryGvFresh ++ []))) s2Step247EntryG_Incoming s2Step247EntryG_checked h2 s2Step247EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step247EntryFBefore s2Step247EntryFAfter s2Step247EntryGvAfter
    s2Step247EntryFRow s2Step247EntryFOut 147 s2Step247EntryFFresh [(s2Step247EntryGRow,147),(s2Step247EntryFvRow,138),(s2Step247EntryGvRow,138)] [s2Step247EntryGFresh,s2Step247EntryFvFresh,s2Step247EntryGvFresh] [s2Step247EntryGOut,s2Step247EntryFvOut,s2Step247EntryGvOut]
    (growRow 768 s2Step247EntryFFresh) ((growRow 769 s2Step247EntryGFresh ++ (growRow 770 s2Step247EntryFvFresh ++ (growRow 771 s2Step247EntryGvFresh ++ [])))) s2Step247EntryF_Incoming s2Step247EntryF_checked h1 s2Step247EntryF_Outgoing
  exact h0

private theorem s2Step247EntryBank_checked : compileHmrBankResizeLog .entry s2Step247EntryFBefore ⟨s2Step247EntryFRow,s2Step247EntryGRow,s2Step247EntryFvRow,s2Step247EntryGvRow⟩ ⟨147,147,138,138⟩ [s2Step247EntryFFresh,s2Step247EntryGFresh,s2Step247EntryFvFresh,s2Step247EntryGvFresh]=
    some (s2Step247EntryGvAfter,⟨s2Step247EntryFOut,s2Step247EntryGOut,s2Step247EntryFvOut,s2Step247EntryGvOut⟩,(growRow 768 s2Step247EntryFFresh ++ (growRow 769 s2Step247EntryGFresh ++ (growRow 770 s2Step247EntryFvFresh ++ (growRow 771 s2Step247EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step247EntryBank_rows]
  rfl

private def s2Step247ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247ExitFBefore : Arena := s2Step247ExitGAfter

private def s2Step247ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 810],768⟩

private def s2Step247ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824],770⟩

private def s2Step247ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 835, 830],769⟩

private def s2Step247ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 814],771⟩

private theorem s2Step247ExitBank_incomingDistinct : ([s2Step247ExitGRow,s2Step247ExitFRow,s2Step247ExitFvRow,s2Step247ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step247ExitF_Incoming : rowsOwned s2Step247ExitFBefore [s2Step247ExitFRow,s2Step247ExitFvRow,s2Step247ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step247ExitGRow,s2Step247ExitFRow,s2Step247ExitFvRow,s2Step247ExitGvRow] 1 s2Step247ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step247ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step247ExitBank_outgoingOwned : rowsOwned s2Step247ExitGvAfter [s2Step247ExitGOut,s2Step247ExitFOut,s2Step247ExitFvOut,s2Step247ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step247ExitGvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step247ExitF_Outgoing : rowsOwned s2Step247ExitGvAfter [s2Step247ExitFOut,s2Step247ExitFvOut,s2Step247ExitGvOut] :=
  hmrRows_owned_drop s2Step247ExitGvAfter [s2Step247ExitGOut,s2Step247ExitFOut,s2Step247ExitFvOut,s2Step247ExitGvOut] 1 s2Step247ExitBank_outgoingOwned

private theorem s2Step247ExitF_distinct : (s2Step247ExitFRow.sign::s2Step247ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step247ExitF_owned : (s2Step247ExitFRow.sign::s2Step247ExitFRow.payload).toFinset⊆s2Step247ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step247ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247ExitF_retired : s2Step247ExitFBefore.retireSet s2Step247ExitFExtra.toFinset=s2Step247ExitFAfter := by
  unfold Arena.retireSet s2Step247ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step247ExitFBefore,s2Step247ExitGAfter,s2Step247ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step247ExitF_checked : planRowResizeLog s2Step247ExitFBefore s2Step247ExitFRow 147 []=
    some (s2Step247ExitFAfter,s2Step247ExitFOut,shrinkRow 768 s2Step247ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step247ExitFBefore s2Step247ExitFRow 147 s2Step247ExitF_distinct s2Step247ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step247ExitFRow.payload.take 147) s2Step247ExitFRow.sign=s2Step247ExitFOut := by decide +kernel
  have hi : s2Step247ExitFRow.payload.drop 147=s2Step247ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step247ExitF_retired] at result
  exact result

private def s2Step247ExitFvAfter : Arena := s2Step247ExitFAfter

private def s2Step247ExitFvBefore : Arena := s2Step247ExitFAfter

private theorem s2Step247ExitFv_Incoming : rowsOwned s2Step247ExitFvBefore [s2Step247ExitFvRow,s2Step247ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step247ExitGRow,s2Step247ExitFRow,s2Step247ExitFvRow,s2Step247ExitGvRow] 2 s2Step247ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step247ExitFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step247ExitFv_Outgoing : rowsOwned s2Step247ExitGvAfter [s2Step247ExitFvOut,s2Step247ExitGvOut] :=
  hmrRows_owned_drop s2Step247ExitGvAfter [s2Step247ExitGOut,s2Step247ExitFOut,s2Step247ExitFvOut,s2Step247ExitGvOut] 2 s2Step247ExitBank_outgoingOwned

private theorem s2Step247ExitFv_distinct : (s2Step247ExitFvRow.sign::s2Step247ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step247ExitFv_owned : (s2Step247ExitFvRow.sign::s2Step247ExitFvRow.payload).toFinset⊆s2Step247ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step247ExitFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247ExitFv_reserved : s2Step247ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step247ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step247ExitFv_checked : planRowResizeLog s2Step247ExitFvBefore s2Step247ExitFvRow 139 []=
    some (s2Step247ExitFvAfter,s2Step247ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step247ExitFvBefore s2Step247ExitFvAfter s2Step247ExitFvRow 139 []
    s2Step247ExitFv_distinct s2Step247ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step247ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step247ExitFvRow.payload++[]) s2Step247ExitFvRow.sign=s2Step247ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step247ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private theorem s2Step247ExitG_Incoming : rowsOwned s2Step247ExitGBefore [s2Step247ExitGRow,s2Step247ExitFRow,s2Step247ExitFvRow,s2Step247ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step247ExitGRow,s2Step247ExitFRow,s2Step247ExitFvRow,s2Step247ExitGvRow] 0 s2Step247ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step247ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step247ExitG_Outgoing : rowsOwned s2Step247ExitGvAfter [s2Step247ExitGOut,s2Step247ExitFOut,s2Step247ExitFvOut,s2Step247ExitGvOut] :=
  hmrRows_owned_drop s2Step247ExitGvAfter [s2Step247ExitGOut,s2Step247ExitFOut,s2Step247ExitFvOut,s2Step247ExitGvOut] 0 s2Step247ExitBank_outgoingOwned

private theorem s2Step247ExitG_distinct : (s2Step247ExitGRow.sign::s2Step247ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step247ExitG_owned : (s2Step247ExitGRow.sign::s2Step247ExitGRow.payload).toFinset⊆s2Step247ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step247ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247ExitG_retired : s2Step247ExitGBefore.retireSet s2Step247ExitGExtra.toFinset=s2Step247ExitGAfter := by
  unfold Arena.retireSet s2Step247ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step247ExitGBefore,s2Step247ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step247ExitG_checked : planRowResizeLog s2Step247ExitGBefore s2Step247ExitGRow 146 []=
    some (s2Step247ExitGAfter,s2Step247ExitGOut,shrinkRow 769 s2Step247ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step247ExitGBefore s2Step247ExitGRow 146 s2Step247ExitG_distinct s2Step247ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step247ExitGRow.payload.take 146) s2Step247ExitGRow.sign=s2Step247ExitGOut := by decide +kernel
  have hi : s2Step247ExitGRow.payload.drop 146=s2Step247ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step247ExitG_retired] at result
  exact result

private def s2Step247ExitGvBefore : Arena := s2Step247ExitFAfter

private theorem s2Step247ExitGv_Incoming : rowsOwned s2Step247ExitGvBefore [s2Step247ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step247ExitGRow,s2Step247ExitFRow,s2Step247ExitFvRow,s2Step247ExitGvRow] 3 s2Step247ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step247ExitGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step247ExitGv_Outgoing : rowsOwned s2Step247ExitGvAfter [s2Step247ExitGvOut] :=
  hmrRows_owned_drop s2Step247ExitGvAfter [s2Step247ExitGOut,s2Step247ExitFOut,s2Step247ExitFvOut,s2Step247ExitGvOut] 3 s2Step247ExitBank_outgoingOwned

private theorem s2Step247ExitGv_distinct : (s2Step247ExitGvRow.sign::s2Step247ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step247ExitGv_owned : (s2Step247ExitGvRow.sign::s2Step247ExitGvRow.payload).toFinset⊆s2Step247ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step247ExitGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247ExitGv_retired : s2Step247ExitGvBefore.retireSet s2Step247ExitGvExtra.toFinset=s2Step247ExitGvAfter := by
  unfold Arena.retireSet s2Step247ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step247ExitGvBefore,s2Step247ExitFAfter,s2Step247ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step247ExitGv_checked : planRowResizeLog s2Step247ExitGvBefore s2Step247ExitGvRow 138 []=
    some (s2Step247ExitGvAfter,s2Step247ExitGvOut,shrinkRow 771 s2Step247ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step247ExitGvBefore s2Step247ExitGvRow 138 s2Step247ExitGv_distinct s2Step247ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step247ExitGvRow.payload.take 138) s2Step247ExitGvRow.sign=s2Step247ExitGvOut := by decide +kernel
  have hi : s2Step247ExitGvRow.payload.drop 138=s2Step247ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step247ExitGv_retired] at result
  exact result

private theorem s2Step247ExitBank_rows : planWindowRowsLog s2Step247ExitGBefore [(s2Step247ExitGRow,146),(s2Step247ExitFRow,147),(s2Step247ExitFvRow,139),(s2Step247ExitGvRow,138)] [[],[],[],[]]=
    some (s2Step247ExitGvAfter,[s2Step247ExitGOut,s2Step247ExitFOut,s2Step247ExitFvOut,s2Step247ExitGvOut],(shrinkRow 769 s2Step247ExitGExtra ++ (shrinkRow 768 s2Step247ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step247ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step247ExitGvAfter [] []=some (s2Step247ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step247ExitGvBefore s2Step247ExitGvAfter s2Step247ExitGvAfter
    s2Step247ExitGvRow s2Step247ExitGvOut 138 [] [] [] []
    (shrinkRow 771 s2Step247ExitGvExtra) ([]) s2Step247ExitGv_Incoming s2Step247ExitGv_checked h4 s2Step247ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step247ExitFvBefore s2Step247ExitFvAfter s2Step247ExitGvAfter
    s2Step247ExitFvRow s2Step247ExitFvOut 139 [] [(s2Step247ExitGvRow,138)] [[]] [s2Step247ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step247ExitGvExtra ++ [])) s2Step247ExitFv_Incoming s2Step247ExitFv_checked h3 s2Step247ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step247ExitFBefore s2Step247ExitFAfter s2Step247ExitGvAfter
    s2Step247ExitFRow s2Step247ExitFOut 147 [] [(s2Step247ExitFvRow,139),(s2Step247ExitGvRow,138)] [[],[]] [s2Step247ExitFvOut,s2Step247ExitGvOut]
    (shrinkRow 768 s2Step247ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step247ExitGvExtra ++ []))) s2Step247ExitF_Incoming s2Step247ExitF_checked h2 s2Step247ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step247ExitGBefore s2Step247ExitGAfter s2Step247ExitGvAfter
    s2Step247ExitGRow s2Step247ExitGOut 146 [] [(s2Step247ExitFRow,147),(s2Step247ExitFvRow,139),(s2Step247ExitGvRow,138)] [[],[],[]] [s2Step247ExitFOut,s2Step247ExitFvOut,s2Step247ExitGvOut]
    (shrinkRow 769 s2Step247ExitGExtra) ((shrinkRow 768 s2Step247ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step247ExitGvExtra ++ [])))) s2Step247ExitG_Incoming s2Step247ExitG_checked h1 s2Step247ExitG_Outgoing
  exact h0

private theorem s2Step247ExitBank_checked : compileHmrBankResizeLog .exit s2Step247ExitGBefore ⟨s2Step247ExitFRow,s2Step247ExitGRow,s2Step247ExitFvRow,s2Step247ExitGvRow⟩ ⟨147,146,139,138⟩ [[],[],[],[]]=
    some (s2Step247ExitGvAfter,⟨s2Step247ExitFOut,s2Step247ExitGOut,s2Step247ExitFvOut,s2Step247ExitGvOut⟩,(shrinkRow 769 s2Step247ExitGExtra ++ (shrinkRow 768 s2Step247ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step247ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step247ExitBank_rows]
  rfl

private theorem s2Step247Add0_apart : Disjoint s2Step247Add0Arena.live s2Step247Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step247Add0Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247Add0_card : s2Step247Add0Arena.live.card=895 := by
  decide +kernel

private theorem s2Step247Add0_borrowed : s2Step247Add0Arena.checkBorrow (hmrHybridCount s2Step247Add0Arena s2Step247Add0B.length) s2Step247Add0Work=some s2Step247Add0During := by
  have len : s2Step247Add0Work.length=hmrHybridCount s2Step247Add0Arena s2Step247Add0B.length := by
    rw [hmrHybridCount,s2Step247Add0_card]
    decide +kernel
  have nd : s2Step247Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step247Add0Arena s2Step247Add0During s2Step247Add0Work.toFinset s2Step247Add0_bounded s2Step247Add0_apart rfl

private theorem s2Step247Add0_distinct : (842::809::834::(s2Step247Add0A++s2Step247Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step247Add0_owned : (842::809::834::(s2Step247Add0A++s2Step247Add0B)).toFinset⊆s2Step247Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step247Add0Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247Add0_checked : compileHmrHybridCinLog s2Step247Add0Arena 809 842 834 s2Step247Add0A s2Step247Add0B s2Step247Add0Work=some s2Step247Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step247Add0Arena s2Step247Add0During 809 842 834 s2Step247Add0A s2Step247Add0B s2Step247Add0Work
    (by decide +kernel) (by decide +kernel) s2Step247Add0_distinct
    (fun q hq => s2Step247Add0_owned (List.mem_toFinset.mpr hq)) s2Step247Add0_borrowed

private theorem s2Step247Add1_apart : Disjoint s2Step247Add1Arena.live s2Step247Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step247Add1Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247Add1_card : s2Step247Add1Arena.live.card=895 := by
  decide +kernel

private theorem s2Step247Add1_borrowed : s2Step247Add1Arena.checkBorrow (hmrHybridCount s2Step247Add1Arena s2Step247Add1B.length) s2Step247Add1Work=some s2Step247Add1During := by
  have len : s2Step247Add1Work.length=hmrHybridCount s2Step247Add1Arena s2Step247Add1B.length := by
    rw [hmrHybridCount,s2Step247Add1_card]
    decide +kernel
  have nd : s2Step247Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step247Add1Arena s2Step247Add1During s2Step247Add1Work.toFinset s2Step247Add1_bounded s2Step247Add1_apart rfl

private theorem s2Step247Add1_distinct : (842::809::834::(s2Step247Add1A++s2Step247Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step247Add1_owned : (842::809::834::(s2Step247Add1A++s2Step247Add1B)).toFinset⊆s2Step247Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step247Add1Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247Add1_checked : compileHmrHybridCinLog s2Step247Add1Arena 809 842 834 s2Step247Add1A s2Step247Add1B s2Step247Add1Work=some s2Step247Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step247Add1Arena s2Step247Add1During 809 842 834 s2Step247Add1A s2Step247Add1B s2Step247Add1Work
    (by decide +kernel) (by decide +kernel) s2Step247Add1_distinct
    (fun q hq => s2Step247Add1_owned (List.mem_toFinset.mpr hq)) s2Step247Add1_borrowed

private theorem s2Step247F4_apart : Disjoint (s2Step247Add0A++s2Step247Add0B).toFinset (s2Step247Add1A++s2Step247Add1B).toFinset := by
  have nd : ((s2Step247Add0A++s2Step247Add0B)++(s2Step247Add1A++s2Step247Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step247F4_carry : s2Step247F4FlagArena.checkBorrow 1 [834]=some s2Step247Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step247F4FlagArena,s2Step247HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step247F4FlagArena,s2Step247HeadFvAfter,s2Step247Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step247F4_distinct : (799::809::842::834::((s2Step247Add0A++s2Step247Add1A)++(s2Step247Add0B++s2Step247Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step247F4_flag : s2Step247HeadFvAfter.checkBorrow 1 [842]=some s2Step247F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step247HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step247F4_owned : (799::809::((s2Step247Add0A++s2Step247Add1A)++(s2Step247Add0B++s2Step247Add1B))).toFinset⊆s2Step247HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step247HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247F4_checked : compileHmrHybridF4Log s2Step247HeadFvAfter 799 809 s2Step247Add0A s2Step247Add0B s2Step247Add1A s2Step247Add1B [842] [834] s2Step247Add0Work s2Step247Add1Work=some s2Step247F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step247HeadFvAfter s2Step247F4FlagArena s2Step247Add0Arena s2Step247Add0During s2Step247Add1During 799 809
    s2Step247Add0A s2Step247Add0B s2Step247Add1A s2Step247Add1B [842] [834] s2Step247Add0Work s2Step247Add1Work
    (fun q hq => s2Step247F4_owned (List.mem_toFinset.mpr hq)) s2Step247F4_flag s2Step247F4_carry
    s2Step247F4_distinct s2Step247F4_apart s2Step247Add0_checked s2Step247Add1_checked

private theorem s2Step247Front_branch : s2Step247FrontSigmaArena.checkBorrow 1 [809]=some s2Step247HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step247FrontSigmaArena,s2Step247EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step247FrontSigmaArena,s2Step247EntryGvAfter,s2Step247HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step247Front_entry : HmrFrontEntryValid s2Step247EntryFBefore s2Step247FrontBank 147 138 ⟨147,146,139,138⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step247FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step247EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step247EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step247FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step247Front_sigma : s2Step247EntryGvAfter.checkBorrow 1 [799]=some s2Step247FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step247EntryGvAfter,arenaWires]
  · rfl

private def s2Step247HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247HeadFBefore : Arena := s2Step247HeadGAfter

private def s2Step247HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩

private def s2Step247HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831],770⟩

private def s2Step247HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 835],769⟩

private def s2Step247HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802],771⟩

private theorem s2Step247HeadBank_incomingDistinct : ([s2Step247HeadGRow,s2Step247HeadFRow,s2Step247HeadGvRow,s2Step247HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step247HeadF_Incoming : rowsOwned s2Step247HeadFBefore [s2Step247HeadFRow,s2Step247HeadGvRow,s2Step247HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step247HeadGRow,s2Step247HeadFRow,s2Step247HeadGvRow,s2Step247HeadFvRow] 1 s2Step247HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step247HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step247HeadBank_outgoingOwned : rowsOwned s2Step247HeadFvAfter [s2Step247HeadGOut,s2Step247HeadFOut,s2Step247HeadGvOut,s2Step247HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step247HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step247HeadF_Outgoing : rowsOwned s2Step247HeadFvAfter [s2Step247HeadFOut,s2Step247HeadGvOut,s2Step247HeadFvOut] :=
  hmrRows_owned_drop s2Step247HeadFvAfter [s2Step247HeadGOut,s2Step247HeadFOut,s2Step247HeadGvOut,s2Step247HeadFvOut] 1 s2Step247HeadBank_outgoingOwned

private theorem s2Step247HeadF_distinct : (s2Step247HeadFRow.sign::s2Step247HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step247HeadF_owned : (s2Step247HeadFRow.sign::s2Step247HeadFRow.payload).toFinset⊆s2Step247HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step247HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247HeadF_reserved : s2Step247HeadFBefore.reserve s2Step247HeadFFresh.toFinset=some s2Step247HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step247HeadFFresh,arenaWires]
  · norm_num [s2Step247HeadFBefore,s2Step247HeadGAfter,s2Step247HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step247HeadFAfter,s2Step247HeadFBefore,s2Step247HeadGAfter,s2Step247HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step247HeadF_checked : planRowResizeLog s2Step247HeadFBefore s2Step247HeadFRow 148 s2Step247HeadFFresh=
    some (s2Step247HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 810],768⟩,growRow 768 s2Step247HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step247HeadFBefore s2Step247HeadFAfter s2Step247HeadFRow 148 s2Step247HeadFFresh
    s2Step247HeadF_distinct s2Step247HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step247HeadF_reserved
  have rowEq : WindowRow.mk (s2Step247HeadFRow.payload++s2Step247HeadFFresh) s2Step247HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 810],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step247HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step247HeadFvBefore : Arena := s2Step247HeadGvAfter

private theorem s2Step247HeadFv_Incoming : rowsOwned s2Step247HeadFvBefore [s2Step247HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step247HeadGRow,s2Step247HeadFRow,s2Step247HeadGvRow,s2Step247HeadFvRow] 3 s2Step247HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step247HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step247HeadFv_Outgoing : rowsOwned s2Step247HeadFvAfter [s2Step247HeadFvOut] :=
  hmrRows_owned_drop s2Step247HeadFvAfter [s2Step247HeadGOut,s2Step247HeadFOut,s2Step247HeadGvOut,s2Step247HeadFvOut] 3 s2Step247HeadBank_outgoingOwned

private theorem s2Step247HeadFv_distinct : (s2Step247HeadFvRow.sign::s2Step247HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step247HeadFv_owned : (s2Step247HeadFvRow.sign::s2Step247HeadFvRow.payload).toFinset⊆s2Step247HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step247HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247HeadFv_reserved : s2Step247HeadFvBefore.reserve s2Step247HeadFvFresh.toFinset=some s2Step247HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step247HeadFvFresh,arenaWires]
  · norm_num [s2Step247HeadFvBefore,s2Step247HeadGvAfter,s2Step247HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step247HeadFvAfter,s2Step247HeadFvBefore,s2Step247HeadGvAfter,s2Step247HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step247HeadFv_checked : planRowResizeLog s2Step247HeadFvBefore s2Step247HeadFvRow 139 s2Step247HeadFvFresh=
    some (s2Step247HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824],770⟩,growRow 770 s2Step247HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step247HeadFvBefore s2Step247HeadFvAfter s2Step247HeadFvRow 139 s2Step247HeadFvFresh
    s2Step247HeadFv_distinct s2Step247HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step247HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step247HeadFvRow.payload++s2Step247HeadFvFresh) s2Step247HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step247HeadG_Incoming : rowsOwned s2Step247HeadGBefore [s2Step247HeadGRow,s2Step247HeadFRow,s2Step247HeadGvRow,s2Step247HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step247HeadGRow,s2Step247HeadFRow,s2Step247HeadGvRow,s2Step247HeadFvRow] 0 s2Step247HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step247HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step247HeadG_Outgoing : rowsOwned s2Step247HeadFvAfter [s2Step247HeadGOut,s2Step247HeadFOut,s2Step247HeadGvOut,s2Step247HeadFvOut] :=
  hmrRows_owned_drop s2Step247HeadFvAfter [s2Step247HeadGOut,s2Step247HeadFOut,s2Step247HeadGvOut,s2Step247HeadFvOut] 0 s2Step247HeadBank_outgoingOwned

private theorem s2Step247HeadG_distinct : (s2Step247HeadGRow.sign::s2Step247HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step247HeadG_owned : (s2Step247HeadGRow.sign::s2Step247HeadGRow.payload).toFinset⊆s2Step247HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step247HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247HeadG_reserved : s2Step247HeadGBefore.reserve s2Step247HeadGFresh.toFinset=some s2Step247HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step247HeadGFresh,arenaWires]
  · norm_num [s2Step247HeadGBefore,s2Step247HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step247HeadGAfter,s2Step247HeadGBefore,s2Step247HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step247HeadG_checked : planRowResizeLog s2Step247HeadGBefore s2Step247HeadGRow 148 s2Step247HeadGFresh=
    some (s2Step247HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 835, 830],769⟩,growRow 769 s2Step247HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step247HeadGBefore s2Step247HeadGAfter s2Step247HeadGRow 148 s2Step247HeadGFresh
    s2Step247HeadG_distinct s2Step247HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step247HeadG_reserved
  have rowEq : WindowRow.mk (s2Step247HeadGRow.payload++s2Step247HeadGFresh) s2Step247HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 835, 830],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step247HeadGvBefore : Arena := s2Step247HeadFAfter

private theorem s2Step247HeadGv_Incoming : rowsOwned s2Step247HeadGvBefore [s2Step247HeadGvRow,s2Step247HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step247HeadGRow,s2Step247HeadFRow,s2Step247HeadGvRow,s2Step247HeadFvRow] 2 s2Step247HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step247HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step247HeadGv_Outgoing : rowsOwned s2Step247HeadFvAfter [s2Step247HeadGvOut,s2Step247HeadFvOut] :=
  hmrRows_owned_drop s2Step247HeadFvAfter [s2Step247HeadGOut,s2Step247HeadFOut,s2Step247HeadGvOut,s2Step247HeadFvOut] 2 s2Step247HeadBank_outgoingOwned

private theorem s2Step247HeadGv_distinct : (s2Step247HeadGvRow.sign::s2Step247HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step247HeadGv_owned : (s2Step247HeadGvRow.sign::s2Step247HeadGvRow.payload).toFinset⊆s2Step247HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step247HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step247HeadGv_reserved : s2Step247HeadGvBefore.reserve s2Step247HeadGvFresh.toFinset=some s2Step247HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step247HeadGvFresh,arenaWires]
  · norm_num [s2Step247HeadGvBefore,s2Step247HeadFAfter,s2Step247HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step247HeadGvAfter,s2Step247HeadGvBefore,s2Step247HeadFAfter,s2Step247HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step247HeadGv_checked : planRowResizeLog s2Step247HeadGvBefore s2Step247HeadGvRow 139 s2Step247HeadGvFresh=
    some (s2Step247HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 814],771⟩,growRow 771 s2Step247HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step247HeadGvBefore s2Step247HeadGvAfter s2Step247HeadGvRow 139 s2Step247HeadGvFresh
    s2Step247HeadGv_distinct s2Step247HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step247HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step247HeadGvRow.payload++s2Step247HeadGvFresh) s2Step247HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 814],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step247HeadBank_rows : planWindowRowsLog s2Step247HeadGBefore [(s2Step247HeadGRow,148),(s2Step247HeadFRow,148),(s2Step247HeadGvRow,139),(s2Step247HeadFvRow,139)] [s2Step247HeadGFresh,s2Step247HeadFFresh,s2Step247HeadGvFresh,s2Step247HeadFvFresh]=
    some (s2Step247HeadFvAfter,[s2Step247HeadGOut,s2Step247HeadFOut,s2Step247HeadGvOut,s2Step247HeadFvOut],(growRow 769 s2Step247HeadGFresh ++ (growRow 768 s2Step247HeadFFresh ++ (growRow 771 s2Step247HeadGvFresh ++ (growRow 770 s2Step247HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step247HeadFvAfter [] []=some (s2Step247HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step247HeadFvBefore s2Step247HeadFvAfter s2Step247HeadFvAfter
    s2Step247HeadFvRow s2Step247HeadFvOut 139 s2Step247HeadFvFresh [] [] []
    (growRow 770 s2Step247HeadFvFresh) ([]) s2Step247HeadFv_Incoming s2Step247HeadFv_checked h4 s2Step247HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step247HeadGvBefore s2Step247HeadGvAfter s2Step247HeadFvAfter
    s2Step247HeadGvRow s2Step247HeadGvOut 139 s2Step247HeadGvFresh [(s2Step247HeadFvRow,139)] [s2Step247HeadFvFresh] [s2Step247HeadFvOut]
    (growRow 771 s2Step247HeadGvFresh) ((growRow 770 s2Step247HeadFvFresh ++ [])) s2Step247HeadGv_Incoming s2Step247HeadGv_checked h3 s2Step247HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step247HeadFBefore s2Step247HeadFAfter s2Step247HeadFvAfter
    s2Step247HeadFRow s2Step247HeadFOut 148 s2Step247HeadFFresh [(s2Step247HeadGvRow,139),(s2Step247HeadFvRow,139)] [s2Step247HeadGvFresh,s2Step247HeadFvFresh] [s2Step247HeadGvOut,s2Step247HeadFvOut]
    (growRow 768 s2Step247HeadFFresh) ((growRow 771 s2Step247HeadGvFresh ++ (growRow 770 s2Step247HeadFvFresh ++ []))) s2Step247HeadF_Incoming s2Step247HeadF_checked h2 s2Step247HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step247HeadGBefore s2Step247HeadGAfter s2Step247HeadFvAfter
    s2Step247HeadGRow s2Step247HeadGOut 148 s2Step247HeadGFresh [(s2Step247HeadFRow,148),(s2Step247HeadGvRow,139),(s2Step247HeadFvRow,139)] [s2Step247HeadFFresh,s2Step247HeadGvFresh,s2Step247HeadFvFresh] [s2Step247HeadFOut,s2Step247HeadGvOut,s2Step247HeadFvOut]
    (growRow 769 s2Step247HeadGFresh) ((growRow 768 s2Step247HeadFFresh ++ (growRow 771 s2Step247HeadGvFresh ++ (growRow 770 s2Step247HeadFvFresh ++ [])))) s2Step247HeadG_Incoming s2Step247HeadG_checked h1 s2Step247HeadG_Outgoing
  exact h0

private theorem s2Step247HeadBank_checked : compileHmrBankResizeLog .headroom s2Step247HeadGBefore ⟨s2Step247HeadFRow,s2Step247HeadGRow,s2Step247HeadFvRow,s2Step247HeadGvRow⟩ ⟨148,148,139,139⟩ [s2Step247HeadGFresh,s2Step247HeadFFresh,s2Step247HeadGvFresh,s2Step247HeadFvFresh]=
    some (s2Step247HeadFvAfter,⟨s2Step247HeadFOut,s2Step247HeadGOut,s2Step247HeadFvOut,s2Step247HeadGvOut⟩,(growRow 769 s2Step247HeadGFresh ++ (growRow 768 s2Step247HeadFFresh ++ (growRow 771 s2Step247HeadGvFresh ++ (growRow 770 s2Step247HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step247HeadBank_rows]
  rfl

private theorem s2Step247Front_checked : compileHmrSourceFrontLog s2Step247EntryFBefore s2Step247FrontBank 147 138 ⟨147,146,139,138⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step247FrontLog=some s2Step247FrontPlan := by
  have pairEq : s2Step247FrontPair=⟨s2Step247HeadFRow,s2Step247HeadGRow,s2Step247HeadFvRow,s2Step247HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step247FrontHead=⟨s2Step247ExitFRow,s2Step247ExitGRow,s2Step247ExitFvRow,s2Step247ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step247Add0A=s2Step247FrontHead.f.wires := by decide +kernel
  have gEq : s2Step247Add0B=s2Step247FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step247Add1A=s2Step247FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step247Add1B=s2Step247FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step247EntryFBefore s2Step247FrontBank 147 138 ⟨147,146,139,138⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step247FrontLog s2Step247FrontPlan
  · exact s2Step247Front_entry
  · exact s2Step247EntryBank_checked
  · exact s2Step247Front_sigma
  · rfl
  · exact s2Step247Front_branch
  · rfl
  · simpa only [s2Step247FrontPlan,pairEq] using s2Step247HeadBank_checked
  · simpa only [s2Step247FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step247F4_checked
  · exact s2Step247Counter_checked
  · rfl
  · simpa only [s2Step247FrontPlan,headEq] using s2Step247ExitBank_checked

private theorem s2Step247Complete_explicit_checked : compileHmrEarlyStepLog s2Step247EntryFBefore s2Step247FrontBank 147 138 ⟨147,146,139,138⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step247CompleteLog=some s2Step247CompletePlan := by
  let Q := s2Step247EarlyControlPlan
  have hq := s2Step247EarlyControl_plan_checked
  have fv1 : s2Step247CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step247CompleteOut.fv.payload[2]?.getD s2Step247CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step247CompleteOut.fv.payload[3]?.getD s2Step247CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step247CompleteOut.fv.payload[4]?.getD s2Step247CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step247EntryFBefore s2Step247EarlyControlArena s2Step247FrontBank 147 138 ⟨147,146,139,138⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step247CompleteLog s2Step247FrontPlan Q
    s2Step247Front_checked s2Step247Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step247Complete_owned s2Step247Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step247EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 799 s2Step247CompleteOut.fv.second (s2Step247CompleteOut.fv.payload[2]?.getD s2Step247CompleteOut.fv.sign) (s2Step247CompleteOut.fv.payload[3]?.getD s2Step247CompleteOut.fv.sign) (s2Step247CompleteOut.fv.payload[4]?.getD s2Step247CompleteOut.fv.sign) 809 51 s2Step247EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep247Arena : Arena := s2Step247EntryFBefore
def s2PrivateStep247Bank : WindowBank := s2Step247FrontBank
def s2PrivateStep247Spec : HmrSourceWalkStepLog := ⟨147,138,⟨147,146,139,138⟩,51,.early s2Step247CompleteLog⟩
def s2PrivateStep247Plan : HmrSourceStepPlan := .early s2Step247CompletePlan
theorem s2PrivateStep247_source : s2PrivateStep247Spec=s2ObservedLogs240[7] := rfl
theorem s2PrivateStep247_checked : compileHmrSourceStepLog s2PrivateStep247Arena s2PrivateStep247Bank
    s2PrivateStep247Spec.fgWidth s2PrivateStep247Spec.vWidth s2PrivateStep247Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]
    6 498 247 s2PrivateStep247Spec.need none s2PrivateStep247Spec.log=some s2PrivateStep247Plan := by
  change compileHmrSourceStepLog s2Step247EntryFBefore s2Step247FrontBank 147 138 ⟨147,146,139,138⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 6 498 247 51 none (.early s2Step247CompleteLog)=some (.early s2Step247CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 247<498)]
  rw [s2Step247Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
