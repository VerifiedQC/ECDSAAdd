import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep243
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

private def s2Step245CompleteMoves : List (Wire × Wire) := [(824,147),(835,659)]

private def s2Step245EarlyControlLog : HmrEarlyControlLog := ⟨[835, 824, 814, 830, 810],[842],[834],[792, 800, 885, 891, 894, 896],[]⟩

private def s2Step245FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[810], [830], [814], [831]],[[], [], [], []]⟩,[802],[809],[842],[834],[792, 800, 885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[792, 800, 885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[842, 834, 792, 800]⟩

private def s2Step245CompleteLog : HmrEarlyStepLog := ⟨s2Step245FrontLog,s2Step245CompleteMoves,s2Step245EarlyControlLog⟩

private def s2Step245ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩

private def s2Step245ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831],770⟩

private def s2Step245ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146],769⟩

private def s2Step245ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819],771⟩

private def s2Step245FrontOut : WindowBank := ⟨s2Step245ExitFOut,s2Step245ExitGOut,s2Step245ExitFvOut,s2Step245ExitGvOut⟩

private def s2Step245CompleteOut : WindowBank := s2Step245FrontOut.repacked s2Step245CompleteMoves

private def s2Step245EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step245EarlyControlPositiveArena,[842],s2Step245EarlyControlEqualityArena,[834],⟨⟨802,false⟩,[⟨⟨842,false⟩,834⟩]⟩⟩

private def s2Step245EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,835⟩,⟨⟨774,false⟩,824⟩,⟨⟨775,false⟩,814⟩,⟨⟨776,false⟩,830⟩,⟨⟨777,false⟩,810⟩]⟩

private def s2Step245EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step245EarlyControlZeroArena,s2Step245EarlyControlZeroPlan,s2Step245EarlyControlClassPlan,s2Step245EarlyControlFlagArena,s2Step245EarlyControlFittedArena,s2Step245EarlyControlHistoryArena,s2Step245EarlyControlSigmaArena,s2Step245EarlyControlOutputArena,s2Step245EarlyControlLog⟩

private def s2Step245CounterWork : List Wire := [842, 834, 792, 800]

private theorem s2Step245Counter_bounded : s2Step245CounterWork.toFinset⊆arenaWires := by norm_num [s2Step245CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step245HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245CounterDuring : Arena := ⟨s2Step245HeadFvAfter.live∪s2Step245CounterWork.toFinset,Finset.union_subset s2Step245HeadFvAfter.bounded s2Step245Counter_bounded⟩

private def s2Step245EntryFFresh : List Wire := []

private def s2Step245EntryFvFresh : List Wire := []

private def s2Step245EntryGFresh : List Wire := []

private def s2Step245EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245EntryGvAfter : Arena := s2Step245EntryFBefore

private def s2Step245EntryGvFresh : List Wire := []

private def s2Step245ExitFExtra : List Wire := [659, 830]

private def s2Step245ExitGExtra : List Wire := [147, 810]

private def s2Step245ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<659) ∨ (660≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245ExitGvExtra : List Wire := [814]

private def s2Step245Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245Add0Work : List Wire := [792, 800, 885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step245Add0_bounded : s2Step245Add0Work.toFinset⊆arenaWires := by
  have h : s2Step245Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step245Add0During : Arena := ⟨s2Step245Add0Arena.live∪s2Step245Add0Work.toFinset,Finset.union_subset s2Step245Add0Arena.bounded s2Step245Add0_bounded⟩

private def s2Step245Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245Add1Work : List Wire := [792, 800, 885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step245Add1_bounded : s2Step245Add1Work.toFinset⊆arenaWires := by
  have h : s2Step245Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step245Add1During : Arena := ⟨s2Step245Add1Arena.live∪s2Step245Add1Work.toFinset,Finset.union_subset s2Step245Add1Arena.bounded s2Step245Add1_bounded⟩

private def s2Step245F4FlagArena : Arena := ⟨s2Step245HeadFvAfter.live∪{842},Finset.union_subset s2Step245HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step245F4Plan : HmrHybridF4Plan := ⟨s2Step245F4FlagArena,[842],s2Step245Add0Arena,[834],s2Step245Add0During,s2Step245Add0Work,s2Step245Add1During,s2Step245Add1Work⟩

private def s2Step245HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 830],768⟩

private def s2Step245HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831],770⟩

private def s2Step245HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 810],769⟩

private def s2Step245HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 814],771⟩

private def s2Step245FrontHead : WindowBank := ⟨s2Step245HeadFOut,s2Step245HeadGOut,s2Step245HeadFvOut,s2Step245HeadGvOut⟩

private def s2Step245EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659],768⟩

private def s2Step245EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826],770⟩

private def s2Step245EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],769⟩

private def s2Step245EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819],771⟩

private def s2Step245FrontPair : WindowBank := ⟨s2Step245EntryFOut,s2Step245EntryGOut,s2Step245EntryFvOut,s2Step245EntryGvOut⟩

private def s2Step245FrontSigmaArena : Arena := ⟨s2Step245EntryGvAfter.live∪{802},Finset.union_subset s2Step245EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step245HeadFFresh : List Wire := [830]

private def s2Step245HeadFvFresh : List Wire := [831]

private def s2Step245HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245HeadGFresh : List Wire := [810]

private def s2Step245HeadGvFresh : List Wire := [814]

private def s2Step245FrontPlan : HmrSourceFront := ⟨s2Step245EntryGvAfter,s2Step245FrontPair,(growRow 768 s2Step245EntryFFresh ++ (growRow 769 s2Step245EntryGFresh ++ (growRow 770 s2Step245EntryFvFresh ++ (growRow 771 s2Step245EntryGvFresh ++ [])))),s2Step245FrontSigmaArena,[802],s2Step245HeadGBefore,[809],
  s2Step245HeadFvAfter,s2Step245FrontHead,(growRow 769 s2Step245HeadGFresh ++ (growRow 768 s2Step245HeadFFresh ++ (growRow 771 s2Step245HeadGvFresh ++ (growRow 770 s2Step245HeadFvFresh ++ [])))),s2Step245F4Plan,s2Step245CounterDuring,s2Step245CounterWork,s2Step245ExitGvAfter,s2Step245FrontOut,(shrinkRow 769 s2Step245ExitGExtra ++ (shrinkRow 768 s2Step245ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step245ExitGvExtra ++ []))))⟩

private def s2Step245CompletePlan : HmrEarlyStepPlan := ⟨s2Step245FrontPlan,s2Step245EarlyControlArena,s2Step245EarlyControlPlan,s2Step245CompleteMoves⟩

private theorem s2Step245Complete_apart : List.Disjoint (s2Step245CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [802, 809, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := by
  have nd : ((s2Step245CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[802, 809, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step245Complete_owned : (s2Step245CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step245EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step245EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private def s2Step245CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,659),(660,792),(793,800),(801,810),(811,814),(815,824),(825,830),(831,834),(835,842),(843,885),(886,891),(892,894),(895,896),(897,901)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step245CompleteRelocationMove0Borrowed : Arena := ⟨s2Step245ExitGvAfter.live∪{147},Finset.union_subset s2Step245ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step245CompleteRelocationMove1Borrowed : Arena := ⟨s2Step245CompleteRelocationMove0After.live∪{659},Finset.union_subset s2Step245CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step245CompleteRelocation_move0_owned : 824∈s2Step245ExitGvAfter.live := by norm_num [s2Step245ExitGvAfter,arenaWires]

private theorem s2Step245CompleteRelocation_move0_reserve : s2Step245ExitGvAfter.reserve {147}=some s2Step245CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step245ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step245CompleteRelocation_move0_retire : s2Step245CompleteRelocationMove0Borrowed.retireSet {824}=s2Step245CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step245CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step245CompleteRelocationMove0Borrowed,s2Step245ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step245CompleteRelocation_move1_owned : 835∈s2Step245CompleteRelocationMove0After.live := by norm_num [s2Step245CompleteRelocationMove0After,arenaWires]

private theorem s2Step245CompleteRelocation_move1_reserve : s2Step245CompleteRelocationMove0After.reserve {659}=some s2Step245CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step245CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step245CompleteRelocation_move1_retire : s2Step245CompleteRelocationMove1Borrowed.retireSet {835}=s2Step245EarlyControlArena := by
  unfold Arena.retireSet s2Step245EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step245CompleteRelocationMove1Borrowed,s2Step245CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step245CompleteRelocation_checked : s2Step245ExitGvAfter.checkRepack [(824,147),(835,659)]=some s2Step245EarlyControlArena := by
  have tail2 : s2Step245EarlyControlArena.checkRepack []=some s2Step245EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step245CompleteRelocationMove0After s2Step245CompleteRelocationMove1Borrowed s2Step245EarlyControlArena s2Step245EarlyControlArena 835 659 []
    s2Step245CompleteRelocation_move1_owned s2Step245CompleteRelocation_move1_reserve s2Step245CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step245ExitGvAfter s2Step245CompleteRelocationMove0Borrowed s2Step245CompleteRelocationMove0After s2Step245EarlyControlArena 824 147 [(835,659)]
    s2Step245CompleteRelocation_move0_owned s2Step245CompleteRelocation_move0_reserve s2Step245CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step245Complete_repack : s2Step245ExitGvAfter.checkRepack s2Step245CompleteMoves=some s2Step245EarlyControlArena := by
  simpa only [s2Step245CompleteMoves] using s2Step245CompleteRelocation_checked

private theorem s2Step245EarlyControl_branchOwned : ([809] : List Wire).toFinset⊆s2Step245EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step245EarlyControlSigmaArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245EarlyControl_branch : compileHmrBranchRetirement s2Step245EarlyControlSigmaArena 809=some s2Step245EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step245EarlyControl_branchOwned
  · ext q
    simp [s2Step245EarlyControlOutputArena,s2Step245EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step245EarlyControl_classEqualityBorrow : s2Step245EarlyControlPositiveArena.checkBorrow (([802, 842] : List Wire).length-1) s2Step245EarlyControlLog.classWork=some s2Step245EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step245EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step245EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step245EarlyControlEqualityArena,s2Step245EarlyControlPositiveArena,s2Step245EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step245EarlyControl_classEqualityOwned : ([802, 842] : List Wire).toFinset⊆s2Step245EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step245EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245EarlyControl_classEquality : compileHmrEqualityLog s2Step245EarlyControlPositiveArena [802, 842] 0 s2Step245EarlyControlLog.classWork=some (s2Step245EarlyControlEqualityArena,s2Step245EarlyControlLog.classWork,s2Step245EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step245EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step245EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step245EarlyControl_classOwned : ([777, 810, 802] : List Wire).toFinset⊆s2Step245EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step245EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245EarlyControl_positiveBorrow : s2Step245EarlyControlZeroArena.checkBorrow (1) s2Step245EarlyControlLog.positiveWork=some s2Step245EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step245EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step245EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step245EarlyControlPositiveArena,s2Step245EarlyControlZeroArena,s2Step245EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step245EarlyControl_class : compileHmrSourceClassLog s2Step245EarlyControlZeroArena false 777 s2Step245EarlyControlZeroPlan.top 0 802 s2Step245EarlyControlLog.positiveWork s2Step245EarlyControlLog.classWork=some s2Step245EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step245EarlyControlClassPlan s2Step245EarlyControlZeroArena false 777 s2Step245EarlyControlZeroPlan.top 0 802
  constructor
  · decide +kernel
  · exact s2Step245EarlyControl_classOwned
  · exact s2Step245EarlyControl_positiveBorrow
  · exact s2Step245EarlyControl_classEquality

private theorem s2Step245EarlyControl_entryRecordOwned : ([809, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step245EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step245EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245EarlyControl_entrySigmaOwned : ([802, 254] : List Wire).toFinset⊆s2Step245EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step245EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245EarlyControl_fitBorrow : s2Step245EarlyControlFlagArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step245EarlyControlLog.recordFresh=some s2Step245EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step245EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step245EarlyControlFlagArena (fun q => (0≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step245EarlyControlFittedArena,s2Step245EarlyControlFlagArena,s2Step245EarlyControlLog,arenaWires]

private theorem s2Step245EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step245EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step245EarlyControlFlagArena (fun q => (0≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245EarlyControl_fit : compileHmrRecordGrowLog s2Step245EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step245EarlyControlLog.recordFresh=some s2Step245EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step245EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step245EarlyControl_fitBorrow

private theorem s2Step245EarlyControl_flagsBorrow : s2Step245EarlyControlEqualityArena.checkBorrow (6) s2Step245EarlyControlLog.flagWork=some s2Step245EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step245EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step245EarlyControlEqualityArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step245EarlyControlFlagArena,s2Step245EarlyControlEqualityArena,s2Step245EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step245EarlyControl_flagsOwned : ([834, 253, 252, 251] : List Wire).toFinset⊆s2Step245EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step245EarlyControlEqualityArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245EarlyControl_flags : compileHmrFlagsLog s2Step245EarlyControlClassPlan.equalityArena s2Step245EarlyControlClassPlan.equality.top 253 252 251 s2Step245EarlyControlLog.flagWork=some s2Step245EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step245EarlyControl_flagsOwned⟩
  · exact s2Step245EarlyControl_flagsBorrow

private theorem s2Step245EarlyControl_historyBorrow : s2Step245EarlyControlArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step245EarlyControlLog.recordFresh=some s2Step245EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step245EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step245EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step245EarlyControlHistoryArena,s2Step245EarlyControlArena,s2Step245EarlyControlLog,arenaWires]

private theorem s2Step245EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step245EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step245EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245EarlyControl_history : compileHmrRecordGrowLog s2Step245EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step245EarlyControlLog.recordFresh=some s2Step245EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step245EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step245EarlyControl_historyBorrow

private theorem s2Step245EarlyControl_sigmaOwned : ([254, 802] : List Wire).toFinset⊆s2Step245EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step245EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245EarlyControl_sigmaReleaseOwned : ([802] : List Wire).toFinset⊆s2Step245EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step245EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245EarlyControl_sigmaRelease : s2Step245EarlyControlHistoryArena.release {802} (fun _ => false)=some s2Step245EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step245EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step245EarlyControlSigmaArena,s2Step245EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step245EarlyControl_sigma : compileHmrSigmaDropLog s2Step245EarlyControlHistoryArena false 0 0 254 802 []=some s2Step245EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step245EarlyControl_sigmaOwned⟩
  · exact s2Step245EarlyControl_sigmaRelease

private theorem s2Step245EarlyControl_zeroBorrow : s2Step245EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step245EarlyControlLog.zeroWork=some s2Step245EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step245EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step245EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step245EarlyControlZeroArena,s2Step245EarlyControlArena,s2Step245EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step245EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step245EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step245EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245EarlyControl_zero : compileHmrEqualityLog s2Step245EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step245EarlyControlLog.zeroWork=some (s2Step245EarlyControlZeroArena,s2Step245EarlyControlLog.zeroWork,s2Step245EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step245EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step245EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step245EarlyControl_logged : s2Step245EarlyControlPlan.Logged s2Step245EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 802 254 253 252 251 809 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step245EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step245EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step245EarlyControl_zero
  · exact s2Step245EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step245EarlyControl_flags
  · exact s2Step245EarlyControl_fit
  · exact s2Step245EarlyControl_history
  · exact s2Step245EarlyControl_sigma
  · exact s2Step245EarlyControl_branch

private theorem s2Step245EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step245EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 802 254 253 252 251 809 51 s2Step245EarlyControlLog=some s2Step245EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step245EarlyControlPlan s2Step245EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 802 254 253 252 251 809 51 s2Step245EarlyControl_logged

private def s2Step245EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659],768⟩

private def s2Step245EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826],770⟩

private def s2Step245EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],769⟩

private def s2Step245EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819],771⟩

private def s2Step245FrontBank : WindowBank := ⟨s2Step245EntryFRow,s2Step245EntryGRow,s2Step245EntryFvRow,s2Step245EntryGvRow⟩

private def s2Step245Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 830, 768]

private def s2Step245Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 810, 769]

private def s2Step245Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 770]

private def s2Step245Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 814, 771]

private theorem s2Step245Counter_apart : Disjoint s2Step245HeadFvAfter.live s2Step245CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step245HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245Counter_borrowed : s2Step245HeadFvAfter.checkBorrow 4 s2Step245CounterWork=some s2Step245CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step245HeadFvAfter s2Step245CounterDuring s2Step245CounterWork.toFinset s2Step245Counter_bounded s2Step245Counter_apart rfl

private theorem s2Step245Counter_owned : (802::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step245HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step245HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245Counter_checked : compileHmrCounterStepLog s2Step245HeadFvAfter true 802 [772, 773, 774, 775, 776, 777] s2Step245CounterWork=some s2Step245CounterDuring := by
  have owned : ∀q∈802::[772, 773, 774, 775, 776, 777],q∈s2Step245HeadFvAfter.live := fun q hq => s2Step245Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step245Counter_borrowed

private def s2Step245EntryFAfter : Arena := s2Step245EntryFBefore

private theorem s2Step245EntryBank_incomingDistinct : ([s2Step245EntryFRow,s2Step245EntryGRow,s2Step245EntryFvRow,s2Step245EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step245EntryF_Incoming : rowsOwned s2Step245EntryFBefore [s2Step245EntryFRow,s2Step245EntryGRow,s2Step245EntryFvRow,s2Step245EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step245EntryFRow,s2Step245EntryGRow,s2Step245EntryFvRow,s2Step245EntryGvRow] 0 s2Step245EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step245EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step245EntryBank_outgoingOwned : rowsOwned s2Step245EntryGvAfter [s2Step245EntryFOut,s2Step245EntryGOut,s2Step245EntryFvOut,s2Step245EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step245EntryGvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step245EntryF_Outgoing : rowsOwned s2Step245EntryGvAfter [s2Step245EntryFOut,s2Step245EntryGOut,s2Step245EntryFvOut,s2Step245EntryGvOut] :=
  hmrRows_owned_drop s2Step245EntryGvAfter [s2Step245EntryFOut,s2Step245EntryGOut,s2Step245EntryFvOut,s2Step245EntryGvOut] 0 s2Step245EntryBank_outgoingOwned

private theorem s2Step245EntryF_distinct : (s2Step245EntryFRow.sign::s2Step245EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step245EntryF_owned : (s2Step245EntryFRow.sign::s2Step245EntryFRow.payload).toFinset⊆s2Step245EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step245EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245EntryF_reserved : s2Step245EntryFBefore.reserve s2Step245EntryFFresh.toFinset=some s2Step245EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step245EntryFFresh,arenaWires]
  · norm_num [s2Step245EntryFBefore,s2Step245EntryFFresh,arenaWires]
  · simp only [s2Step245EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step245EntryF_checked : planRowResizeLog s2Step245EntryFBefore s2Step245EntryFRow 148 s2Step245EntryFFresh=
    some (s2Step245EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659],768⟩,growRow 768 s2Step245EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step245EntryFBefore s2Step245EntryFAfter s2Step245EntryFRow 148 s2Step245EntryFFresh
    s2Step245EntryF_distinct s2Step245EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step245EntryF_reserved
  have rowEq : WindowRow.mk (s2Step245EntryFRow.payload++s2Step245EntryFFresh) s2Step245EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step245EntryFvAfter : Arena := s2Step245EntryFBefore

private def s2Step245EntryFvBefore : Arena := s2Step245EntryFBefore

private theorem s2Step245EntryFv_Incoming : rowsOwned s2Step245EntryFvBefore [s2Step245EntryFvRow,s2Step245EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step245EntryFRow,s2Step245EntryGRow,s2Step245EntryFvRow,s2Step245EntryGvRow] 2 s2Step245EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step245EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step245EntryFv_Outgoing : rowsOwned s2Step245EntryGvAfter [s2Step245EntryFvOut,s2Step245EntryGvOut] :=
  hmrRows_owned_drop s2Step245EntryGvAfter [s2Step245EntryFOut,s2Step245EntryGOut,s2Step245EntryFvOut,s2Step245EntryGvOut] 2 s2Step245EntryBank_outgoingOwned

private theorem s2Step245EntryFv_distinct : (s2Step245EntryFvRow.sign::s2Step245EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step245EntryFv_owned : (s2Step245EntryFvRow.sign::s2Step245EntryFvRow.payload).toFinset⊆s2Step245EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step245EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245EntryFv_reserved : s2Step245EntryFvBefore.reserve s2Step245EntryFvFresh.toFinset=some s2Step245EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step245EntryFvFresh,arenaWires]
  · norm_num [s2Step245EntryFvBefore,s2Step245EntryFBefore,s2Step245EntryFvFresh,arenaWires]
  · simp only [s2Step245EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step245EntryFv_checked : planRowResizeLog s2Step245EntryFvBefore s2Step245EntryFvRow 137 s2Step245EntryFvFresh=
    some (s2Step245EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826],770⟩,growRow 770 s2Step245EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step245EntryFvBefore s2Step245EntryFvAfter s2Step245EntryFvRow 137 s2Step245EntryFvFresh
    s2Step245EntryFv_distinct s2Step245EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step245EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step245EntryFvRow.payload++s2Step245EntryFvFresh) s2Step245EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step245EntryGAfter : Arena := s2Step245EntryFBefore

private def s2Step245EntryGBefore : Arena := s2Step245EntryFBefore

private theorem s2Step245EntryG_Incoming : rowsOwned s2Step245EntryGBefore [s2Step245EntryGRow,s2Step245EntryFvRow,s2Step245EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step245EntryFRow,s2Step245EntryGRow,s2Step245EntryFvRow,s2Step245EntryGvRow] 1 s2Step245EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step245EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step245EntryG_Outgoing : rowsOwned s2Step245EntryGvAfter [s2Step245EntryGOut,s2Step245EntryFvOut,s2Step245EntryGvOut] :=
  hmrRows_owned_drop s2Step245EntryGvAfter [s2Step245EntryFOut,s2Step245EntryGOut,s2Step245EntryFvOut,s2Step245EntryGvOut] 1 s2Step245EntryBank_outgoingOwned

private theorem s2Step245EntryG_distinct : (s2Step245EntryGRow.sign::s2Step245EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step245EntryG_owned : (s2Step245EntryGRow.sign::s2Step245EntryGRow.payload).toFinset⊆s2Step245EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step245EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245EntryG_reserved : s2Step245EntryGBefore.reserve s2Step245EntryGFresh.toFinset=some s2Step245EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step245EntryGFresh,arenaWires]
  · norm_num [s2Step245EntryGBefore,s2Step245EntryFBefore,s2Step245EntryGFresh,arenaWires]
  · simp only [s2Step245EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step245EntryG_checked : planRowResizeLog s2Step245EntryGBefore s2Step245EntryGRow 148 s2Step245EntryGFresh=
    some (s2Step245EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],769⟩,growRow 769 s2Step245EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step245EntryGBefore s2Step245EntryGAfter s2Step245EntryGRow 148 s2Step245EntryGFresh
    s2Step245EntryG_distinct s2Step245EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step245EntryG_reserved
  have rowEq : WindowRow.mk (s2Step245EntryGRow.payload++s2Step245EntryGFresh) s2Step245EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step245EntryGvBefore : Arena := s2Step245EntryFBefore

private theorem s2Step245EntryGv_Incoming : rowsOwned s2Step245EntryGvBefore [s2Step245EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step245EntryFRow,s2Step245EntryGRow,s2Step245EntryFvRow,s2Step245EntryGvRow] 3 s2Step245EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step245EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step245EntryGv_Outgoing : rowsOwned s2Step245EntryGvAfter [s2Step245EntryGvOut] :=
  hmrRows_owned_drop s2Step245EntryGvAfter [s2Step245EntryFOut,s2Step245EntryGOut,s2Step245EntryFvOut,s2Step245EntryGvOut] 3 s2Step245EntryBank_outgoingOwned

private theorem s2Step245EntryGv_distinct : (s2Step245EntryGvRow.sign::s2Step245EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step245EntryGv_owned : (s2Step245EntryGvRow.sign::s2Step245EntryGvRow.payload).toFinset⊆s2Step245EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step245EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245EntryGv_reserved : s2Step245EntryGvBefore.reserve s2Step245EntryGvFresh.toFinset=some s2Step245EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step245EntryGvFresh,arenaWires]
  · norm_num [s2Step245EntryGvBefore,s2Step245EntryFBefore,s2Step245EntryGvFresh,arenaWires]
  · simp only [s2Step245EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step245EntryGv_checked : planRowResizeLog s2Step245EntryGvBefore s2Step245EntryGvRow 137 s2Step245EntryGvFresh=
    some (s2Step245EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819],771⟩,growRow 771 s2Step245EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step245EntryGvBefore s2Step245EntryGvAfter s2Step245EntryGvRow 137 s2Step245EntryGvFresh
    s2Step245EntryGv_distinct s2Step245EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step245EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step245EntryGvRow.payload++s2Step245EntryGvFresh) s2Step245EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step245EntryBank_rows : planWindowRowsLog s2Step245EntryFBefore [(s2Step245EntryFRow,148),(s2Step245EntryGRow,148),(s2Step245EntryFvRow,137),(s2Step245EntryGvRow,137)] [s2Step245EntryFFresh,s2Step245EntryGFresh,s2Step245EntryFvFresh,s2Step245EntryGvFresh]=
    some (s2Step245EntryGvAfter,[s2Step245EntryFOut,s2Step245EntryGOut,s2Step245EntryFvOut,s2Step245EntryGvOut],(growRow 768 s2Step245EntryFFresh ++ (growRow 769 s2Step245EntryGFresh ++ (growRow 770 s2Step245EntryFvFresh ++ (growRow 771 s2Step245EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step245EntryGvAfter [] []=some (s2Step245EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step245EntryGvBefore s2Step245EntryGvAfter s2Step245EntryGvAfter
    s2Step245EntryGvRow s2Step245EntryGvOut 137 s2Step245EntryGvFresh [] [] []
    (growRow 771 s2Step245EntryGvFresh) ([]) s2Step245EntryGv_Incoming s2Step245EntryGv_checked h4 s2Step245EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step245EntryFvBefore s2Step245EntryFvAfter s2Step245EntryGvAfter
    s2Step245EntryFvRow s2Step245EntryFvOut 137 s2Step245EntryFvFresh [(s2Step245EntryGvRow,137)] [s2Step245EntryGvFresh] [s2Step245EntryGvOut]
    (growRow 770 s2Step245EntryFvFresh) ((growRow 771 s2Step245EntryGvFresh ++ [])) s2Step245EntryFv_Incoming s2Step245EntryFv_checked h3 s2Step245EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step245EntryGBefore s2Step245EntryGAfter s2Step245EntryGvAfter
    s2Step245EntryGRow s2Step245EntryGOut 148 s2Step245EntryGFresh [(s2Step245EntryFvRow,137),(s2Step245EntryGvRow,137)] [s2Step245EntryFvFresh,s2Step245EntryGvFresh] [s2Step245EntryFvOut,s2Step245EntryGvOut]
    (growRow 769 s2Step245EntryGFresh) ((growRow 770 s2Step245EntryFvFresh ++ (growRow 771 s2Step245EntryGvFresh ++ []))) s2Step245EntryG_Incoming s2Step245EntryG_checked h2 s2Step245EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step245EntryFBefore s2Step245EntryFAfter s2Step245EntryGvAfter
    s2Step245EntryFRow s2Step245EntryFOut 148 s2Step245EntryFFresh [(s2Step245EntryGRow,148),(s2Step245EntryFvRow,137),(s2Step245EntryGvRow,137)] [s2Step245EntryGFresh,s2Step245EntryFvFresh,s2Step245EntryGvFresh] [s2Step245EntryGOut,s2Step245EntryFvOut,s2Step245EntryGvOut]
    (growRow 768 s2Step245EntryFFresh) ((growRow 769 s2Step245EntryGFresh ++ (growRow 770 s2Step245EntryFvFresh ++ (growRow 771 s2Step245EntryGvFresh ++ [])))) s2Step245EntryF_Incoming s2Step245EntryF_checked h1 s2Step245EntryF_Outgoing
  exact h0

private theorem s2Step245EntryBank_checked : compileHmrBankResizeLog .entry s2Step245EntryFBefore ⟨s2Step245EntryFRow,s2Step245EntryGRow,s2Step245EntryFvRow,s2Step245EntryGvRow⟩ ⟨148,148,137,137⟩ [s2Step245EntryFFresh,s2Step245EntryGFresh,s2Step245EntryFvFresh,s2Step245EntryGvFresh]=
    some (s2Step245EntryGvAfter,⟨s2Step245EntryFOut,s2Step245EntryGOut,s2Step245EntryFvOut,s2Step245EntryGvOut⟩,(growRow 768 s2Step245EntryFFresh ++ (growRow 769 s2Step245EntryGFresh ++ (growRow 770 s2Step245EntryFvFresh ++ (growRow 771 s2Step245EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step245EntryBank_rows]
  rfl

private def s2Step245ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<659) ∨ (660≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245ExitFBefore : Arena := s2Step245ExitGAfter

private def s2Step245ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 830],768⟩

private def s2Step245ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831],770⟩

private def s2Step245ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 810],769⟩

private def s2Step245ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 814],771⟩

private theorem s2Step245ExitBank_incomingDistinct : ([s2Step245ExitGRow,s2Step245ExitFRow,s2Step245ExitFvRow,s2Step245ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step245ExitF_Incoming : rowsOwned s2Step245ExitFBefore [s2Step245ExitFRow,s2Step245ExitFvRow,s2Step245ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step245ExitGRow,s2Step245ExitFRow,s2Step245ExitFvRow,s2Step245ExitGvRow] 1 s2Step245ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step245ExitFBefore (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step245ExitBank_outgoingOwned : rowsOwned s2Step245ExitGvAfter [s2Step245ExitGOut,s2Step245ExitFOut,s2Step245ExitFvOut,s2Step245ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step245ExitGvAfter (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<659) ∨ (660≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step245ExitF_Outgoing : rowsOwned s2Step245ExitGvAfter [s2Step245ExitFOut,s2Step245ExitFvOut,s2Step245ExitGvOut] :=
  hmrRows_owned_drop s2Step245ExitGvAfter [s2Step245ExitGOut,s2Step245ExitFOut,s2Step245ExitFvOut,s2Step245ExitGvOut] 1 s2Step245ExitBank_outgoingOwned

private theorem s2Step245ExitF_distinct : (s2Step245ExitFRow.sign::s2Step245ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step245ExitF_owned : (s2Step245ExitFRow.sign::s2Step245ExitFRow.payload).toFinset⊆s2Step245ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step245ExitFBefore (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245ExitF_retired : s2Step245ExitFBefore.retireSet s2Step245ExitFExtra.toFinset=s2Step245ExitFAfter := by
  unfold Arena.retireSet s2Step245ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step245ExitFBefore,s2Step245ExitGAfter,s2Step245ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step245ExitF_checked : planRowResizeLog s2Step245ExitFBefore s2Step245ExitFRow 147 []=
    some (s2Step245ExitFAfter,s2Step245ExitFOut,shrinkRow 768 s2Step245ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step245ExitFBefore s2Step245ExitFRow 147 s2Step245ExitF_distinct s2Step245ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step245ExitFRow.payload.take 147) s2Step245ExitFRow.sign=s2Step245ExitFOut := by decide +kernel
  have hi : s2Step245ExitFRow.payload.drop 147=s2Step245ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step245ExitF_retired] at result
  exact result

private def s2Step245ExitFvAfter : Arena := s2Step245ExitFAfter

private def s2Step245ExitFvBefore : Arena := s2Step245ExitFAfter

private theorem s2Step245ExitFv_Incoming : rowsOwned s2Step245ExitFvBefore [s2Step245ExitFvRow,s2Step245ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step245ExitGRow,s2Step245ExitFRow,s2Step245ExitFvRow,s2Step245ExitGvRow] 2 s2Step245ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step245ExitFvBefore (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<659) ∨ (660≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step245ExitFv_Outgoing : rowsOwned s2Step245ExitGvAfter [s2Step245ExitFvOut,s2Step245ExitGvOut] :=
  hmrRows_owned_drop s2Step245ExitGvAfter [s2Step245ExitGOut,s2Step245ExitFOut,s2Step245ExitFvOut,s2Step245ExitGvOut] 2 s2Step245ExitBank_outgoingOwned

private theorem s2Step245ExitFv_distinct : (s2Step245ExitFvRow.sign::s2Step245ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step245ExitFv_owned : (s2Step245ExitFvRow.sign::s2Step245ExitFvRow.payload).toFinset⊆s2Step245ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step245ExitFvBefore (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<659) ∨ (660≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245ExitFv_reserved : s2Step245ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step245ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step245ExitFv_checked : planRowResizeLog s2Step245ExitFvBefore s2Step245ExitFvRow 138 []=
    some (s2Step245ExitFvAfter,s2Step245ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step245ExitFvBefore s2Step245ExitFvAfter s2Step245ExitFvRow 138 []
    s2Step245ExitFv_distinct s2Step245ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step245ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step245ExitFvRow.payload++[]) s2Step245ExitFvRow.sign=s2Step245ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step245ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private theorem s2Step245ExitG_Incoming : rowsOwned s2Step245ExitGBefore [s2Step245ExitGRow,s2Step245ExitFRow,s2Step245ExitFvRow,s2Step245ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step245ExitGRow,s2Step245ExitFRow,s2Step245ExitFvRow,s2Step245ExitGvRow] 0 s2Step245ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step245ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step245ExitG_Outgoing : rowsOwned s2Step245ExitGvAfter [s2Step245ExitGOut,s2Step245ExitFOut,s2Step245ExitFvOut,s2Step245ExitGvOut] :=
  hmrRows_owned_drop s2Step245ExitGvAfter [s2Step245ExitGOut,s2Step245ExitFOut,s2Step245ExitFvOut,s2Step245ExitGvOut] 0 s2Step245ExitBank_outgoingOwned

private theorem s2Step245ExitG_distinct : (s2Step245ExitGRow.sign::s2Step245ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step245ExitG_owned : (s2Step245ExitGRow.sign::s2Step245ExitGRow.payload).toFinset⊆s2Step245ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step245ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245ExitG_retired : s2Step245ExitGBefore.retireSet s2Step245ExitGExtra.toFinset=s2Step245ExitGAfter := by
  unfold Arena.retireSet s2Step245ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step245ExitGBefore,s2Step245ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step245ExitG_checked : planRowResizeLog s2Step245ExitGBefore s2Step245ExitGRow 147 []=
    some (s2Step245ExitGAfter,s2Step245ExitGOut,shrinkRow 769 s2Step245ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step245ExitGBefore s2Step245ExitGRow 147 s2Step245ExitG_distinct s2Step245ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step245ExitGRow.payload.take 147) s2Step245ExitGRow.sign=s2Step245ExitGOut := by decide +kernel
  have hi : s2Step245ExitGRow.payload.drop 147=s2Step245ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step245ExitG_retired] at result
  exact result

private def s2Step245ExitGvBefore : Arena := s2Step245ExitFAfter

private theorem s2Step245ExitGv_Incoming : rowsOwned s2Step245ExitGvBefore [s2Step245ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step245ExitGRow,s2Step245ExitFRow,s2Step245ExitFvRow,s2Step245ExitGvRow] 3 s2Step245ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step245ExitGvBefore (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<659) ∨ (660≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step245ExitGv_Outgoing : rowsOwned s2Step245ExitGvAfter [s2Step245ExitGvOut] :=
  hmrRows_owned_drop s2Step245ExitGvAfter [s2Step245ExitGOut,s2Step245ExitFOut,s2Step245ExitFvOut,s2Step245ExitGvOut] 3 s2Step245ExitBank_outgoingOwned

private theorem s2Step245ExitGv_distinct : (s2Step245ExitGvRow.sign::s2Step245ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step245ExitGv_owned : (s2Step245ExitGvRow.sign::s2Step245ExitGvRow.payload).toFinset⊆s2Step245ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step245ExitGvBefore (fun q => (0≤q ∧ q<147) ∨ (148≤q ∧ q<659) ∨ (660≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245ExitGv_retired : s2Step245ExitGvBefore.retireSet s2Step245ExitGvExtra.toFinset=s2Step245ExitGvAfter := by
  unfold Arena.retireSet s2Step245ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step245ExitGvBefore,s2Step245ExitFAfter,s2Step245ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step245ExitGv_checked : planRowResizeLog s2Step245ExitGvBefore s2Step245ExitGvRow 137 []=
    some (s2Step245ExitGvAfter,s2Step245ExitGvOut,shrinkRow 771 s2Step245ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step245ExitGvBefore s2Step245ExitGvRow 137 s2Step245ExitGv_distinct s2Step245ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step245ExitGvRow.payload.take 137) s2Step245ExitGvRow.sign=s2Step245ExitGvOut := by decide +kernel
  have hi : s2Step245ExitGvRow.payload.drop 137=s2Step245ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step245ExitGv_retired] at result
  exact result

private theorem s2Step245ExitBank_rows : planWindowRowsLog s2Step245ExitGBefore [(s2Step245ExitGRow,147),(s2Step245ExitFRow,147),(s2Step245ExitFvRow,138),(s2Step245ExitGvRow,137)] [[],[],[],[]]=
    some (s2Step245ExitGvAfter,[s2Step245ExitGOut,s2Step245ExitFOut,s2Step245ExitFvOut,s2Step245ExitGvOut],(shrinkRow 769 s2Step245ExitGExtra ++ (shrinkRow 768 s2Step245ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step245ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step245ExitGvAfter [] []=some (s2Step245ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step245ExitGvBefore s2Step245ExitGvAfter s2Step245ExitGvAfter
    s2Step245ExitGvRow s2Step245ExitGvOut 137 [] [] [] []
    (shrinkRow 771 s2Step245ExitGvExtra) ([]) s2Step245ExitGv_Incoming s2Step245ExitGv_checked h4 s2Step245ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step245ExitFvBefore s2Step245ExitFvAfter s2Step245ExitGvAfter
    s2Step245ExitFvRow s2Step245ExitFvOut 138 [] [(s2Step245ExitGvRow,137)] [[]] [s2Step245ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step245ExitGvExtra ++ [])) s2Step245ExitFv_Incoming s2Step245ExitFv_checked h3 s2Step245ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step245ExitFBefore s2Step245ExitFAfter s2Step245ExitGvAfter
    s2Step245ExitFRow s2Step245ExitFOut 147 [] [(s2Step245ExitFvRow,138),(s2Step245ExitGvRow,137)] [[],[]] [s2Step245ExitFvOut,s2Step245ExitGvOut]
    (shrinkRow 768 s2Step245ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step245ExitGvExtra ++ []))) s2Step245ExitF_Incoming s2Step245ExitF_checked h2 s2Step245ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step245ExitGBefore s2Step245ExitGAfter s2Step245ExitGvAfter
    s2Step245ExitGRow s2Step245ExitGOut 147 [] [(s2Step245ExitFRow,147),(s2Step245ExitFvRow,138),(s2Step245ExitGvRow,137)] [[],[],[]] [s2Step245ExitFOut,s2Step245ExitFvOut,s2Step245ExitGvOut]
    (shrinkRow 769 s2Step245ExitGExtra) ((shrinkRow 768 s2Step245ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step245ExitGvExtra ++ [])))) s2Step245ExitG_Incoming s2Step245ExitG_checked h1 s2Step245ExitG_Outgoing
  exact h0

private theorem s2Step245ExitBank_checked : compileHmrBankResizeLog .exit s2Step245ExitGBefore ⟨s2Step245ExitFRow,s2Step245ExitGRow,s2Step245ExitFvRow,s2Step245ExitGvRow⟩ ⟨147,147,138,137⟩ [[],[],[],[]]=
    some (s2Step245ExitGvAfter,⟨s2Step245ExitFOut,s2Step245ExitGOut,s2Step245ExitFvOut,s2Step245ExitGvOut⟩,(shrinkRow 769 s2Step245ExitGExtra ++ (shrinkRow 768 s2Step245ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step245ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step245ExitBank_rows]
  rfl

private theorem s2Step245Add0_apart : Disjoint s2Step245Add0Arena.live s2Step245Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step245Add0Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245Add0_card : s2Step245Add0Arena.live.card=895 := by
  decide +kernel

private theorem s2Step245Add0_borrowed : s2Step245Add0Arena.checkBorrow (hmrHybridCount s2Step245Add0Arena s2Step245Add0B.length) s2Step245Add0Work=some s2Step245Add0During := by
  have len : s2Step245Add0Work.length=hmrHybridCount s2Step245Add0Arena s2Step245Add0B.length := by
    rw [hmrHybridCount,s2Step245Add0_card]
    decide +kernel
  have nd : s2Step245Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step245Add0Arena s2Step245Add0During s2Step245Add0Work.toFinset s2Step245Add0_bounded s2Step245Add0_apart rfl

private theorem s2Step245Add0_distinct : (842::809::834::(s2Step245Add0A++s2Step245Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step245Add0_owned : (842::809::834::(s2Step245Add0A++s2Step245Add0B)).toFinset⊆s2Step245Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step245Add0Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245Add0_checked : compileHmrHybridCinLog s2Step245Add0Arena 809 842 834 s2Step245Add0A s2Step245Add0B s2Step245Add0Work=some s2Step245Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step245Add0Arena s2Step245Add0During 809 842 834 s2Step245Add0A s2Step245Add0B s2Step245Add0Work
    (by decide +kernel) (by decide +kernel) s2Step245Add0_distinct
    (fun q hq => s2Step245Add0_owned (List.mem_toFinset.mpr hq)) s2Step245Add0_borrowed

private theorem s2Step245Add1_apart : Disjoint s2Step245Add1Arena.live s2Step245Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step245Add1Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245Add1_card : s2Step245Add1Arena.live.card=895 := by
  decide +kernel

private theorem s2Step245Add1_borrowed : s2Step245Add1Arena.checkBorrow (hmrHybridCount s2Step245Add1Arena s2Step245Add1B.length) s2Step245Add1Work=some s2Step245Add1During := by
  have len : s2Step245Add1Work.length=hmrHybridCount s2Step245Add1Arena s2Step245Add1B.length := by
    rw [hmrHybridCount,s2Step245Add1_card]
    decide +kernel
  have nd : s2Step245Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step245Add1Arena s2Step245Add1During s2Step245Add1Work.toFinset s2Step245Add1_bounded s2Step245Add1_apart rfl

private theorem s2Step245Add1_distinct : (842::809::834::(s2Step245Add1A++s2Step245Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step245Add1_owned : (842::809::834::(s2Step245Add1A++s2Step245Add1B)).toFinset⊆s2Step245Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step245Add1Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245Add1_checked : compileHmrHybridCinLog s2Step245Add1Arena 809 842 834 s2Step245Add1A s2Step245Add1B s2Step245Add1Work=some s2Step245Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step245Add1Arena s2Step245Add1During 809 842 834 s2Step245Add1A s2Step245Add1B s2Step245Add1Work
    (by decide +kernel) (by decide +kernel) s2Step245Add1_distinct
    (fun q hq => s2Step245Add1_owned (List.mem_toFinset.mpr hq)) s2Step245Add1_borrowed

private theorem s2Step245F4_apart : Disjoint (s2Step245Add0A++s2Step245Add0B).toFinset (s2Step245Add1A++s2Step245Add1B).toFinset := by
  have nd : ((s2Step245Add0A++s2Step245Add0B)++(s2Step245Add1A++s2Step245Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step245F4_carry : s2Step245F4FlagArena.checkBorrow 1 [834]=some s2Step245Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step245F4FlagArena,s2Step245HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step245F4FlagArena,s2Step245HeadFvAfter,s2Step245Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step245F4_distinct : (802::809::842::834::((s2Step245Add0A++s2Step245Add1A)++(s2Step245Add0B++s2Step245Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step245F4_flag : s2Step245HeadFvAfter.checkBorrow 1 [842]=some s2Step245F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step245HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step245F4_owned : (802::809::((s2Step245Add0A++s2Step245Add1A)++(s2Step245Add0B++s2Step245Add1B))).toFinset⊆s2Step245HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step245HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245F4_checked : compileHmrHybridF4Log s2Step245HeadFvAfter 802 809 s2Step245Add0A s2Step245Add0B s2Step245Add1A s2Step245Add1B [842] [834] s2Step245Add0Work s2Step245Add1Work=some s2Step245F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step245HeadFvAfter s2Step245F4FlagArena s2Step245Add0Arena s2Step245Add0During s2Step245Add1During 802 809
    s2Step245Add0A s2Step245Add0B s2Step245Add1A s2Step245Add1B [842] [834] s2Step245Add0Work s2Step245Add1Work
    (fun q hq => s2Step245F4_owned (List.mem_toFinset.mpr hq)) s2Step245F4_flag s2Step245F4_carry
    s2Step245F4_distinct s2Step245F4_apart s2Step245Add0_checked s2Step245Add1_checked

private theorem s2Step245Front_branch : s2Step245FrontSigmaArena.checkBorrow 1 [809]=some s2Step245HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step245FrontSigmaArena,s2Step245EntryGvAfter,s2Step245EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step245FrontSigmaArena,s2Step245EntryGvAfter,s2Step245EntryFBefore,s2Step245HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step245Front_entry : HmrFrontEntryValid s2Step245EntryFBefore s2Step245FrontBank 148 137 ⟨147,147,138,137⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step245FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step245EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step245EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step245FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step245Front_sigma : s2Step245EntryGvAfter.checkBorrow 1 [802]=some s2Step245FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step245EntryGvAfter,s2Step245EntryFBefore,arenaWires]
  · rfl

private def s2Step245HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245HeadFBefore : Arena := s2Step245HeadGAfter

private def s2Step245HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659],768⟩

private def s2Step245HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826],770⟩

private def s2Step245HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],769⟩

private def s2Step245HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819],771⟩

private theorem s2Step245HeadBank_incomingDistinct : ([s2Step245HeadGRow,s2Step245HeadFRow,s2Step245HeadGvRow,s2Step245HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step245HeadF_Incoming : rowsOwned s2Step245HeadFBefore [s2Step245HeadFRow,s2Step245HeadGvRow,s2Step245HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step245HeadGRow,s2Step245HeadFRow,s2Step245HeadGvRow,s2Step245HeadFvRow] 1 s2Step245HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step245HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step245HeadBank_outgoingOwned : rowsOwned s2Step245HeadFvAfter [s2Step245HeadGOut,s2Step245HeadFOut,s2Step245HeadGvOut,s2Step245HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step245HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step245HeadF_Outgoing : rowsOwned s2Step245HeadFvAfter [s2Step245HeadFOut,s2Step245HeadGvOut,s2Step245HeadFvOut] :=
  hmrRows_owned_drop s2Step245HeadFvAfter [s2Step245HeadGOut,s2Step245HeadFOut,s2Step245HeadGvOut,s2Step245HeadFvOut] 1 s2Step245HeadBank_outgoingOwned

private theorem s2Step245HeadF_distinct : (s2Step245HeadFRow.sign::s2Step245HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step245HeadF_owned : (s2Step245HeadFRow.sign::s2Step245HeadFRow.payload).toFinset⊆s2Step245HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step245HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245HeadF_reserved : s2Step245HeadFBefore.reserve s2Step245HeadFFresh.toFinset=some s2Step245HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step245HeadFFresh,arenaWires]
  · norm_num [s2Step245HeadFBefore,s2Step245HeadGAfter,s2Step245HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step245HeadFAfter,s2Step245HeadFBefore,s2Step245HeadGAfter,s2Step245HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step245HeadF_checked : planRowResizeLog s2Step245HeadFBefore s2Step245HeadFRow 149 s2Step245HeadFFresh=
    some (s2Step245HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 830],768⟩,growRow 768 s2Step245HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step245HeadFBefore s2Step245HeadFAfter s2Step245HeadFRow 149 s2Step245HeadFFresh
    s2Step245HeadF_distinct s2Step245HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step245HeadF_reserved
  have rowEq : WindowRow.mk (s2Step245HeadFRow.payload++s2Step245HeadFFresh) s2Step245HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 830],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step245HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step245HeadFvBefore : Arena := s2Step245HeadGvAfter

private theorem s2Step245HeadFv_Incoming : rowsOwned s2Step245HeadFvBefore [s2Step245HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step245HeadGRow,s2Step245HeadFRow,s2Step245HeadGvRow,s2Step245HeadFvRow] 3 s2Step245HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step245HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step245HeadFv_Outgoing : rowsOwned s2Step245HeadFvAfter [s2Step245HeadFvOut] :=
  hmrRows_owned_drop s2Step245HeadFvAfter [s2Step245HeadGOut,s2Step245HeadFOut,s2Step245HeadGvOut,s2Step245HeadFvOut] 3 s2Step245HeadBank_outgoingOwned

private theorem s2Step245HeadFv_distinct : (s2Step245HeadFvRow.sign::s2Step245HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step245HeadFv_owned : (s2Step245HeadFvRow.sign::s2Step245HeadFvRow.payload).toFinset⊆s2Step245HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step245HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245HeadFv_reserved : s2Step245HeadFvBefore.reserve s2Step245HeadFvFresh.toFinset=some s2Step245HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step245HeadFvFresh,arenaWires]
  · norm_num [s2Step245HeadFvBefore,s2Step245HeadGvAfter,s2Step245HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step245HeadFvAfter,s2Step245HeadFvBefore,s2Step245HeadGvAfter,s2Step245HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step245HeadFv_checked : planRowResizeLog s2Step245HeadFvBefore s2Step245HeadFvRow 138 s2Step245HeadFvFresh=
    some (s2Step245HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831],770⟩,growRow 770 s2Step245HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step245HeadFvBefore s2Step245HeadFvAfter s2Step245HeadFvRow 138 s2Step245HeadFvFresh
    s2Step245HeadFv_distinct s2Step245HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step245HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step245HeadFvRow.payload++s2Step245HeadFvFresh) s2Step245HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step245HeadG_Incoming : rowsOwned s2Step245HeadGBefore [s2Step245HeadGRow,s2Step245HeadFRow,s2Step245HeadGvRow,s2Step245HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step245HeadGRow,s2Step245HeadFRow,s2Step245HeadGvRow,s2Step245HeadFvRow] 0 s2Step245HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step245HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step245HeadG_Outgoing : rowsOwned s2Step245HeadFvAfter [s2Step245HeadGOut,s2Step245HeadFOut,s2Step245HeadGvOut,s2Step245HeadFvOut] :=
  hmrRows_owned_drop s2Step245HeadFvAfter [s2Step245HeadGOut,s2Step245HeadFOut,s2Step245HeadGvOut,s2Step245HeadFvOut] 0 s2Step245HeadBank_outgoingOwned

private theorem s2Step245HeadG_distinct : (s2Step245HeadGRow.sign::s2Step245HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step245HeadG_owned : (s2Step245HeadGRow.sign::s2Step245HeadGRow.payload).toFinset⊆s2Step245HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step245HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245HeadG_reserved : s2Step245HeadGBefore.reserve s2Step245HeadGFresh.toFinset=some s2Step245HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step245HeadGFresh,arenaWires]
  · norm_num [s2Step245HeadGBefore,s2Step245HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step245HeadGAfter,s2Step245HeadGBefore,s2Step245HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step245HeadG_checked : planRowResizeLog s2Step245HeadGBefore s2Step245HeadGRow 149 s2Step245HeadGFresh=
    some (s2Step245HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 810],769⟩,growRow 769 s2Step245HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step245HeadGBefore s2Step245HeadGAfter s2Step245HeadGRow 149 s2Step245HeadGFresh
    s2Step245HeadG_distinct s2Step245HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step245HeadG_reserved
  have rowEq : WindowRow.mk (s2Step245HeadGRow.payload++s2Step245HeadGFresh) s2Step245HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 810],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step245HeadGvBefore : Arena := s2Step245HeadFAfter

private theorem s2Step245HeadGv_Incoming : rowsOwned s2Step245HeadGvBefore [s2Step245HeadGvRow,s2Step245HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step245HeadGRow,s2Step245HeadFRow,s2Step245HeadGvRow,s2Step245HeadFvRow] 2 s2Step245HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step245HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step245HeadGv_Outgoing : rowsOwned s2Step245HeadFvAfter [s2Step245HeadGvOut,s2Step245HeadFvOut] :=
  hmrRows_owned_drop s2Step245HeadFvAfter [s2Step245HeadGOut,s2Step245HeadFOut,s2Step245HeadGvOut,s2Step245HeadFvOut] 2 s2Step245HeadBank_outgoingOwned

private theorem s2Step245HeadGv_distinct : (s2Step245HeadGvRow.sign::s2Step245HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step245HeadGv_owned : (s2Step245HeadGvRow.sign::s2Step245HeadGvRow.payload).toFinset⊆s2Step245HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step245HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step245HeadGv_reserved : s2Step245HeadGvBefore.reserve s2Step245HeadGvFresh.toFinset=some s2Step245HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step245HeadGvFresh,arenaWires]
  · norm_num [s2Step245HeadGvBefore,s2Step245HeadFAfter,s2Step245HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step245HeadGvAfter,s2Step245HeadGvBefore,s2Step245HeadFAfter,s2Step245HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step245HeadGv_checked : planRowResizeLog s2Step245HeadGvBefore s2Step245HeadGvRow 138 s2Step245HeadGvFresh=
    some (s2Step245HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 814],771⟩,growRow 771 s2Step245HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step245HeadGvBefore s2Step245HeadGvAfter s2Step245HeadGvRow 138 s2Step245HeadGvFresh
    s2Step245HeadGv_distinct s2Step245HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step245HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step245HeadGvRow.payload++s2Step245HeadGvFresh) s2Step245HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 814],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step245HeadBank_rows : planWindowRowsLog s2Step245HeadGBefore [(s2Step245HeadGRow,149),(s2Step245HeadFRow,149),(s2Step245HeadGvRow,138),(s2Step245HeadFvRow,138)] [s2Step245HeadGFresh,s2Step245HeadFFresh,s2Step245HeadGvFresh,s2Step245HeadFvFresh]=
    some (s2Step245HeadFvAfter,[s2Step245HeadGOut,s2Step245HeadFOut,s2Step245HeadGvOut,s2Step245HeadFvOut],(growRow 769 s2Step245HeadGFresh ++ (growRow 768 s2Step245HeadFFresh ++ (growRow 771 s2Step245HeadGvFresh ++ (growRow 770 s2Step245HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step245HeadFvAfter [] []=some (s2Step245HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step245HeadFvBefore s2Step245HeadFvAfter s2Step245HeadFvAfter
    s2Step245HeadFvRow s2Step245HeadFvOut 138 s2Step245HeadFvFresh [] [] []
    (growRow 770 s2Step245HeadFvFresh) ([]) s2Step245HeadFv_Incoming s2Step245HeadFv_checked h4 s2Step245HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step245HeadGvBefore s2Step245HeadGvAfter s2Step245HeadFvAfter
    s2Step245HeadGvRow s2Step245HeadGvOut 138 s2Step245HeadGvFresh [(s2Step245HeadFvRow,138)] [s2Step245HeadFvFresh] [s2Step245HeadFvOut]
    (growRow 771 s2Step245HeadGvFresh) ((growRow 770 s2Step245HeadFvFresh ++ [])) s2Step245HeadGv_Incoming s2Step245HeadGv_checked h3 s2Step245HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step245HeadFBefore s2Step245HeadFAfter s2Step245HeadFvAfter
    s2Step245HeadFRow s2Step245HeadFOut 149 s2Step245HeadFFresh [(s2Step245HeadGvRow,138),(s2Step245HeadFvRow,138)] [s2Step245HeadGvFresh,s2Step245HeadFvFresh] [s2Step245HeadGvOut,s2Step245HeadFvOut]
    (growRow 768 s2Step245HeadFFresh) ((growRow 771 s2Step245HeadGvFresh ++ (growRow 770 s2Step245HeadFvFresh ++ []))) s2Step245HeadF_Incoming s2Step245HeadF_checked h2 s2Step245HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step245HeadGBefore s2Step245HeadGAfter s2Step245HeadFvAfter
    s2Step245HeadGRow s2Step245HeadGOut 149 s2Step245HeadGFresh [(s2Step245HeadFRow,149),(s2Step245HeadGvRow,138),(s2Step245HeadFvRow,138)] [s2Step245HeadFFresh,s2Step245HeadGvFresh,s2Step245HeadFvFresh] [s2Step245HeadFOut,s2Step245HeadGvOut,s2Step245HeadFvOut]
    (growRow 769 s2Step245HeadGFresh) ((growRow 768 s2Step245HeadFFresh ++ (growRow 771 s2Step245HeadGvFresh ++ (growRow 770 s2Step245HeadFvFresh ++ [])))) s2Step245HeadG_Incoming s2Step245HeadG_checked h1 s2Step245HeadG_Outgoing
  exact h0

private theorem s2Step245HeadBank_checked : compileHmrBankResizeLog .headroom s2Step245HeadGBefore ⟨s2Step245HeadFRow,s2Step245HeadGRow,s2Step245HeadFvRow,s2Step245HeadGvRow⟩ ⟨149,149,138,138⟩ [s2Step245HeadGFresh,s2Step245HeadFFresh,s2Step245HeadGvFresh,s2Step245HeadFvFresh]=
    some (s2Step245HeadFvAfter,⟨s2Step245HeadFOut,s2Step245HeadGOut,s2Step245HeadFvOut,s2Step245HeadGvOut⟩,(growRow 769 s2Step245HeadGFresh ++ (growRow 768 s2Step245HeadFFresh ++ (growRow 771 s2Step245HeadGvFresh ++ (growRow 770 s2Step245HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step245HeadBank_rows]
  rfl

private theorem s2Step245Front_checked : compileHmrSourceFrontLog s2Step245EntryFBefore s2Step245FrontBank 148 137 ⟨147,147,138,137⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step245FrontLog=some s2Step245FrontPlan := by
  have pairEq : s2Step245FrontPair=⟨s2Step245HeadFRow,s2Step245HeadGRow,s2Step245HeadFvRow,s2Step245HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step245FrontHead=⟨s2Step245ExitFRow,s2Step245ExitGRow,s2Step245ExitFvRow,s2Step245ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step245Add0A=s2Step245FrontHead.f.wires := by decide +kernel
  have gEq : s2Step245Add0B=s2Step245FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step245Add1A=s2Step245FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step245Add1B=s2Step245FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step245EntryFBefore s2Step245FrontBank 148 137 ⟨147,147,138,137⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step245FrontLog s2Step245FrontPlan
  · exact s2Step245Front_entry
  · exact s2Step245EntryBank_checked
  · exact s2Step245Front_sigma
  · rfl
  · exact s2Step245Front_branch
  · rfl
  · simpa only [s2Step245FrontPlan,pairEq] using s2Step245HeadBank_checked
  · simpa only [s2Step245FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step245F4_checked
  · exact s2Step245Counter_checked
  · rfl
  · simpa only [s2Step245FrontPlan,headEq] using s2Step245ExitBank_checked

private theorem s2Step245Complete_explicit_checked : compileHmrEarlyStepLog s2Step245EntryFBefore s2Step245FrontBank 148 137 ⟨147,147,138,137⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step245CompleteLog=some s2Step245CompletePlan := by
  let Q := s2Step245EarlyControlPlan
  have hq := s2Step245EarlyControl_plan_checked
  have fv1 : s2Step245CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step245CompleteOut.fv.payload[2]?.getD s2Step245CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step245CompleteOut.fv.payload[3]?.getD s2Step245CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step245CompleteOut.fv.payload[4]?.getD s2Step245CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step245EntryFBefore s2Step245EarlyControlArena s2Step245FrontBank 148 137 ⟨147,147,138,137⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step245CompleteLog s2Step245FrontPlan Q
    s2Step245Front_checked s2Step245Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step245Complete_owned s2Step245Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step245EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 802 s2Step245CompleteOut.fv.second (s2Step245CompleteOut.fv.payload[2]?.getD s2Step245CompleteOut.fv.sign) (s2Step245CompleteOut.fv.payload[3]?.getD s2Step245CompleteOut.fv.sign) (s2Step245CompleteOut.fv.payload[4]?.getD s2Step245CompleteOut.fv.sign) 809 51 s2Step245EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep245Arena : Arena := s2Step245EntryFBefore
def s2PrivateStep245Bank : WindowBank := s2Step245FrontBank
def s2PrivateStep245Spec : HmrSourceWalkStepLog := ⟨148,137,⟨147,147,138,137⟩,51,.early s2Step245CompleteLog⟩
def s2PrivateStep245Plan : HmrSourceStepPlan := .early s2Step245CompletePlan
theorem s2PrivateStep245_source : s2PrivateStep245Spec=s2ObservedLogs240[5] := rfl
theorem s2PrivateStep245_checked : compileHmrSourceStepLog s2PrivateStep245Arena s2PrivateStep245Bank
    s2PrivateStep245Spec.fgWidth s2PrivateStep245Spec.vWidth s2PrivateStep245Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]
    6 498 245 s2PrivateStep245Spec.need none s2PrivateStep245Spec.log=some s2PrivateStep245Plan := by
  change compileHmrSourceStepLog s2Step245EntryFBefore s2Step245FrontBank 148 137 ⟨147,147,138,137⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 6 498 245 51 none (.early s2Step245CompleteLog)=some (.early s2Step245CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 245<498)]
  rw [s2Step245Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
