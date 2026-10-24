import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep242
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

private def s2Step244CompleteMoves : List (Wire × Wire) := []

private def s2Step244EarlyControlLog : HmrEarlyControlLog := ⟨[810, 830, 814, 831, 842],[834],[792],[800, 885, 891, 894, 896, 901],[]⟩

private def s2Step244FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [819]],[[831], [814], [810], [830]],[[], [], [], []]⟩,[809],[802],[842],[834],[792, 800, 885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[792, 800, 885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[842, 834, 792, 800]⟩

private def s2Step244CompleteLog : HmrEarlyStepLog := ⟨s2Step244FrontLog,s2Step244CompleteMoves,s2Step244EarlyControlLog⟩

private def s2Step244ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659],768⟩

private def s2Step244ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826],770⟩

private def s2Step244ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],769⟩

private def s2Step244ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819],771⟩

private def s2Step244FrontOut : WindowBank := ⟨s2Step244ExitFOut,s2Step244ExitGOut,s2Step244ExitFvOut,s2Step244ExitGvOut⟩

private def s2Step244CompleteOut : WindowBank := s2Step244FrontOut.repacked s2Step244CompleteMoves

private def s2Step244EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step244EarlyControlPositiveArena,[834],s2Step244EarlyControlEqualityArena,[792],⟨⟨809,false⟩,[⟨⟨834,false⟩,792⟩]⟩⟩

private def s2Step244EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<902)),Finset.filter_subset _ _⟩

private def s2Step244EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<902)),Finset.filter_subset _ _⟩

private def s2Step244EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,810⟩,⟨⟨774,false⟩,830⟩,⟨⟨775,false⟩,814⟩,⟨⟨776,false⟩,831⟩,⟨⟨777,false⟩,842⟩]⟩

private def s2Step244EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step244EarlyControlZeroArena,s2Step244EarlyControlZeroPlan,s2Step244EarlyControlClassPlan,s2Step244EarlyControlFlagArena,s2Step244EarlyControlFittedArena,s2Step244EarlyControlHistoryArena,s2Step244EarlyControlSigmaArena,s2Step244EarlyControlOutputArena,s2Step244EarlyControlLog⟩

private def s2Step244CounterWork : List Wire := [842, 834, 792, 800]

private theorem s2Step244Counter_bounded : s2Step244CounterWork.toFinset⊆arenaWires := by norm_num [s2Step244CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step244HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244CounterDuring : Arena := ⟨s2Step244HeadFvAfter.live∪s2Step244CounterWork.toFinset,Finset.union_subset s2Step244HeadFvAfter.bounded s2Step244Counter_bounded⟩

private def s2Step244EntryFFresh : List Wire := []

private def s2Step244EntryFvFresh : List Wire := []

private def s2Step244EntryGFresh : List Wire := []

private def s2Step244EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244EntryGvFresh : List Wire := [819]

private def s2Step244ExitFExtra : List Wire := [814]

private def s2Step244ExitFvExtra : List Wire := [830]

private def s2Step244ExitGExtra : List Wire := [831]

private def s2Step244ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244ExitGvExtra : List Wire := [810]

private def s2Step244Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244Add0Work : List Wire := [792, 800, 885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step244Add0_bounded : s2Step244Add0Work.toFinset⊆arenaWires := by
  have h : s2Step244Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step244Add0During : Arena := ⟨s2Step244Add0Arena.live∪s2Step244Add0Work.toFinset,Finset.union_subset s2Step244Add0Arena.bounded s2Step244Add0_bounded⟩

private def s2Step244Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244Add1Work : List Wire := [792, 800, 885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step244Add1_bounded : s2Step244Add1Work.toFinset⊆arenaWires := by
  have h : s2Step244Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step244Add1During : Arena := ⟨s2Step244Add1Arena.live∪s2Step244Add1Work.toFinset,Finset.union_subset s2Step244Add1Arena.bounded s2Step244Add1_bounded⟩

private def s2Step244F4FlagArena : Arena := ⟨s2Step244HeadFvAfter.live∪{842},Finset.union_subset s2Step244HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step244F4Plan : HmrHybridF4Plan := ⟨s2Step244F4FlagArena,[842],s2Step244Add0Arena,[834],s2Step244Add0During,s2Step244Add0Work,s2Step244Add1During,s2Step244Add1Work⟩

private def s2Step244HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 814],768⟩

private def s2Step244HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 830],770⟩

private def s2Step244HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 831],769⟩

private def s2Step244HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 810],771⟩

private def s2Step244FrontHead : WindowBank := ⟨s2Step244HeadFOut,s2Step244HeadGOut,s2Step244HeadFvOut,s2Step244HeadGvOut⟩

private def s2Step244EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659],768⟩

private def s2Step244EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826],770⟩

private def s2Step244EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],769⟩

private def s2Step244EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819],771⟩

private def s2Step244FrontPair : WindowBank := ⟨s2Step244EntryFOut,s2Step244EntryGOut,s2Step244EntryFvOut,s2Step244EntryGvOut⟩

private def s2Step244FrontSigmaArena : Arena := ⟨s2Step244EntryGvAfter.live∪{809},Finset.union_subset s2Step244EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step244HeadFFresh : List Wire := [814]

private def s2Step244HeadFvFresh : List Wire := [830]

private def s2Step244HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244HeadGFresh : List Wire := [831]

private def s2Step244HeadGvFresh : List Wire := [810]

private def s2Step244FrontPlan : HmrSourceFront := ⟨s2Step244EntryGvAfter,s2Step244FrontPair,(growRow 768 s2Step244EntryFFresh ++ (growRow 769 s2Step244EntryGFresh ++ (growRow 770 s2Step244EntryFvFresh ++ (growRow 771 s2Step244EntryGvFresh ++ [])))),s2Step244FrontSigmaArena,[809],s2Step244HeadGBefore,[802],
  s2Step244HeadFvAfter,s2Step244FrontHead,(growRow 769 s2Step244HeadGFresh ++ (growRow 768 s2Step244HeadFFresh ++ (growRow 771 s2Step244HeadGvFresh ++ (growRow 770 s2Step244HeadFvFresh ++ [])))),s2Step244F4Plan,s2Step244CounterDuring,s2Step244CounterWork,s2Step244ExitGvAfter,s2Step244FrontOut,(shrinkRow 769 s2Step244ExitGExtra ++ (shrinkRow 768 s2Step244ExitFExtra ++ (shrinkRow 770 s2Step244ExitFvExtra ++ (shrinkRow 771 s2Step244ExitGvExtra ++ []))))⟩

private def s2Step244CompletePlan : HmrEarlyStepPlan := ⟨s2Step244FrontPlan,s2Step244EarlyControlArena,s2Step244EarlyControlPlan,s2Step244CompleteMoves⟩

private theorem s2Step244Complete_apart : List.Disjoint (s2Step244CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [809, 802, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := by
  have nd : ((s2Step244CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[809, 802, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step244Complete_owned : (s2Step244CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step244EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step244EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244Complete_repack : s2Step244ExitGvAfter.checkRepack s2Step244CompleteMoves=some s2Step244EarlyControlArena := by rfl

private theorem s2Step244EarlyControl_branchOwned : ([802] : List Wire).toFinset⊆s2Step244EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step244EarlyControlSigmaArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244EarlyControl_branch : compileHmrBranchRetirement s2Step244EarlyControlSigmaArena 802=some s2Step244EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step244EarlyControl_branchOwned
  · ext q
    simp [s2Step244EarlyControlOutputArena,s2Step244EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step244EarlyControl_classEqualityBorrow : s2Step244EarlyControlPositiveArena.checkBorrow (([809, 834] : List Wire).length-1) s2Step244EarlyControlLog.classWork=some s2Step244EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step244EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step244EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step244EarlyControlEqualityArena,s2Step244EarlyControlPositiveArena,s2Step244EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step244EarlyControl_classEqualityOwned : ([809, 834] : List Wire).toFinset⊆s2Step244EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step244EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244EarlyControl_classEquality : compileHmrEqualityLog s2Step244EarlyControlPositiveArena [809, 834] 0 s2Step244EarlyControlLog.classWork=some (s2Step244EarlyControlEqualityArena,s2Step244EarlyControlLog.classWork,s2Step244EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step244EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step244EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step244EarlyControl_classOwned : ([777, 842, 809] : List Wire).toFinset⊆s2Step244EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step244EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244EarlyControl_positiveBorrow : s2Step244EarlyControlZeroArena.checkBorrow (1) s2Step244EarlyControlLog.positiveWork=some s2Step244EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step244EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step244EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step244EarlyControlPositiveArena,s2Step244EarlyControlZeroArena,s2Step244EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step244EarlyControl_class : compileHmrSourceClassLog s2Step244EarlyControlZeroArena false 777 s2Step244EarlyControlZeroPlan.top 0 809 s2Step244EarlyControlLog.positiveWork s2Step244EarlyControlLog.classWork=some s2Step244EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step244EarlyControlClassPlan s2Step244EarlyControlZeroArena false 777 s2Step244EarlyControlZeroPlan.top 0 809
  constructor
  · decide +kernel
  · exact s2Step244EarlyControl_classOwned
  · exact s2Step244EarlyControl_positiveBorrow
  · exact s2Step244EarlyControl_classEquality

private theorem s2Step244EarlyControl_entryRecordOwned : ([802, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step244EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step244EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244EarlyControl_entrySigmaOwned : ([809, 254] : List Wire).toFinset⊆s2Step244EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step244EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244EarlyControl_fitBorrow : s2Step244EarlyControlFlagArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step244EarlyControlLog.recordFresh=some s2Step244EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step244EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step244EarlyControlFlagArena (fun q => (0≤q ∧ q<902)) rfl
      decide +kernel
    · ext q
      simp [s2Step244EarlyControlFittedArena,s2Step244EarlyControlFlagArena,s2Step244EarlyControlLog,arenaWires]

private theorem s2Step244EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step244EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step244EarlyControlFlagArena (fun q => (0≤q ∧ q<902)) rfl
  decide +kernel

private theorem s2Step244EarlyControl_fit : compileHmrRecordGrowLog s2Step244EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step244EarlyControlLog.recordFresh=some s2Step244EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step244EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step244EarlyControl_fitBorrow

private theorem s2Step244EarlyControl_flagsBorrow : s2Step244EarlyControlEqualityArena.checkBorrow (6) s2Step244EarlyControlLog.flagWork=some s2Step244EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step244EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step244EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step244EarlyControlFlagArena,s2Step244EarlyControlEqualityArena,s2Step244EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step244EarlyControl_flagsOwned : ([792, 253, 252, 251] : List Wire).toFinset⊆s2Step244EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step244EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244EarlyControl_flags : compileHmrFlagsLog s2Step244EarlyControlClassPlan.equalityArena s2Step244EarlyControlClassPlan.equality.top 253 252 251 s2Step244EarlyControlLog.flagWork=some s2Step244EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step244EarlyControl_flagsOwned⟩
  · exact s2Step244EarlyControl_flagsBorrow

private theorem s2Step244EarlyControl_historyBorrow : s2Step244EarlyControlArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step244EarlyControlLog.recordFresh=some s2Step244EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step244EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step244EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step244EarlyControlHistoryArena,s2Step244EarlyControlArena,s2Step244EarlyControlLog,arenaWires]

private theorem s2Step244EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step244EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step244EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244EarlyControl_history : compileHmrRecordGrowLog s2Step244EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step244EarlyControlLog.recordFresh=some s2Step244EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step244EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step244EarlyControl_historyBorrow

private theorem s2Step244EarlyControl_sigmaOwned : ([254, 809] : List Wire).toFinset⊆s2Step244EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step244EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244EarlyControl_sigmaReleaseOwned : ([809] : List Wire).toFinset⊆s2Step244EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step244EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244EarlyControl_sigmaRelease : s2Step244EarlyControlHistoryArena.release {809} (fun _ => false)=some s2Step244EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step244EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step244EarlyControlSigmaArena,s2Step244EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step244EarlyControl_sigma : compileHmrSigmaDropLog s2Step244EarlyControlHistoryArena false 0 0 254 809 []=some s2Step244EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step244EarlyControl_sigmaOwned⟩
  · exact s2Step244EarlyControl_sigmaRelease

private theorem s2Step244EarlyControl_zeroBorrow : s2Step244EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step244EarlyControlLog.zeroWork=some s2Step244EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step244EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step244EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step244EarlyControlZeroArena,s2Step244EarlyControlArena,s2Step244EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step244EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step244EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step244EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244EarlyControl_zero : compileHmrEqualityLog s2Step244EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step244EarlyControlLog.zeroWork=some (s2Step244EarlyControlZeroArena,s2Step244EarlyControlLog.zeroWork,s2Step244EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step244EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step244EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step244EarlyControl_logged : s2Step244EarlyControlPlan.Logged s2Step244EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 809 254 253 252 251 802 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step244EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step244EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step244EarlyControl_zero
  · exact s2Step244EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step244EarlyControl_flags
  · exact s2Step244EarlyControl_fit
  · exact s2Step244EarlyControl_history
  · exact s2Step244EarlyControl_sigma
  · exact s2Step244EarlyControl_branch

private theorem s2Step244EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step244EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 809 254 253 252 251 802 51 s2Step244EarlyControlLog=some s2Step244EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step244EarlyControlPlan s2Step244EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 809 254 253 252 251 802 51 s2Step244EarlyControl_logged

private def s2Step244EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659],768⟩

private def s2Step244EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826],770⟩

private def s2Step244EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],769⟩

private def s2Step244EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846],771⟩

private def s2Step244FrontBank : WindowBank := ⟨s2Step244EntryFRow,s2Step244EntryGRow,s2Step244EntryFvRow,s2Step244EntryGvRow⟩

private def s2Step244Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 814, 768]

private def s2Step244Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 831, 769]

private def s2Step244Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 830, 770]

private def s2Step244Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 810, 771]

private theorem s2Step244Counter_apart : Disjoint s2Step244HeadFvAfter.live s2Step244CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step244HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244Counter_borrowed : s2Step244HeadFvAfter.checkBorrow 4 s2Step244CounterWork=some s2Step244CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step244HeadFvAfter s2Step244CounterDuring s2Step244CounterWork.toFinset s2Step244Counter_bounded s2Step244Counter_apart rfl

private theorem s2Step244Counter_owned : (809::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step244HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step244HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244Counter_checked : compileHmrCounterStepLog s2Step244HeadFvAfter true 809 [772, 773, 774, 775, 776, 777] s2Step244CounterWork=some s2Step244CounterDuring := by
  have owned : ∀q∈809::[772, 773, 774, 775, 776, 777],q∈s2Step244HeadFvAfter.live := fun q hq => s2Step244Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step244Counter_borrowed

private def s2Step244EntryFAfter : Arena := s2Step244EntryFBefore

private theorem s2Step244EntryBank_incomingDistinct : ([s2Step244EntryFRow,s2Step244EntryGRow,s2Step244EntryFvRow,s2Step244EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step244EntryF_Incoming : rowsOwned s2Step244EntryFBefore [s2Step244EntryFRow,s2Step244EntryGRow,s2Step244EntryFvRow,s2Step244EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step244EntryFRow,s2Step244EntryGRow,s2Step244EntryFvRow,s2Step244EntryGvRow] 0 s2Step244EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step244EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step244EntryBank_outgoingOwned : rowsOwned s2Step244EntryGvAfter [s2Step244EntryFOut,s2Step244EntryGOut,s2Step244EntryFvOut,s2Step244EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step244EntryGvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step244EntryF_Outgoing : rowsOwned s2Step244EntryGvAfter [s2Step244EntryFOut,s2Step244EntryGOut,s2Step244EntryFvOut,s2Step244EntryGvOut] :=
  hmrRows_owned_drop s2Step244EntryGvAfter [s2Step244EntryFOut,s2Step244EntryGOut,s2Step244EntryFvOut,s2Step244EntryGvOut] 0 s2Step244EntryBank_outgoingOwned

private theorem s2Step244EntryF_distinct : (s2Step244EntryFRow.sign::s2Step244EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step244EntryF_owned : (s2Step244EntryFRow.sign::s2Step244EntryFRow.payload).toFinset⊆s2Step244EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step244EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244EntryF_reserved : s2Step244EntryFBefore.reserve s2Step244EntryFFresh.toFinset=some s2Step244EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step244EntryFFresh,arenaWires]
  · norm_num [s2Step244EntryFBefore,s2Step244EntryFFresh,arenaWires]
  · simp only [s2Step244EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step244EntryF_checked : planRowResizeLog s2Step244EntryFBefore s2Step244EntryFRow 148 s2Step244EntryFFresh=
    some (s2Step244EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659],768⟩,growRow 768 s2Step244EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step244EntryFBefore s2Step244EntryFAfter s2Step244EntryFRow 148 s2Step244EntryFFresh
    s2Step244EntryF_distinct s2Step244EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step244EntryF_reserved
  have rowEq : WindowRow.mk (s2Step244EntryFRow.payload++s2Step244EntryFFresh) s2Step244EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step244EntryFvAfter : Arena := s2Step244EntryFBefore

private def s2Step244EntryFvBefore : Arena := s2Step244EntryFBefore

private theorem s2Step244EntryFv_Incoming : rowsOwned s2Step244EntryFvBefore [s2Step244EntryFvRow,s2Step244EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step244EntryFRow,s2Step244EntryGRow,s2Step244EntryFvRow,s2Step244EntryGvRow] 2 s2Step244EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step244EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step244EntryFv_Outgoing : rowsOwned s2Step244EntryGvAfter [s2Step244EntryFvOut,s2Step244EntryGvOut] :=
  hmrRows_owned_drop s2Step244EntryGvAfter [s2Step244EntryFOut,s2Step244EntryGOut,s2Step244EntryFvOut,s2Step244EntryGvOut] 2 s2Step244EntryBank_outgoingOwned

private theorem s2Step244EntryFv_distinct : (s2Step244EntryFvRow.sign::s2Step244EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step244EntryFv_owned : (s2Step244EntryFvRow.sign::s2Step244EntryFvRow.payload).toFinset⊆s2Step244EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step244EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244EntryFv_reserved : s2Step244EntryFvBefore.reserve s2Step244EntryFvFresh.toFinset=some s2Step244EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step244EntryFvFresh,arenaWires]
  · norm_num [s2Step244EntryFvBefore,s2Step244EntryFBefore,s2Step244EntryFvFresh,arenaWires]
  · simp only [s2Step244EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step244EntryFv_checked : planRowResizeLog s2Step244EntryFvBefore s2Step244EntryFvRow 137 s2Step244EntryFvFresh=
    some (s2Step244EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826],770⟩,growRow 770 s2Step244EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step244EntryFvBefore s2Step244EntryFvAfter s2Step244EntryFvRow 137 s2Step244EntryFvFresh
    s2Step244EntryFv_distinct s2Step244EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step244EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step244EntryFvRow.payload++s2Step244EntryFvFresh) s2Step244EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step244EntryGAfter : Arena := s2Step244EntryFBefore

private def s2Step244EntryGBefore : Arena := s2Step244EntryFBefore

private theorem s2Step244EntryG_Incoming : rowsOwned s2Step244EntryGBefore [s2Step244EntryGRow,s2Step244EntryFvRow,s2Step244EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step244EntryFRow,s2Step244EntryGRow,s2Step244EntryFvRow,s2Step244EntryGvRow] 1 s2Step244EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step244EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step244EntryG_Outgoing : rowsOwned s2Step244EntryGvAfter [s2Step244EntryGOut,s2Step244EntryFvOut,s2Step244EntryGvOut] :=
  hmrRows_owned_drop s2Step244EntryGvAfter [s2Step244EntryFOut,s2Step244EntryGOut,s2Step244EntryFvOut,s2Step244EntryGvOut] 1 s2Step244EntryBank_outgoingOwned

private theorem s2Step244EntryG_distinct : (s2Step244EntryGRow.sign::s2Step244EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step244EntryG_owned : (s2Step244EntryGRow.sign::s2Step244EntryGRow.payload).toFinset⊆s2Step244EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step244EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244EntryG_reserved : s2Step244EntryGBefore.reserve s2Step244EntryGFresh.toFinset=some s2Step244EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step244EntryGFresh,arenaWires]
  · norm_num [s2Step244EntryGBefore,s2Step244EntryFBefore,s2Step244EntryGFresh,arenaWires]
  · simp only [s2Step244EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step244EntryG_checked : planRowResizeLog s2Step244EntryGBefore s2Step244EntryGRow 148 s2Step244EntryGFresh=
    some (s2Step244EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],769⟩,growRow 769 s2Step244EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step244EntryGBefore s2Step244EntryGAfter s2Step244EntryGRow 148 s2Step244EntryGFresh
    s2Step244EntryG_distinct s2Step244EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step244EntryG_reserved
  have rowEq : WindowRow.mk (s2Step244EntryGRow.payload++s2Step244EntryGFresh) s2Step244EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step244EntryGvBefore : Arena := s2Step244EntryFBefore

private theorem s2Step244EntryGv_Incoming : rowsOwned s2Step244EntryGvBefore [s2Step244EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step244EntryFRow,s2Step244EntryGRow,s2Step244EntryFvRow,s2Step244EntryGvRow] 3 s2Step244EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step244EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step244EntryGv_Outgoing : rowsOwned s2Step244EntryGvAfter [s2Step244EntryGvOut] :=
  hmrRows_owned_drop s2Step244EntryGvAfter [s2Step244EntryFOut,s2Step244EntryGOut,s2Step244EntryFvOut,s2Step244EntryGvOut] 3 s2Step244EntryBank_outgoingOwned

private theorem s2Step244EntryGv_distinct : (s2Step244EntryGvRow.sign::s2Step244EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step244EntryGv_owned : (s2Step244EntryGvRow.sign::s2Step244EntryGvRow.payload).toFinset⊆s2Step244EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step244EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244EntryGv_reserved : s2Step244EntryGvBefore.reserve s2Step244EntryGvFresh.toFinset=some s2Step244EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step244EntryGvFresh,arenaWires]
  · norm_num [s2Step244EntryGvBefore,s2Step244EntryFBefore,s2Step244EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step244EntryGvAfter,s2Step244EntryGvBefore,s2Step244EntryFBefore,s2Step244EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step244EntryGv_checked : planRowResizeLog s2Step244EntryGvBefore s2Step244EntryGvRow 137 s2Step244EntryGvFresh=
    some (s2Step244EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819],771⟩,growRow 771 s2Step244EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step244EntryGvBefore s2Step244EntryGvAfter s2Step244EntryGvRow 137 s2Step244EntryGvFresh
    s2Step244EntryGv_distinct s2Step244EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step244EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step244EntryGvRow.payload++s2Step244EntryGvFresh) s2Step244EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step244EntryBank_rows : planWindowRowsLog s2Step244EntryFBefore [(s2Step244EntryFRow,148),(s2Step244EntryGRow,148),(s2Step244EntryFvRow,137),(s2Step244EntryGvRow,137)] [s2Step244EntryFFresh,s2Step244EntryGFresh,s2Step244EntryFvFresh,s2Step244EntryGvFresh]=
    some (s2Step244EntryGvAfter,[s2Step244EntryFOut,s2Step244EntryGOut,s2Step244EntryFvOut,s2Step244EntryGvOut],(growRow 768 s2Step244EntryFFresh ++ (growRow 769 s2Step244EntryGFresh ++ (growRow 770 s2Step244EntryFvFresh ++ (growRow 771 s2Step244EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step244EntryGvAfter [] []=some (s2Step244EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step244EntryGvBefore s2Step244EntryGvAfter s2Step244EntryGvAfter
    s2Step244EntryGvRow s2Step244EntryGvOut 137 s2Step244EntryGvFresh [] [] []
    (growRow 771 s2Step244EntryGvFresh) ([]) s2Step244EntryGv_Incoming s2Step244EntryGv_checked h4 s2Step244EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step244EntryFvBefore s2Step244EntryFvAfter s2Step244EntryGvAfter
    s2Step244EntryFvRow s2Step244EntryFvOut 137 s2Step244EntryFvFresh [(s2Step244EntryGvRow,137)] [s2Step244EntryGvFresh] [s2Step244EntryGvOut]
    (growRow 770 s2Step244EntryFvFresh) ((growRow 771 s2Step244EntryGvFresh ++ [])) s2Step244EntryFv_Incoming s2Step244EntryFv_checked h3 s2Step244EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step244EntryGBefore s2Step244EntryGAfter s2Step244EntryGvAfter
    s2Step244EntryGRow s2Step244EntryGOut 148 s2Step244EntryGFresh [(s2Step244EntryFvRow,137),(s2Step244EntryGvRow,137)] [s2Step244EntryFvFresh,s2Step244EntryGvFresh] [s2Step244EntryFvOut,s2Step244EntryGvOut]
    (growRow 769 s2Step244EntryGFresh) ((growRow 770 s2Step244EntryFvFresh ++ (growRow 771 s2Step244EntryGvFresh ++ []))) s2Step244EntryG_Incoming s2Step244EntryG_checked h2 s2Step244EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step244EntryFBefore s2Step244EntryFAfter s2Step244EntryGvAfter
    s2Step244EntryFRow s2Step244EntryFOut 148 s2Step244EntryFFresh [(s2Step244EntryGRow,148),(s2Step244EntryFvRow,137),(s2Step244EntryGvRow,137)] [s2Step244EntryGFresh,s2Step244EntryFvFresh,s2Step244EntryGvFresh] [s2Step244EntryGOut,s2Step244EntryFvOut,s2Step244EntryGvOut]
    (growRow 768 s2Step244EntryFFresh) ((growRow 769 s2Step244EntryGFresh ++ (growRow 770 s2Step244EntryFvFresh ++ (growRow 771 s2Step244EntryGvFresh ++ [])))) s2Step244EntryF_Incoming s2Step244EntryF_checked h1 s2Step244EntryF_Outgoing
  exact h0

private theorem s2Step244EntryBank_checked : compileHmrBankResizeLog .entry s2Step244EntryFBefore ⟨s2Step244EntryFRow,s2Step244EntryGRow,s2Step244EntryFvRow,s2Step244EntryGvRow⟩ ⟨148,148,137,137⟩ [s2Step244EntryFFresh,s2Step244EntryGFresh,s2Step244EntryFvFresh,s2Step244EntryGvFresh]=
    some (s2Step244EntryGvAfter,⟨s2Step244EntryFOut,s2Step244EntryGOut,s2Step244EntryFvOut,s2Step244EntryGvOut⟩,(growRow 768 s2Step244EntryFFresh ++ (growRow 769 s2Step244EntryGFresh ++ (growRow 770 s2Step244EntryFvFresh ++ (growRow 771 s2Step244EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step244EntryBank_rows]
  rfl

private def s2Step244ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244ExitFBefore : Arena := s2Step244ExitGAfter

private def s2Step244ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 814],768⟩

private def s2Step244ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 830],770⟩

private def s2Step244ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 831],769⟩

private def s2Step244ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 810],771⟩

private theorem s2Step244ExitBank_incomingDistinct : ([s2Step244ExitGRow,s2Step244ExitFRow,s2Step244ExitFvRow,s2Step244ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step244ExitF_Incoming : rowsOwned s2Step244ExitFBefore [s2Step244ExitFRow,s2Step244ExitFvRow,s2Step244ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step244ExitGRow,s2Step244ExitFRow,s2Step244ExitFvRow,s2Step244ExitGvRow] 1 s2Step244ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step244ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step244ExitBank_outgoingOwned : rowsOwned s2Step244ExitGvAfter [s2Step244ExitGOut,s2Step244ExitFOut,s2Step244ExitFvOut,s2Step244ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step244ExitGvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step244ExitF_Outgoing : rowsOwned s2Step244ExitGvAfter [s2Step244ExitFOut,s2Step244ExitFvOut,s2Step244ExitGvOut] :=
  hmrRows_owned_drop s2Step244ExitGvAfter [s2Step244ExitGOut,s2Step244ExitFOut,s2Step244ExitFvOut,s2Step244ExitGvOut] 1 s2Step244ExitBank_outgoingOwned

private theorem s2Step244ExitF_distinct : (s2Step244ExitFRow.sign::s2Step244ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step244ExitF_owned : (s2Step244ExitFRow.sign::s2Step244ExitFRow.payload).toFinset⊆s2Step244ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step244ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244ExitF_retired : s2Step244ExitFBefore.retireSet s2Step244ExitFExtra.toFinset=s2Step244ExitFAfter := by
  unfold Arena.retireSet s2Step244ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step244ExitFBefore,s2Step244ExitGAfter,s2Step244ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step244ExitF_checked : planRowResizeLog s2Step244ExitFBefore s2Step244ExitFRow 148 []=
    some (s2Step244ExitFAfter,s2Step244ExitFOut,shrinkRow 768 s2Step244ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step244ExitFBefore s2Step244ExitFRow 148 s2Step244ExitF_distinct s2Step244ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step244ExitFRow.payload.take 148) s2Step244ExitFRow.sign=s2Step244ExitFOut := by decide +kernel
  have hi : s2Step244ExitFRow.payload.drop 148=s2Step244ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step244ExitF_retired] at result
  exact result

private def s2Step244ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244ExitFvBefore : Arena := s2Step244ExitFAfter

private theorem s2Step244ExitFv_Incoming : rowsOwned s2Step244ExitFvBefore [s2Step244ExitFvRow,s2Step244ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step244ExitGRow,s2Step244ExitFRow,s2Step244ExitFvRow,s2Step244ExitGvRow] 2 s2Step244ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step244ExitFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step244ExitFv_Outgoing : rowsOwned s2Step244ExitGvAfter [s2Step244ExitFvOut,s2Step244ExitGvOut] :=
  hmrRows_owned_drop s2Step244ExitGvAfter [s2Step244ExitGOut,s2Step244ExitFOut,s2Step244ExitFvOut,s2Step244ExitGvOut] 2 s2Step244ExitBank_outgoingOwned

private theorem s2Step244ExitFv_distinct : (s2Step244ExitFvRow.sign::s2Step244ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step244ExitFv_owned : (s2Step244ExitFvRow.sign::s2Step244ExitFvRow.payload).toFinset⊆s2Step244ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step244ExitFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244ExitFv_retired : s2Step244ExitFvBefore.retireSet s2Step244ExitFvExtra.toFinset=s2Step244ExitFvAfter := by
  unfold Arena.retireSet s2Step244ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step244ExitFvBefore,s2Step244ExitFAfter,s2Step244ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step244ExitFv_checked : planRowResizeLog s2Step244ExitFvBefore s2Step244ExitFvRow 137 []=
    some (s2Step244ExitFvAfter,s2Step244ExitFvOut,shrinkRow 770 s2Step244ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step244ExitFvBefore s2Step244ExitFvRow 137 s2Step244ExitFv_distinct s2Step244ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step244ExitFvRow.payload.take 137) s2Step244ExitFvRow.sign=s2Step244ExitFvOut := by decide +kernel
  have hi : s2Step244ExitFvRow.payload.drop 137=s2Step244ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step244ExitFv_retired] at result
  exact result

private def s2Step244ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private theorem s2Step244ExitG_Incoming : rowsOwned s2Step244ExitGBefore [s2Step244ExitGRow,s2Step244ExitFRow,s2Step244ExitFvRow,s2Step244ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step244ExitGRow,s2Step244ExitFRow,s2Step244ExitFvRow,s2Step244ExitGvRow] 0 s2Step244ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step244ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step244ExitG_Outgoing : rowsOwned s2Step244ExitGvAfter [s2Step244ExitGOut,s2Step244ExitFOut,s2Step244ExitFvOut,s2Step244ExitGvOut] :=
  hmrRows_owned_drop s2Step244ExitGvAfter [s2Step244ExitGOut,s2Step244ExitFOut,s2Step244ExitFvOut,s2Step244ExitGvOut] 0 s2Step244ExitBank_outgoingOwned

private theorem s2Step244ExitG_distinct : (s2Step244ExitGRow.sign::s2Step244ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step244ExitG_owned : (s2Step244ExitGRow.sign::s2Step244ExitGRow.payload).toFinset⊆s2Step244ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step244ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244ExitG_retired : s2Step244ExitGBefore.retireSet s2Step244ExitGExtra.toFinset=s2Step244ExitGAfter := by
  unfold Arena.retireSet s2Step244ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step244ExitGBefore,s2Step244ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step244ExitG_checked : planRowResizeLog s2Step244ExitGBefore s2Step244ExitGRow 148 []=
    some (s2Step244ExitGAfter,s2Step244ExitGOut,shrinkRow 769 s2Step244ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step244ExitGBefore s2Step244ExitGRow 148 s2Step244ExitG_distinct s2Step244ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step244ExitGRow.payload.take 148) s2Step244ExitGRow.sign=s2Step244ExitGOut := by decide +kernel
  have hi : s2Step244ExitGRow.payload.drop 148=s2Step244ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step244ExitG_retired] at result
  exact result

private def s2Step244ExitGvBefore : Arena := s2Step244ExitFvAfter

private theorem s2Step244ExitGv_Incoming : rowsOwned s2Step244ExitGvBefore [s2Step244ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step244ExitGRow,s2Step244ExitFRow,s2Step244ExitFvRow,s2Step244ExitGvRow] 3 s2Step244ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step244ExitGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step244ExitGv_Outgoing : rowsOwned s2Step244ExitGvAfter [s2Step244ExitGvOut] :=
  hmrRows_owned_drop s2Step244ExitGvAfter [s2Step244ExitGOut,s2Step244ExitFOut,s2Step244ExitFvOut,s2Step244ExitGvOut] 3 s2Step244ExitBank_outgoingOwned

private theorem s2Step244ExitGv_distinct : (s2Step244ExitGvRow.sign::s2Step244ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step244ExitGv_owned : (s2Step244ExitGvRow.sign::s2Step244ExitGvRow.payload).toFinset⊆s2Step244ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step244ExitGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244ExitGv_retired : s2Step244ExitGvBefore.retireSet s2Step244ExitGvExtra.toFinset=s2Step244ExitGvAfter := by
  unfold Arena.retireSet s2Step244ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step244ExitGvBefore,s2Step244ExitFvAfter,s2Step244ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step244ExitGv_checked : planRowResizeLog s2Step244ExitGvBefore s2Step244ExitGvRow 137 []=
    some (s2Step244ExitGvAfter,s2Step244ExitGvOut,shrinkRow 771 s2Step244ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step244ExitGvBefore s2Step244ExitGvRow 137 s2Step244ExitGv_distinct s2Step244ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step244ExitGvRow.payload.take 137) s2Step244ExitGvRow.sign=s2Step244ExitGvOut := by decide +kernel
  have hi : s2Step244ExitGvRow.payload.drop 137=s2Step244ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step244ExitGv_retired] at result
  exact result

private theorem s2Step244ExitBank_rows : planWindowRowsLog s2Step244ExitGBefore [(s2Step244ExitGRow,148),(s2Step244ExitFRow,148),(s2Step244ExitFvRow,137),(s2Step244ExitGvRow,137)] [[],[],[],[]]=
    some (s2Step244ExitGvAfter,[s2Step244ExitGOut,s2Step244ExitFOut,s2Step244ExitFvOut,s2Step244ExitGvOut],(shrinkRow 769 s2Step244ExitGExtra ++ (shrinkRow 768 s2Step244ExitFExtra ++ (shrinkRow 770 s2Step244ExitFvExtra ++ (shrinkRow 771 s2Step244ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step244ExitGvAfter [] []=some (s2Step244ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step244ExitGvBefore s2Step244ExitGvAfter s2Step244ExitGvAfter
    s2Step244ExitGvRow s2Step244ExitGvOut 137 [] [] [] []
    (shrinkRow 771 s2Step244ExitGvExtra) ([]) s2Step244ExitGv_Incoming s2Step244ExitGv_checked h4 s2Step244ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step244ExitFvBefore s2Step244ExitFvAfter s2Step244ExitGvAfter
    s2Step244ExitFvRow s2Step244ExitFvOut 137 [] [(s2Step244ExitGvRow,137)] [[]] [s2Step244ExitGvOut]
    (shrinkRow 770 s2Step244ExitFvExtra) ((shrinkRow 771 s2Step244ExitGvExtra ++ [])) s2Step244ExitFv_Incoming s2Step244ExitFv_checked h3 s2Step244ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step244ExitFBefore s2Step244ExitFAfter s2Step244ExitGvAfter
    s2Step244ExitFRow s2Step244ExitFOut 148 [] [(s2Step244ExitFvRow,137),(s2Step244ExitGvRow,137)] [[],[]] [s2Step244ExitFvOut,s2Step244ExitGvOut]
    (shrinkRow 768 s2Step244ExitFExtra) ((shrinkRow 770 s2Step244ExitFvExtra ++ (shrinkRow 771 s2Step244ExitGvExtra ++ []))) s2Step244ExitF_Incoming s2Step244ExitF_checked h2 s2Step244ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step244ExitGBefore s2Step244ExitGAfter s2Step244ExitGvAfter
    s2Step244ExitGRow s2Step244ExitGOut 148 [] [(s2Step244ExitFRow,148),(s2Step244ExitFvRow,137),(s2Step244ExitGvRow,137)] [[],[],[]] [s2Step244ExitFOut,s2Step244ExitFvOut,s2Step244ExitGvOut]
    (shrinkRow 769 s2Step244ExitGExtra) ((shrinkRow 768 s2Step244ExitFExtra ++ (shrinkRow 770 s2Step244ExitFvExtra ++ (shrinkRow 771 s2Step244ExitGvExtra ++ [])))) s2Step244ExitG_Incoming s2Step244ExitG_checked h1 s2Step244ExitG_Outgoing
  exact h0

private theorem s2Step244ExitBank_checked : compileHmrBankResizeLog .exit s2Step244ExitGBefore ⟨s2Step244ExitFRow,s2Step244ExitGRow,s2Step244ExitFvRow,s2Step244ExitGvRow⟩ ⟨148,148,137,137⟩ [[],[],[],[]]=
    some (s2Step244ExitGvAfter,⟨s2Step244ExitFOut,s2Step244ExitGOut,s2Step244ExitFvOut,s2Step244ExitGvOut⟩,(shrinkRow 769 s2Step244ExitGExtra ++ (shrinkRow 768 s2Step244ExitFExtra ++ (shrinkRow 770 s2Step244ExitFvExtra ++ (shrinkRow 771 s2Step244ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step244ExitBank_rows]
  rfl

private theorem s2Step244Add0_apart : Disjoint s2Step244Add0Arena.live s2Step244Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step244Add0Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244Add0_card : s2Step244Add0Arena.live.card=895 := by
  decide +kernel

private theorem s2Step244Add0_borrowed : s2Step244Add0Arena.checkBorrow (hmrHybridCount s2Step244Add0Arena s2Step244Add0B.length) s2Step244Add0Work=some s2Step244Add0During := by
  have len : s2Step244Add0Work.length=hmrHybridCount s2Step244Add0Arena s2Step244Add0B.length := by
    rw [hmrHybridCount,s2Step244Add0_card]
    decide +kernel
  have nd : s2Step244Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step244Add0Arena s2Step244Add0During s2Step244Add0Work.toFinset s2Step244Add0_bounded s2Step244Add0_apart rfl

private theorem s2Step244Add0_distinct : (842::802::834::(s2Step244Add0A++s2Step244Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step244Add0_owned : (842::802::834::(s2Step244Add0A++s2Step244Add0B)).toFinset⊆s2Step244Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step244Add0Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244Add0_checked : compileHmrHybridCinLog s2Step244Add0Arena 802 842 834 s2Step244Add0A s2Step244Add0B s2Step244Add0Work=some s2Step244Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step244Add0Arena s2Step244Add0During 802 842 834 s2Step244Add0A s2Step244Add0B s2Step244Add0Work
    (by decide +kernel) (by decide +kernel) s2Step244Add0_distinct
    (fun q hq => s2Step244Add0_owned (List.mem_toFinset.mpr hq)) s2Step244Add0_borrowed

private theorem s2Step244Add1_apart : Disjoint s2Step244Add1Arena.live s2Step244Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step244Add1Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244Add1_card : s2Step244Add1Arena.live.card=895 := by
  decide +kernel

private theorem s2Step244Add1_borrowed : s2Step244Add1Arena.checkBorrow (hmrHybridCount s2Step244Add1Arena s2Step244Add1B.length) s2Step244Add1Work=some s2Step244Add1During := by
  have len : s2Step244Add1Work.length=hmrHybridCount s2Step244Add1Arena s2Step244Add1B.length := by
    rw [hmrHybridCount,s2Step244Add1_card]
    decide +kernel
  have nd : s2Step244Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step244Add1Arena s2Step244Add1During s2Step244Add1Work.toFinset s2Step244Add1_bounded s2Step244Add1_apart rfl

private theorem s2Step244Add1_distinct : (842::802::834::(s2Step244Add1A++s2Step244Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step244Add1_owned : (842::802::834::(s2Step244Add1A++s2Step244Add1B)).toFinset⊆s2Step244Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step244Add1Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244Add1_checked : compileHmrHybridCinLog s2Step244Add1Arena 802 842 834 s2Step244Add1A s2Step244Add1B s2Step244Add1Work=some s2Step244Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step244Add1Arena s2Step244Add1During 802 842 834 s2Step244Add1A s2Step244Add1B s2Step244Add1Work
    (by decide +kernel) (by decide +kernel) s2Step244Add1_distinct
    (fun q hq => s2Step244Add1_owned (List.mem_toFinset.mpr hq)) s2Step244Add1_borrowed

private theorem s2Step244F4_apart : Disjoint (s2Step244Add0A++s2Step244Add0B).toFinset (s2Step244Add1A++s2Step244Add1B).toFinset := by
  have nd : ((s2Step244Add0A++s2Step244Add0B)++(s2Step244Add1A++s2Step244Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step244F4_carry : s2Step244F4FlagArena.checkBorrow 1 [834]=some s2Step244Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step244F4FlagArena,s2Step244HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step244F4FlagArena,s2Step244HeadFvAfter,s2Step244Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step244F4_distinct : (809::802::842::834::((s2Step244Add0A++s2Step244Add1A)++(s2Step244Add0B++s2Step244Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step244F4_flag : s2Step244HeadFvAfter.checkBorrow 1 [842]=some s2Step244F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step244HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step244F4_owned : (809::802::((s2Step244Add0A++s2Step244Add1A)++(s2Step244Add0B++s2Step244Add1B))).toFinset⊆s2Step244HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step244HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244F4_checked : compileHmrHybridF4Log s2Step244HeadFvAfter 809 802 s2Step244Add0A s2Step244Add0B s2Step244Add1A s2Step244Add1B [842] [834] s2Step244Add0Work s2Step244Add1Work=some s2Step244F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step244HeadFvAfter s2Step244F4FlagArena s2Step244Add0Arena s2Step244Add0During s2Step244Add1During 809 802
    s2Step244Add0A s2Step244Add0B s2Step244Add1A s2Step244Add1B [842] [834] s2Step244Add0Work s2Step244Add1Work
    (fun q hq => s2Step244F4_owned (List.mem_toFinset.mpr hq)) s2Step244F4_flag s2Step244F4_carry
    s2Step244F4_distinct s2Step244F4_apart s2Step244Add0_checked s2Step244Add1_checked

private theorem s2Step244Front_branch : s2Step244FrontSigmaArena.checkBorrow 1 [802]=some s2Step244HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step244FrontSigmaArena,s2Step244EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step244FrontSigmaArena,s2Step244EntryGvAfter,s2Step244HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step244Front_entry : HmrFrontEntryValid s2Step244EntryFBefore s2Step244FrontBank 148 137 ⟨148,148,137,137⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step244FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step244EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step244EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step244FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step244Front_sigma : s2Step244EntryGvAfter.checkBorrow 1 [809]=some s2Step244FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step244EntryGvAfter,arenaWires]
  · rfl

private def s2Step244HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244HeadFBefore : Arena := s2Step244HeadGAfter

private def s2Step244HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659],768⟩

private def s2Step244HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826],770⟩

private def s2Step244HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],769⟩

private def s2Step244HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819],771⟩

private theorem s2Step244HeadBank_incomingDistinct : ([s2Step244HeadGRow,s2Step244HeadFRow,s2Step244HeadGvRow,s2Step244HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step244HeadF_Incoming : rowsOwned s2Step244HeadFBefore [s2Step244HeadFRow,s2Step244HeadGvRow,s2Step244HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step244HeadGRow,s2Step244HeadFRow,s2Step244HeadGvRow,s2Step244HeadFvRow] 1 s2Step244HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step244HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step244HeadBank_outgoingOwned : rowsOwned s2Step244HeadFvAfter [s2Step244HeadGOut,s2Step244HeadFOut,s2Step244HeadGvOut,s2Step244HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step244HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step244HeadF_Outgoing : rowsOwned s2Step244HeadFvAfter [s2Step244HeadFOut,s2Step244HeadGvOut,s2Step244HeadFvOut] :=
  hmrRows_owned_drop s2Step244HeadFvAfter [s2Step244HeadGOut,s2Step244HeadFOut,s2Step244HeadGvOut,s2Step244HeadFvOut] 1 s2Step244HeadBank_outgoingOwned

private theorem s2Step244HeadF_distinct : (s2Step244HeadFRow.sign::s2Step244HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step244HeadF_owned : (s2Step244HeadFRow.sign::s2Step244HeadFRow.payload).toFinset⊆s2Step244HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step244HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244HeadF_reserved : s2Step244HeadFBefore.reserve s2Step244HeadFFresh.toFinset=some s2Step244HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step244HeadFFresh,arenaWires]
  · norm_num [s2Step244HeadFBefore,s2Step244HeadGAfter,s2Step244HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step244HeadFAfter,s2Step244HeadFBefore,s2Step244HeadGAfter,s2Step244HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step244HeadF_checked : planRowResizeLog s2Step244HeadFBefore s2Step244HeadFRow 149 s2Step244HeadFFresh=
    some (s2Step244HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 814],768⟩,growRow 768 s2Step244HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step244HeadFBefore s2Step244HeadFAfter s2Step244HeadFRow 149 s2Step244HeadFFresh
    s2Step244HeadF_distinct s2Step244HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step244HeadF_reserved
  have rowEq : WindowRow.mk (s2Step244HeadFRow.payload++s2Step244HeadFFresh) s2Step244HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 814],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step244HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step244HeadFvBefore : Arena := s2Step244HeadGvAfter

private theorem s2Step244HeadFv_Incoming : rowsOwned s2Step244HeadFvBefore [s2Step244HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step244HeadGRow,s2Step244HeadFRow,s2Step244HeadGvRow,s2Step244HeadFvRow] 3 s2Step244HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step244HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step244HeadFv_Outgoing : rowsOwned s2Step244HeadFvAfter [s2Step244HeadFvOut] :=
  hmrRows_owned_drop s2Step244HeadFvAfter [s2Step244HeadGOut,s2Step244HeadFOut,s2Step244HeadGvOut,s2Step244HeadFvOut] 3 s2Step244HeadBank_outgoingOwned

private theorem s2Step244HeadFv_distinct : (s2Step244HeadFvRow.sign::s2Step244HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step244HeadFv_owned : (s2Step244HeadFvRow.sign::s2Step244HeadFvRow.payload).toFinset⊆s2Step244HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step244HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244HeadFv_reserved : s2Step244HeadFvBefore.reserve s2Step244HeadFvFresh.toFinset=some s2Step244HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step244HeadFvFresh,arenaWires]
  · norm_num [s2Step244HeadFvBefore,s2Step244HeadGvAfter,s2Step244HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step244HeadFvAfter,s2Step244HeadFvBefore,s2Step244HeadGvAfter,s2Step244HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step244HeadFv_checked : planRowResizeLog s2Step244HeadFvBefore s2Step244HeadFvRow 138 s2Step244HeadFvFresh=
    some (s2Step244HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 830],770⟩,growRow 770 s2Step244HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step244HeadFvBefore s2Step244HeadFvAfter s2Step244HeadFvRow 138 s2Step244HeadFvFresh
    s2Step244HeadFv_distinct s2Step244HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step244HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step244HeadFvRow.payload++s2Step244HeadFvFresh) s2Step244HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 830],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step244HeadG_Incoming : rowsOwned s2Step244HeadGBefore [s2Step244HeadGRow,s2Step244HeadFRow,s2Step244HeadGvRow,s2Step244HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step244HeadGRow,s2Step244HeadFRow,s2Step244HeadGvRow,s2Step244HeadFvRow] 0 s2Step244HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step244HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step244HeadG_Outgoing : rowsOwned s2Step244HeadFvAfter [s2Step244HeadGOut,s2Step244HeadFOut,s2Step244HeadGvOut,s2Step244HeadFvOut] :=
  hmrRows_owned_drop s2Step244HeadFvAfter [s2Step244HeadGOut,s2Step244HeadFOut,s2Step244HeadGvOut,s2Step244HeadFvOut] 0 s2Step244HeadBank_outgoingOwned

private theorem s2Step244HeadG_distinct : (s2Step244HeadGRow.sign::s2Step244HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step244HeadG_owned : (s2Step244HeadGRow.sign::s2Step244HeadGRow.payload).toFinset⊆s2Step244HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step244HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244HeadG_reserved : s2Step244HeadGBefore.reserve s2Step244HeadGFresh.toFinset=some s2Step244HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step244HeadGFresh,arenaWires]
  · norm_num [s2Step244HeadGBefore,s2Step244HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step244HeadGAfter,s2Step244HeadGBefore,s2Step244HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step244HeadG_checked : planRowResizeLog s2Step244HeadGBefore s2Step244HeadGRow 149 s2Step244HeadGFresh=
    some (s2Step244HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 831],769⟩,growRow 769 s2Step244HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step244HeadGBefore s2Step244HeadGAfter s2Step244HeadGRow 149 s2Step244HeadGFresh
    s2Step244HeadG_distinct s2Step244HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step244HeadG_reserved
  have rowEq : WindowRow.mk (s2Step244HeadGRow.payload++s2Step244HeadGFresh) s2Step244HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 831],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step244HeadGvBefore : Arena := s2Step244HeadFAfter

private theorem s2Step244HeadGv_Incoming : rowsOwned s2Step244HeadGvBefore [s2Step244HeadGvRow,s2Step244HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step244HeadGRow,s2Step244HeadFRow,s2Step244HeadGvRow,s2Step244HeadFvRow] 2 s2Step244HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step244HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step244HeadGv_Outgoing : rowsOwned s2Step244HeadFvAfter [s2Step244HeadGvOut,s2Step244HeadFvOut] :=
  hmrRows_owned_drop s2Step244HeadFvAfter [s2Step244HeadGOut,s2Step244HeadFOut,s2Step244HeadGvOut,s2Step244HeadFvOut] 2 s2Step244HeadBank_outgoingOwned

private theorem s2Step244HeadGv_distinct : (s2Step244HeadGvRow.sign::s2Step244HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step244HeadGv_owned : (s2Step244HeadGvRow.sign::s2Step244HeadGvRow.payload).toFinset⊆s2Step244HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step244HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step244HeadGv_reserved : s2Step244HeadGvBefore.reserve s2Step244HeadGvFresh.toFinset=some s2Step244HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step244HeadGvFresh,arenaWires]
  · norm_num [s2Step244HeadGvBefore,s2Step244HeadFAfter,s2Step244HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step244HeadGvAfter,s2Step244HeadGvBefore,s2Step244HeadFAfter,s2Step244HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step244HeadGv_checked : planRowResizeLog s2Step244HeadGvBefore s2Step244HeadGvRow 138 s2Step244HeadGvFresh=
    some (s2Step244HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 810],771⟩,growRow 771 s2Step244HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step244HeadGvBefore s2Step244HeadGvAfter s2Step244HeadGvRow 138 s2Step244HeadGvFresh
    s2Step244HeadGv_distinct s2Step244HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step244HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step244HeadGvRow.payload++s2Step244HeadGvFresh) s2Step244HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 810],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step244HeadBank_rows : planWindowRowsLog s2Step244HeadGBefore [(s2Step244HeadGRow,149),(s2Step244HeadFRow,149),(s2Step244HeadGvRow,138),(s2Step244HeadFvRow,138)] [s2Step244HeadGFresh,s2Step244HeadFFresh,s2Step244HeadGvFresh,s2Step244HeadFvFresh]=
    some (s2Step244HeadFvAfter,[s2Step244HeadGOut,s2Step244HeadFOut,s2Step244HeadGvOut,s2Step244HeadFvOut],(growRow 769 s2Step244HeadGFresh ++ (growRow 768 s2Step244HeadFFresh ++ (growRow 771 s2Step244HeadGvFresh ++ (growRow 770 s2Step244HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step244HeadFvAfter [] []=some (s2Step244HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step244HeadFvBefore s2Step244HeadFvAfter s2Step244HeadFvAfter
    s2Step244HeadFvRow s2Step244HeadFvOut 138 s2Step244HeadFvFresh [] [] []
    (growRow 770 s2Step244HeadFvFresh) ([]) s2Step244HeadFv_Incoming s2Step244HeadFv_checked h4 s2Step244HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step244HeadGvBefore s2Step244HeadGvAfter s2Step244HeadFvAfter
    s2Step244HeadGvRow s2Step244HeadGvOut 138 s2Step244HeadGvFresh [(s2Step244HeadFvRow,138)] [s2Step244HeadFvFresh] [s2Step244HeadFvOut]
    (growRow 771 s2Step244HeadGvFresh) ((growRow 770 s2Step244HeadFvFresh ++ [])) s2Step244HeadGv_Incoming s2Step244HeadGv_checked h3 s2Step244HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step244HeadFBefore s2Step244HeadFAfter s2Step244HeadFvAfter
    s2Step244HeadFRow s2Step244HeadFOut 149 s2Step244HeadFFresh [(s2Step244HeadGvRow,138),(s2Step244HeadFvRow,138)] [s2Step244HeadGvFresh,s2Step244HeadFvFresh] [s2Step244HeadGvOut,s2Step244HeadFvOut]
    (growRow 768 s2Step244HeadFFresh) ((growRow 771 s2Step244HeadGvFresh ++ (growRow 770 s2Step244HeadFvFresh ++ []))) s2Step244HeadF_Incoming s2Step244HeadF_checked h2 s2Step244HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step244HeadGBefore s2Step244HeadGAfter s2Step244HeadFvAfter
    s2Step244HeadGRow s2Step244HeadGOut 149 s2Step244HeadGFresh [(s2Step244HeadFRow,149),(s2Step244HeadGvRow,138),(s2Step244HeadFvRow,138)] [s2Step244HeadFFresh,s2Step244HeadGvFresh,s2Step244HeadFvFresh] [s2Step244HeadFOut,s2Step244HeadGvOut,s2Step244HeadFvOut]
    (growRow 769 s2Step244HeadGFresh) ((growRow 768 s2Step244HeadFFresh ++ (growRow 771 s2Step244HeadGvFresh ++ (growRow 770 s2Step244HeadFvFresh ++ [])))) s2Step244HeadG_Incoming s2Step244HeadG_checked h1 s2Step244HeadG_Outgoing
  exact h0

private theorem s2Step244HeadBank_checked : compileHmrBankResizeLog .headroom s2Step244HeadGBefore ⟨s2Step244HeadFRow,s2Step244HeadGRow,s2Step244HeadFvRow,s2Step244HeadGvRow⟩ ⟨149,149,138,138⟩ [s2Step244HeadGFresh,s2Step244HeadFFresh,s2Step244HeadGvFresh,s2Step244HeadFvFresh]=
    some (s2Step244HeadFvAfter,⟨s2Step244HeadFOut,s2Step244HeadGOut,s2Step244HeadFvOut,s2Step244HeadGvOut⟩,(growRow 769 s2Step244HeadGFresh ++ (growRow 768 s2Step244HeadFFresh ++ (growRow 771 s2Step244HeadGvFresh ++ (growRow 770 s2Step244HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step244HeadBank_rows]
  rfl

private theorem s2Step244Front_checked : compileHmrSourceFrontLog s2Step244EntryFBefore s2Step244FrontBank 148 137 ⟨148,148,137,137⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step244FrontLog=some s2Step244FrontPlan := by
  have pairEq : s2Step244FrontPair=⟨s2Step244HeadFRow,s2Step244HeadGRow,s2Step244HeadFvRow,s2Step244HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step244FrontHead=⟨s2Step244ExitFRow,s2Step244ExitGRow,s2Step244ExitFvRow,s2Step244ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step244Add0A=s2Step244FrontHead.f.wires := by decide +kernel
  have gEq : s2Step244Add0B=s2Step244FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step244Add1A=s2Step244FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step244Add1B=s2Step244FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step244EntryFBefore s2Step244FrontBank 148 137 ⟨148,148,137,137⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step244FrontLog s2Step244FrontPlan
  · exact s2Step244Front_entry
  · exact s2Step244EntryBank_checked
  · exact s2Step244Front_sigma
  · rfl
  · exact s2Step244Front_branch
  · rfl
  · simpa only [s2Step244FrontPlan,pairEq] using s2Step244HeadBank_checked
  · simpa only [s2Step244FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step244F4_checked
  · exact s2Step244Counter_checked
  · rfl
  · simpa only [s2Step244FrontPlan,headEq] using s2Step244ExitBank_checked

private theorem s2Step244Complete_explicit_checked : compileHmrEarlyStepLog s2Step244EntryFBefore s2Step244FrontBank 148 137 ⟨148,148,137,137⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step244CompleteLog=some s2Step244CompletePlan := by
  let Q := s2Step244EarlyControlPlan
  have hq := s2Step244EarlyControl_plan_checked
  have fv1 : s2Step244CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step244CompleteOut.fv.payload[2]?.getD s2Step244CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step244CompleteOut.fv.payload[3]?.getD s2Step244CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step244CompleteOut.fv.payload[4]?.getD s2Step244CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step244EntryFBefore s2Step244EarlyControlArena s2Step244FrontBank 148 137 ⟨148,148,137,137⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step244CompleteLog s2Step244FrontPlan Q
    s2Step244Front_checked s2Step244Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step244Complete_owned s2Step244Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step244EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 809 s2Step244CompleteOut.fv.second (s2Step244CompleteOut.fv.payload[2]?.getD s2Step244CompleteOut.fv.sign) (s2Step244CompleteOut.fv.payload[3]?.getD s2Step244CompleteOut.fv.sign) (s2Step244CompleteOut.fv.payload[4]?.getD s2Step244CompleteOut.fv.sign) 802 51 s2Step244EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep244Arena : Arena := s2Step244EntryFBefore
def s2PrivateStep244Bank : WindowBank := s2Step244FrontBank
def s2PrivateStep244Spec : HmrSourceWalkStepLog := ⟨148,137,⟨148,148,137,137⟩,51,.early s2Step244CompleteLog⟩
def s2PrivateStep244Plan : HmrSourceStepPlan := .early s2Step244CompletePlan
theorem s2PrivateStep244_source : s2PrivateStep244Spec=s2ObservedLogs240[4] := rfl
theorem s2PrivateStep244_checked : compileHmrSourceStepLog s2PrivateStep244Arena s2PrivateStep244Bank
    s2PrivateStep244Spec.fgWidth s2PrivateStep244Spec.vWidth s2PrivateStep244Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]
    6 498 244 s2PrivateStep244Spec.need none s2PrivateStep244Spec.log=some s2PrivateStep244Plan := by
  change compileHmrSourceStepLog s2Step244EntryFBefore s2Step244FrontBank 148 137 ⟨148,148,137,137⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 6 498 244 51 none (.early s2Step244CompleteLog)=some (.early s2Step244CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 244<498)]
  rw [s2Step244Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
