import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep244
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

private def s2Step246CompleteMoves : List (Wire × Wire) := [(799,146)]

private def s2Step246EarlyControlLog : HmrEarlyControlLog := ⟨[799, 809, 830, 810, 814],[824],[842],[834, 792, 800, 885, 891, 894],[]⟩

private def s2Step246FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [809]],[[824], [814], [830], [810]],[[], [], [], []]⟩,[802],[835],[842],[834],[792, 800, 885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[792, 800, 885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[842, 834, 792, 800]⟩

private def s2Step246CompleteLog : HmrEarlyStepLog := ⟨s2Step246FrontLog,s2Step246CompleteMoves,s2Step246EarlyControlLog⟩

private def s2Step246ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩

private def s2Step246ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831],770⟩

private def s2Step246ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145],769⟩

private def s2Step246ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819],771⟩

private def s2Step246FrontOut : WindowBank := ⟨s2Step246ExitFOut,s2Step246ExitGOut,s2Step246ExitFvOut,s2Step246ExitGvOut⟩

private def s2Step246CompleteOut : WindowBank := s2Step246FrontOut.repacked s2Step246CompleteMoves

private def s2Step246EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step246EarlyControlPositiveArena,[824],s2Step246EarlyControlEqualityArena,[842],⟨⟨802,false⟩,[⟨⟨824,false⟩,842⟩]⟩⟩

private def s2Step246EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,799⟩,⟨⟨774,false⟩,809⟩,⟨⟨775,false⟩,830⟩,⟨⟨776,false⟩,810⟩,⟨⟨777,false⟩,814⟩]⟩

private def s2Step246EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step246EarlyControlZeroArena,s2Step246EarlyControlZeroPlan,s2Step246EarlyControlClassPlan,s2Step246EarlyControlFlagArena,s2Step246EarlyControlFittedArena,s2Step246EarlyControlHistoryArena,s2Step246EarlyControlSigmaArena,s2Step246EarlyControlOutputArena,s2Step246EarlyControlLog⟩

private def s2Step246CounterWork : List Wire := [842, 834, 792, 800]

private theorem s2Step246Counter_bounded : s2Step246CounterWork.toFinset⊆arenaWires := by norm_num [s2Step246CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step246HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246CounterDuring : Arena := ⟨s2Step246HeadFvAfter.live∪s2Step246CounterWork.toFinset,Finset.union_subset s2Step246HeadFvAfter.bounded s2Step246Counter_bounded⟩

private def s2Step246EntryFFresh : List Wire := []

private def s2Step246EntryFvFresh : List Wire := []

private def s2Step246EntryGFresh : List Wire := []

private def s2Step246EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246EntryGvFresh : List Wire := [809]

private def s2Step246ExitFExtra : List Wire := [814]

private def s2Step246ExitFvExtra : List Wire := [810]

private def s2Step246ExitGExtra : List Wire := [146, 824]

private def s2Step246ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246ExitGvExtra : List Wire := [809, 830]

private def s2Step246Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246Add0Work : List Wire := [792, 800, 885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step246Add0_bounded : s2Step246Add0Work.toFinset⊆arenaWires := by
  have h : s2Step246Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step246Add0During : Arena := ⟨s2Step246Add0Arena.live∪s2Step246Add0Work.toFinset,Finset.union_subset s2Step246Add0Arena.bounded s2Step246Add0_bounded⟩

private def s2Step246Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246Add1Work : List Wire := [792, 800, 885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step246Add1_bounded : s2Step246Add1Work.toFinset⊆arenaWires := by
  have h : s2Step246Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step246Add1During : Arena := ⟨s2Step246Add1Arena.live∪s2Step246Add1Work.toFinset,Finset.union_subset s2Step246Add1Arena.bounded s2Step246Add1_bounded⟩

private def s2Step246F4FlagArena : Arena := ⟨s2Step246HeadFvAfter.live∪{842},Finset.union_subset s2Step246HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step246F4Plan : HmrHybridF4Plan := ⟨s2Step246F4FlagArena,[842],s2Step246Add0Arena,[834],s2Step246Add0During,s2Step246Add0Work,s2Step246Add1During,s2Step246Add1Work⟩

private def s2Step246HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 814],768⟩

private def s2Step246HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 810],770⟩

private def s2Step246HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 824],769⟩

private def s2Step246HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 809, 830],771⟩

private def s2Step246FrontHead : WindowBank := ⟨s2Step246HeadFOut,s2Step246HeadGOut,s2Step246HeadFvOut,s2Step246HeadGvOut⟩

private def s2Step246EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩

private def s2Step246EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831],770⟩

private def s2Step246EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146],769⟩

private def s2Step246EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 809],771⟩

private def s2Step246FrontPair : WindowBank := ⟨s2Step246EntryFOut,s2Step246EntryGOut,s2Step246EntryFvOut,s2Step246EntryGvOut⟩

private def s2Step246FrontSigmaArena : Arena := ⟨s2Step246EntryGvAfter.live∪{802},Finset.union_subset s2Step246EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step246HeadFFresh : List Wire := [814]

private def s2Step246HeadFvFresh : List Wire := [810]

private def s2Step246HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246HeadGFresh : List Wire := [824]

private def s2Step246HeadGvFresh : List Wire := [830]

private def s2Step246FrontPlan : HmrSourceFront := ⟨s2Step246EntryGvAfter,s2Step246FrontPair,(growRow 768 s2Step246EntryFFresh ++ (growRow 769 s2Step246EntryGFresh ++ (growRow 770 s2Step246EntryFvFresh ++ (growRow 771 s2Step246EntryGvFresh ++ [])))),s2Step246FrontSigmaArena,[802],s2Step246HeadGBefore,[835],
  s2Step246HeadFvAfter,s2Step246FrontHead,(growRow 769 s2Step246HeadGFresh ++ (growRow 768 s2Step246HeadFFresh ++ (growRow 771 s2Step246HeadGvFresh ++ (growRow 770 s2Step246HeadFvFresh ++ [])))),s2Step246F4Plan,s2Step246CounterDuring,s2Step246CounterWork,s2Step246ExitGvAfter,s2Step246FrontOut,(shrinkRow 769 s2Step246ExitGExtra ++ (shrinkRow 768 s2Step246ExitFExtra ++ (shrinkRow 770 s2Step246ExitFvExtra ++ (shrinkRow 771 s2Step246ExitGvExtra ++ []))))⟩

private def s2Step246CompletePlan : HmrEarlyStepPlan := ⟨s2Step246FrontPlan,s2Step246EarlyControlArena,s2Step246EarlyControlPlan,s2Step246CompleteMoves⟩

private theorem s2Step246Complete_apart : List.Disjoint (s2Step246CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [802, 835, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := by
  have nd : ((s2Step246CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[802, 835, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step246Complete_owned : (s2Step246CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step246EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step246EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private def s2Step246CompleteMoveArena : Arena := ⟨s2Step246ExitGvAfter.live∪{146},Finset.union_subset s2Step246ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step246Complete_repack : s2Step246ExitGvAfter.checkRepack s2Step246CompleteMoves=some s2Step246EarlyControlArena := by
  have owned : 799∈s2Step246ExitGvAfter.live := by norm_num [s2Step246ExitGvAfter,arenaWires]
  have reserve : s2Step246ExitGvAfter.reserve {146}=some s2Step246CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step246ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step246CompleteMoveArena.retireSet {799}=s2Step246EarlyControlArena := by
    unfold Arena.retireSet s2Step246EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step246CompleteMoveArena,s2Step246ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step246CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step246CompleteMoveArena.retireSet {799}).checkRepack []=some s2Step246EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step246EarlyControl_branchOwned : ([835] : List Wire).toFinset⊆s2Step246EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step246EarlyControlSigmaArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246EarlyControl_branch : compileHmrBranchRetirement s2Step246EarlyControlSigmaArena 835=some s2Step246EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step246EarlyControl_branchOwned
  · ext q
    simp [s2Step246EarlyControlOutputArena,s2Step246EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step246EarlyControl_classEqualityBorrow : s2Step246EarlyControlPositiveArena.checkBorrow (([802, 824] : List Wire).length-1) s2Step246EarlyControlLog.classWork=some s2Step246EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step246EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step246EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step246EarlyControlEqualityArena,s2Step246EarlyControlPositiveArena,s2Step246EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step246EarlyControl_classEqualityOwned : ([802, 824] : List Wire).toFinset⊆s2Step246EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step246EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246EarlyControl_classEquality : compileHmrEqualityLog s2Step246EarlyControlPositiveArena [802, 824] 0 s2Step246EarlyControlLog.classWork=some (s2Step246EarlyControlEqualityArena,s2Step246EarlyControlLog.classWork,s2Step246EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step246EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step246EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step246EarlyControl_classOwned : ([777, 814, 802] : List Wire).toFinset⊆s2Step246EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step246EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246EarlyControl_positiveBorrow : s2Step246EarlyControlZeroArena.checkBorrow (1) s2Step246EarlyControlLog.positiveWork=some s2Step246EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step246EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step246EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step246EarlyControlPositiveArena,s2Step246EarlyControlZeroArena,s2Step246EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step246EarlyControl_class : compileHmrSourceClassLog s2Step246EarlyControlZeroArena false 777 s2Step246EarlyControlZeroPlan.top 0 802 s2Step246EarlyControlLog.positiveWork s2Step246EarlyControlLog.classWork=some s2Step246EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step246EarlyControlClassPlan s2Step246EarlyControlZeroArena false 777 s2Step246EarlyControlZeroPlan.top 0 802
  constructor
  · decide +kernel
  · exact s2Step246EarlyControl_classOwned
  · exact s2Step246EarlyControl_positiveBorrow
  · exact s2Step246EarlyControl_classEquality

private theorem s2Step246EarlyControl_entryRecordOwned : ([835, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step246EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step246EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246EarlyControl_entrySigmaOwned : ([802, 254] : List Wire).toFinset⊆s2Step246EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step246EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246EarlyControl_fitBorrow : s2Step246EarlyControlFlagArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step246EarlyControlLog.recordFresh=some s2Step246EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step246EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step246EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step246EarlyControlFittedArena,s2Step246EarlyControlFlagArena,s2Step246EarlyControlLog,arenaWires]

private theorem s2Step246EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step246EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step246EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246EarlyControl_fit : compileHmrRecordGrowLog s2Step246EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step246EarlyControlLog.recordFresh=some s2Step246EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step246EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step246EarlyControl_fitBorrow

private theorem s2Step246EarlyControl_flagsBorrow : s2Step246EarlyControlEqualityArena.checkBorrow (6) s2Step246EarlyControlLog.flagWork=some s2Step246EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step246EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step246EarlyControlEqualityArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step246EarlyControlFlagArena,s2Step246EarlyControlEqualityArena,s2Step246EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step246EarlyControl_flagsOwned : ([842, 253, 252, 251] : List Wire).toFinset⊆s2Step246EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step246EarlyControlEqualityArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246EarlyControl_flags : compileHmrFlagsLog s2Step246EarlyControlClassPlan.equalityArena s2Step246EarlyControlClassPlan.equality.top 253 252 251 s2Step246EarlyControlLog.flagWork=some s2Step246EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step246EarlyControl_flagsOwned⟩
  · exact s2Step246EarlyControl_flagsBorrow

private theorem s2Step246EarlyControl_historyBorrow : s2Step246EarlyControlArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step246EarlyControlLog.recordFresh=some s2Step246EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step246EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step246EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step246EarlyControlHistoryArena,s2Step246EarlyControlArena,s2Step246EarlyControlLog,arenaWires]

private theorem s2Step246EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step246EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step246EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246EarlyControl_history : compileHmrRecordGrowLog s2Step246EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step246EarlyControlLog.recordFresh=some s2Step246EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step246EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step246EarlyControl_historyBorrow

private theorem s2Step246EarlyControl_sigmaOwned : ([254, 802] : List Wire).toFinset⊆s2Step246EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step246EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246EarlyControl_sigmaReleaseOwned : ([802] : List Wire).toFinset⊆s2Step246EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step246EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246EarlyControl_sigmaRelease : s2Step246EarlyControlHistoryArena.release {802} (fun _ => false)=some s2Step246EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step246EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step246EarlyControlSigmaArena,s2Step246EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step246EarlyControl_sigma : compileHmrSigmaDropLog s2Step246EarlyControlHistoryArena false 0 0 254 802 []=some s2Step246EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step246EarlyControl_sigmaOwned⟩
  · exact s2Step246EarlyControl_sigmaRelease

private theorem s2Step246EarlyControl_zeroBorrow : s2Step246EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step246EarlyControlLog.zeroWork=some s2Step246EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step246EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step246EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step246EarlyControlZeroArena,s2Step246EarlyControlArena,s2Step246EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step246EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step246EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step246EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<799) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246EarlyControl_zero : compileHmrEqualityLog s2Step246EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step246EarlyControlLog.zeroWork=some (s2Step246EarlyControlZeroArena,s2Step246EarlyControlLog.zeroWork,s2Step246EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step246EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step246EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step246EarlyControl_logged : s2Step246EarlyControlPlan.Logged s2Step246EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 802 254 253 252 251 835 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step246EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step246EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step246EarlyControl_zero
  · exact s2Step246EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step246EarlyControl_flags
  · exact s2Step246EarlyControl_fit
  · exact s2Step246EarlyControl_history
  · exact s2Step246EarlyControl_sigma
  · exact s2Step246EarlyControl_branch

private theorem s2Step246EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step246EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 802 254 253 252 251 835 51 s2Step246EarlyControlLog=some s2Step246EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step246EarlyControlPlan s2Step246EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 802 254 253 252 251 835 51 s2Step246EarlyControl_logged

private def s2Step246EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩

private def s2Step246EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831],770⟩

private def s2Step246EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146],769⟩

private def s2Step246EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819],771⟩

private def s2Step246FrontBank : WindowBank := ⟨s2Step246EntryFRow,s2Step246EntryGRow,s2Step246EntryFvRow,s2Step246EntryGvRow⟩

private def s2Step246Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 814, 768]

private def s2Step246Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 824, 769]

private def s2Step246Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 810, 770]

private def s2Step246Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 809, 830, 771]

private theorem s2Step246Counter_apart : Disjoint s2Step246HeadFvAfter.live s2Step246CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step246HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246Counter_borrowed : s2Step246HeadFvAfter.checkBorrow 4 s2Step246CounterWork=some s2Step246CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step246HeadFvAfter s2Step246CounterDuring s2Step246CounterWork.toFinset s2Step246Counter_bounded s2Step246Counter_apart rfl

private theorem s2Step246Counter_owned : (802::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step246HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step246HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246Counter_checked : compileHmrCounterStepLog s2Step246HeadFvAfter true 802 [772, 773, 774, 775, 776, 777] s2Step246CounterWork=some s2Step246CounterDuring := by
  have owned : ∀q∈802::[772, 773, 774, 775, 776, 777],q∈s2Step246HeadFvAfter.live := fun q hq => s2Step246Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step246Counter_borrowed

private def s2Step246EntryFAfter : Arena := s2Step246EntryFBefore

private theorem s2Step246EntryBank_incomingDistinct : ([s2Step246EntryFRow,s2Step246EntryGRow,s2Step246EntryFvRow,s2Step246EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step246EntryF_Incoming : rowsOwned s2Step246EntryFBefore [s2Step246EntryFRow,s2Step246EntryGRow,s2Step246EntryFvRow,s2Step246EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step246EntryFRow,s2Step246EntryGRow,s2Step246EntryFvRow,s2Step246EntryGvRow] 0 s2Step246EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step246EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step246EntryBank_outgoingOwned : rowsOwned s2Step246EntryGvAfter [s2Step246EntryFOut,s2Step246EntryGOut,s2Step246EntryFvOut,s2Step246EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step246EntryGvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step246EntryF_Outgoing : rowsOwned s2Step246EntryGvAfter [s2Step246EntryFOut,s2Step246EntryGOut,s2Step246EntryFvOut,s2Step246EntryGvOut] :=
  hmrRows_owned_drop s2Step246EntryGvAfter [s2Step246EntryFOut,s2Step246EntryGOut,s2Step246EntryFvOut,s2Step246EntryGvOut] 0 s2Step246EntryBank_outgoingOwned

private theorem s2Step246EntryF_distinct : (s2Step246EntryFRow.sign::s2Step246EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step246EntryF_owned : (s2Step246EntryFRow.sign::s2Step246EntryFRow.payload).toFinset⊆s2Step246EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step246EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246EntryF_reserved : s2Step246EntryFBefore.reserve s2Step246EntryFFresh.toFinset=some s2Step246EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step246EntryFFresh,arenaWires]
  · norm_num [s2Step246EntryFBefore,s2Step246EntryFFresh,arenaWires]
  · simp only [s2Step246EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step246EntryF_checked : planRowResizeLog s2Step246EntryFBefore s2Step246EntryFRow 147 s2Step246EntryFFresh=
    some (s2Step246EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩,growRow 768 s2Step246EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step246EntryFBefore s2Step246EntryFAfter s2Step246EntryFRow 147 s2Step246EntryFFresh
    s2Step246EntryF_distinct s2Step246EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step246EntryF_reserved
  have rowEq : WindowRow.mk (s2Step246EntryFRow.payload++s2Step246EntryFFresh) s2Step246EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step246EntryFvAfter : Arena := s2Step246EntryFBefore

private def s2Step246EntryFvBefore : Arena := s2Step246EntryFBefore

private theorem s2Step246EntryFv_Incoming : rowsOwned s2Step246EntryFvBefore [s2Step246EntryFvRow,s2Step246EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step246EntryFRow,s2Step246EntryGRow,s2Step246EntryFvRow,s2Step246EntryGvRow] 2 s2Step246EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step246EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step246EntryFv_Outgoing : rowsOwned s2Step246EntryGvAfter [s2Step246EntryFvOut,s2Step246EntryGvOut] :=
  hmrRows_owned_drop s2Step246EntryGvAfter [s2Step246EntryFOut,s2Step246EntryGOut,s2Step246EntryFvOut,s2Step246EntryGvOut] 2 s2Step246EntryBank_outgoingOwned

private theorem s2Step246EntryFv_distinct : (s2Step246EntryFvRow.sign::s2Step246EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step246EntryFv_owned : (s2Step246EntryFvRow.sign::s2Step246EntryFvRow.payload).toFinset⊆s2Step246EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step246EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246EntryFv_reserved : s2Step246EntryFvBefore.reserve s2Step246EntryFvFresh.toFinset=some s2Step246EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step246EntryFvFresh,arenaWires]
  · norm_num [s2Step246EntryFvBefore,s2Step246EntryFBefore,s2Step246EntryFvFresh,arenaWires]
  · simp only [s2Step246EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step246EntryFv_checked : planRowResizeLog s2Step246EntryFvBefore s2Step246EntryFvRow 138 s2Step246EntryFvFresh=
    some (s2Step246EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831],770⟩,growRow 770 s2Step246EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step246EntryFvBefore s2Step246EntryFvAfter s2Step246EntryFvRow 138 s2Step246EntryFvFresh
    s2Step246EntryFv_distinct s2Step246EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step246EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step246EntryFvRow.payload++s2Step246EntryFvFresh) s2Step246EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step246EntryGAfter : Arena := s2Step246EntryFBefore

private def s2Step246EntryGBefore : Arena := s2Step246EntryFBefore

private theorem s2Step246EntryG_Incoming : rowsOwned s2Step246EntryGBefore [s2Step246EntryGRow,s2Step246EntryFvRow,s2Step246EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step246EntryFRow,s2Step246EntryGRow,s2Step246EntryFvRow,s2Step246EntryGvRow] 1 s2Step246EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step246EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step246EntryG_Outgoing : rowsOwned s2Step246EntryGvAfter [s2Step246EntryGOut,s2Step246EntryFvOut,s2Step246EntryGvOut] :=
  hmrRows_owned_drop s2Step246EntryGvAfter [s2Step246EntryFOut,s2Step246EntryGOut,s2Step246EntryFvOut,s2Step246EntryGvOut] 1 s2Step246EntryBank_outgoingOwned

private theorem s2Step246EntryG_distinct : (s2Step246EntryGRow.sign::s2Step246EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step246EntryG_owned : (s2Step246EntryGRow.sign::s2Step246EntryGRow.payload).toFinset⊆s2Step246EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step246EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246EntryG_reserved : s2Step246EntryGBefore.reserve s2Step246EntryGFresh.toFinset=some s2Step246EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step246EntryGFresh,arenaWires]
  · norm_num [s2Step246EntryGBefore,s2Step246EntryFBefore,s2Step246EntryGFresh,arenaWires]
  · simp only [s2Step246EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step246EntryG_checked : planRowResizeLog s2Step246EntryGBefore s2Step246EntryGRow 147 s2Step246EntryGFresh=
    some (s2Step246EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146],769⟩,growRow 769 s2Step246EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step246EntryGBefore s2Step246EntryGAfter s2Step246EntryGRow 147 s2Step246EntryGFresh
    s2Step246EntryG_distinct s2Step246EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step246EntryG_reserved
  have rowEq : WindowRow.mk (s2Step246EntryGRow.payload++s2Step246EntryGFresh) s2Step246EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step246EntryGvBefore : Arena := s2Step246EntryFBefore

private theorem s2Step246EntryGv_Incoming : rowsOwned s2Step246EntryGvBefore [s2Step246EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step246EntryFRow,s2Step246EntryGRow,s2Step246EntryFvRow,s2Step246EntryGvRow] 3 s2Step246EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step246EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step246EntryGv_Outgoing : rowsOwned s2Step246EntryGvAfter [s2Step246EntryGvOut] :=
  hmrRows_owned_drop s2Step246EntryGvAfter [s2Step246EntryFOut,s2Step246EntryGOut,s2Step246EntryFvOut,s2Step246EntryGvOut] 3 s2Step246EntryBank_outgoingOwned

private theorem s2Step246EntryGv_distinct : (s2Step246EntryGvRow.sign::s2Step246EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step246EntryGv_owned : (s2Step246EntryGvRow.sign::s2Step246EntryGvRow.payload).toFinset⊆s2Step246EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step246EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246EntryGv_reserved : s2Step246EntryGvBefore.reserve s2Step246EntryGvFresh.toFinset=some s2Step246EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step246EntryGvFresh,arenaWires]
  · norm_num [s2Step246EntryGvBefore,s2Step246EntryFBefore,s2Step246EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step246EntryGvAfter,s2Step246EntryGvBefore,s2Step246EntryFBefore,s2Step246EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step246EntryGv_checked : planRowResizeLog s2Step246EntryGvBefore s2Step246EntryGvRow 138 s2Step246EntryGvFresh=
    some (s2Step246EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 809],771⟩,growRow 771 s2Step246EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step246EntryGvBefore s2Step246EntryGvAfter s2Step246EntryGvRow 138 s2Step246EntryGvFresh
    s2Step246EntryGv_distinct s2Step246EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step246EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step246EntryGvRow.payload++s2Step246EntryGvFresh) s2Step246EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 809],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step246EntryBank_rows : planWindowRowsLog s2Step246EntryFBefore [(s2Step246EntryFRow,147),(s2Step246EntryGRow,147),(s2Step246EntryFvRow,138),(s2Step246EntryGvRow,138)] [s2Step246EntryFFresh,s2Step246EntryGFresh,s2Step246EntryFvFresh,s2Step246EntryGvFresh]=
    some (s2Step246EntryGvAfter,[s2Step246EntryFOut,s2Step246EntryGOut,s2Step246EntryFvOut,s2Step246EntryGvOut],(growRow 768 s2Step246EntryFFresh ++ (growRow 769 s2Step246EntryGFresh ++ (growRow 770 s2Step246EntryFvFresh ++ (growRow 771 s2Step246EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step246EntryGvAfter [] []=some (s2Step246EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step246EntryGvBefore s2Step246EntryGvAfter s2Step246EntryGvAfter
    s2Step246EntryGvRow s2Step246EntryGvOut 138 s2Step246EntryGvFresh [] [] []
    (growRow 771 s2Step246EntryGvFresh) ([]) s2Step246EntryGv_Incoming s2Step246EntryGv_checked h4 s2Step246EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step246EntryFvBefore s2Step246EntryFvAfter s2Step246EntryGvAfter
    s2Step246EntryFvRow s2Step246EntryFvOut 138 s2Step246EntryFvFresh [(s2Step246EntryGvRow,138)] [s2Step246EntryGvFresh] [s2Step246EntryGvOut]
    (growRow 770 s2Step246EntryFvFresh) ((growRow 771 s2Step246EntryGvFresh ++ [])) s2Step246EntryFv_Incoming s2Step246EntryFv_checked h3 s2Step246EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step246EntryGBefore s2Step246EntryGAfter s2Step246EntryGvAfter
    s2Step246EntryGRow s2Step246EntryGOut 147 s2Step246EntryGFresh [(s2Step246EntryFvRow,138),(s2Step246EntryGvRow,138)] [s2Step246EntryFvFresh,s2Step246EntryGvFresh] [s2Step246EntryFvOut,s2Step246EntryGvOut]
    (growRow 769 s2Step246EntryGFresh) ((growRow 770 s2Step246EntryFvFresh ++ (growRow 771 s2Step246EntryGvFresh ++ []))) s2Step246EntryG_Incoming s2Step246EntryG_checked h2 s2Step246EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step246EntryFBefore s2Step246EntryFAfter s2Step246EntryGvAfter
    s2Step246EntryFRow s2Step246EntryFOut 147 s2Step246EntryFFresh [(s2Step246EntryGRow,147),(s2Step246EntryFvRow,138),(s2Step246EntryGvRow,138)] [s2Step246EntryGFresh,s2Step246EntryFvFresh,s2Step246EntryGvFresh] [s2Step246EntryGOut,s2Step246EntryFvOut,s2Step246EntryGvOut]
    (growRow 768 s2Step246EntryFFresh) ((growRow 769 s2Step246EntryGFresh ++ (growRow 770 s2Step246EntryFvFresh ++ (growRow 771 s2Step246EntryGvFresh ++ [])))) s2Step246EntryF_Incoming s2Step246EntryF_checked h1 s2Step246EntryF_Outgoing
  exact h0

private theorem s2Step246EntryBank_checked : compileHmrBankResizeLog .entry s2Step246EntryFBefore ⟨s2Step246EntryFRow,s2Step246EntryGRow,s2Step246EntryFvRow,s2Step246EntryGvRow⟩ ⟨147,147,138,138⟩ [s2Step246EntryFFresh,s2Step246EntryGFresh,s2Step246EntryFvFresh,s2Step246EntryGvFresh]=
    some (s2Step246EntryGvAfter,⟨s2Step246EntryFOut,s2Step246EntryGOut,s2Step246EntryFvOut,s2Step246EntryGvOut⟩,(growRow 768 s2Step246EntryFFresh ++ (growRow 769 s2Step246EntryGFresh ++ (growRow 770 s2Step246EntryFvFresh ++ (growRow 771 s2Step246EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step246EntryBank_rows]
  rfl

private def s2Step246ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246ExitFBefore : Arena := s2Step246ExitGAfter

private def s2Step246ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 814],768⟩

private def s2Step246ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 810],770⟩

private def s2Step246ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 824],769⟩

private def s2Step246ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 809, 830],771⟩

private theorem s2Step246ExitBank_incomingDistinct : ([s2Step246ExitGRow,s2Step246ExitFRow,s2Step246ExitFvRow,s2Step246ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step246ExitF_Incoming : rowsOwned s2Step246ExitFBefore [s2Step246ExitFRow,s2Step246ExitFvRow,s2Step246ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step246ExitGRow,s2Step246ExitFRow,s2Step246ExitFvRow,s2Step246ExitGvRow] 1 s2Step246ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step246ExitFBefore (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step246ExitBank_outgoingOwned : rowsOwned s2Step246ExitGvAfter [s2Step246ExitGOut,s2Step246ExitFOut,s2Step246ExitFvOut,s2Step246ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step246ExitGvAfter (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step246ExitF_Outgoing : rowsOwned s2Step246ExitGvAfter [s2Step246ExitFOut,s2Step246ExitFvOut,s2Step246ExitGvOut] :=
  hmrRows_owned_drop s2Step246ExitGvAfter [s2Step246ExitGOut,s2Step246ExitFOut,s2Step246ExitFvOut,s2Step246ExitGvOut] 1 s2Step246ExitBank_outgoingOwned

private theorem s2Step246ExitF_distinct : (s2Step246ExitFRow.sign::s2Step246ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step246ExitF_owned : (s2Step246ExitFRow.sign::s2Step246ExitFRow.payload).toFinset⊆s2Step246ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step246ExitFBefore (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246ExitF_retired : s2Step246ExitFBefore.retireSet s2Step246ExitFExtra.toFinset=s2Step246ExitFAfter := by
  unfold Arena.retireSet s2Step246ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step246ExitFBefore,s2Step246ExitGAfter,s2Step246ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step246ExitF_checked : planRowResizeLog s2Step246ExitFBefore s2Step246ExitFRow 147 []=
    some (s2Step246ExitFAfter,s2Step246ExitFOut,shrinkRow 768 s2Step246ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step246ExitFBefore s2Step246ExitFRow 147 s2Step246ExitF_distinct s2Step246ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step246ExitFRow.payload.take 147) s2Step246ExitFRow.sign=s2Step246ExitFOut := by decide +kernel
  have hi : s2Step246ExitFRow.payload.drop 147=s2Step246ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step246ExitF_retired] at result
  exact result

private def s2Step246ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246ExitFvBefore : Arena := s2Step246ExitFAfter

private theorem s2Step246ExitFv_Incoming : rowsOwned s2Step246ExitFvBefore [s2Step246ExitFvRow,s2Step246ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step246ExitGRow,s2Step246ExitFRow,s2Step246ExitFvRow,s2Step246ExitGvRow] 2 s2Step246ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step246ExitFvBefore (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step246ExitFv_Outgoing : rowsOwned s2Step246ExitGvAfter [s2Step246ExitFvOut,s2Step246ExitGvOut] :=
  hmrRows_owned_drop s2Step246ExitGvAfter [s2Step246ExitGOut,s2Step246ExitFOut,s2Step246ExitFvOut,s2Step246ExitGvOut] 2 s2Step246ExitBank_outgoingOwned

private theorem s2Step246ExitFv_distinct : (s2Step246ExitFvRow.sign::s2Step246ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step246ExitFv_owned : (s2Step246ExitFvRow.sign::s2Step246ExitFvRow.payload).toFinset⊆s2Step246ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step246ExitFvBefore (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246ExitFv_retired : s2Step246ExitFvBefore.retireSet s2Step246ExitFvExtra.toFinset=s2Step246ExitFvAfter := by
  unfold Arena.retireSet s2Step246ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step246ExitFvBefore,s2Step246ExitFAfter,s2Step246ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step246ExitFv_checked : planRowResizeLog s2Step246ExitFvBefore s2Step246ExitFvRow 138 []=
    some (s2Step246ExitFvAfter,s2Step246ExitFvOut,shrinkRow 770 s2Step246ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step246ExitFvBefore s2Step246ExitFvRow 138 s2Step246ExitFv_distinct s2Step246ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step246ExitFvRow.payload.take 138) s2Step246ExitFvRow.sign=s2Step246ExitFvOut := by decide +kernel
  have hi : s2Step246ExitFvRow.payload.drop 138=s2Step246ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step246ExitFv_retired] at result
  exact result

private def s2Step246ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private theorem s2Step246ExitG_Incoming : rowsOwned s2Step246ExitGBefore [s2Step246ExitGRow,s2Step246ExitFRow,s2Step246ExitFvRow,s2Step246ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step246ExitGRow,s2Step246ExitFRow,s2Step246ExitFvRow,s2Step246ExitGvRow] 0 s2Step246ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step246ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step246ExitG_Outgoing : rowsOwned s2Step246ExitGvAfter [s2Step246ExitGOut,s2Step246ExitFOut,s2Step246ExitFvOut,s2Step246ExitGvOut] :=
  hmrRows_owned_drop s2Step246ExitGvAfter [s2Step246ExitGOut,s2Step246ExitFOut,s2Step246ExitFvOut,s2Step246ExitGvOut] 0 s2Step246ExitBank_outgoingOwned

private theorem s2Step246ExitG_distinct : (s2Step246ExitGRow.sign::s2Step246ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step246ExitG_owned : (s2Step246ExitGRow.sign::s2Step246ExitGRow.payload).toFinset⊆s2Step246ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step246ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246ExitG_retired : s2Step246ExitGBefore.retireSet s2Step246ExitGExtra.toFinset=s2Step246ExitGAfter := by
  unfold Arena.retireSet s2Step246ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step246ExitGBefore,s2Step246ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step246ExitG_checked : planRowResizeLog s2Step246ExitGBefore s2Step246ExitGRow 146 []=
    some (s2Step246ExitGAfter,s2Step246ExitGOut,shrinkRow 769 s2Step246ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step246ExitGBefore s2Step246ExitGRow 146 s2Step246ExitG_distinct s2Step246ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step246ExitGRow.payload.take 146) s2Step246ExitGRow.sign=s2Step246ExitGOut := by decide +kernel
  have hi : s2Step246ExitGRow.payload.drop 146=s2Step246ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step246ExitG_retired] at result
  exact result

private def s2Step246ExitGvBefore : Arena := s2Step246ExitFvAfter

private theorem s2Step246ExitGv_Incoming : rowsOwned s2Step246ExitGvBefore [s2Step246ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step246ExitGRow,s2Step246ExitFRow,s2Step246ExitFvRow,s2Step246ExitGvRow] 3 s2Step246ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step246ExitGvBefore (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step246ExitGv_Outgoing : rowsOwned s2Step246ExitGvAfter [s2Step246ExitGvOut] :=
  hmrRows_owned_drop s2Step246ExitGvAfter [s2Step246ExitGOut,s2Step246ExitFOut,s2Step246ExitFvOut,s2Step246ExitGvOut] 3 s2Step246ExitBank_outgoingOwned

private theorem s2Step246ExitGv_distinct : (s2Step246ExitGvRow.sign::s2Step246ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step246ExitGv_owned : (s2Step246ExitGvRow.sign::s2Step246ExitGvRow.payload).toFinset⊆s2Step246ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step246ExitGvBefore (fun q => (0≤q ∧ q<146) ∨ (147≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246ExitGv_retired : s2Step246ExitGvBefore.retireSet s2Step246ExitGvExtra.toFinset=s2Step246ExitGvAfter := by
  unfold Arena.retireSet s2Step246ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step246ExitGvBefore,s2Step246ExitFvAfter,s2Step246ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step246ExitGv_checked : planRowResizeLog s2Step246ExitGvBefore s2Step246ExitGvRow 137 []=
    some (s2Step246ExitGvAfter,s2Step246ExitGvOut,shrinkRow 771 s2Step246ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step246ExitGvBefore s2Step246ExitGvRow 137 s2Step246ExitGv_distinct s2Step246ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step246ExitGvRow.payload.take 137) s2Step246ExitGvRow.sign=s2Step246ExitGvOut := by decide +kernel
  have hi : s2Step246ExitGvRow.payload.drop 137=s2Step246ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step246ExitGv_retired] at result
  exact result

private theorem s2Step246ExitBank_rows : planWindowRowsLog s2Step246ExitGBefore [(s2Step246ExitGRow,146),(s2Step246ExitFRow,147),(s2Step246ExitFvRow,138),(s2Step246ExitGvRow,137)] [[],[],[],[]]=
    some (s2Step246ExitGvAfter,[s2Step246ExitGOut,s2Step246ExitFOut,s2Step246ExitFvOut,s2Step246ExitGvOut],(shrinkRow 769 s2Step246ExitGExtra ++ (shrinkRow 768 s2Step246ExitFExtra ++ (shrinkRow 770 s2Step246ExitFvExtra ++ (shrinkRow 771 s2Step246ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step246ExitGvAfter [] []=some (s2Step246ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step246ExitGvBefore s2Step246ExitGvAfter s2Step246ExitGvAfter
    s2Step246ExitGvRow s2Step246ExitGvOut 137 [] [] [] []
    (shrinkRow 771 s2Step246ExitGvExtra) ([]) s2Step246ExitGv_Incoming s2Step246ExitGv_checked h4 s2Step246ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step246ExitFvBefore s2Step246ExitFvAfter s2Step246ExitGvAfter
    s2Step246ExitFvRow s2Step246ExitFvOut 138 [] [(s2Step246ExitGvRow,137)] [[]] [s2Step246ExitGvOut]
    (shrinkRow 770 s2Step246ExitFvExtra) ((shrinkRow 771 s2Step246ExitGvExtra ++ [])) s2Step246ExitFv_Incoming s2Step246ExitFv_checked h3 s2Step246ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step246ExitFBefore s2Step246ExitFAfter s2Step246ExitGvAfter
    s2Step246ExitFRow s2Step246ExitFOut 147 [] [(s2Step246ExitFvRow,138),(s2Step246ExitGvRow,137)] [[],[]] [s2Step246ExitFvOut,s2Step246ExitGvOut]
    (shrinkRow 768 s2Step246ExitFExtra) ((shrinkRow 770 s2Step246ExitFvExtra ++ (shrinkRow 771 s2Step246ExitGvExtra ++ []))) s2Step246ExitF_Incoming s2Step246ExitF_checked h2 s2Step246ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step246ExitGBefore s2Step246ExitGAfter s2Step246ExitGvAfter
    s2Step246ExitGRow s2Step246ExitGOut 146 [] [(s2Step246ExitFRow,147),(s2Step246ExitFvRow,138),(s2Step246ExitGvRow,137)] [[],[],[]] [s2Step246ExitFOut,s2Step246ExitFvOut,s2Step246ExitGvOut]
    (shrinkRow 769 s2Step246ExitGExtra) ((shrinkRow 768 s2Step246ExitFExtra ++ (shrinkRow 770 s2Step246ExitFvExtra ++ (shrinkRow 771 s2Step246ExitGvExtra ++ [])))) s2Step246ExitG_Incoming s2Step246ExitG_checked h1 s2Step246ExitG_Outgoing
  exact h0

private theorem s2Step246ExitBank_checked : compileHmrBankResizeLog .exit s2Step246ExitGBefore ⟨s2Step246ExitFRow,s2Step246ExitGRow,s2Step246ExitFvRow,s2Step246ExitGvRow⟩ ⟨147,146,138,137⟩ [[],[],[],[]]=
    some (s2Step246ExitGvAfter,⟨s2Step246ExitFOut,s2Step246ExitGOut,s2Step246ExitFvOut,s2Step246ExitGvOut⟩,(shrinkRow 769 s2Step246ExitGExtra ++ (shrinkRow 768 s2Step246ExitFExtra ++ (shrinkRow 770 s2Step246ExitFvExtra ++ (shrinkRow 771 s2Step246ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step246ExitBank_rows]
  rfl

private theorem s2Step246Add0_apart : Disjoint s2Step246Add0Arena.live s2Step246Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step246Add0Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246Add0_card : s2Step246Add0Arena.live.card=895 := by
  decide +kernel

private theorem s2Step246Add0_borrowed : s2Step246Add0Arena.checkBorrow (hmrHybridCount s2Step246Add0Arena s2Step246Add0B.length) s2Step246Add0Work=some s2Step246Add0During := by
  have len : s2Step246Add0Work.length=hmrHybridCount s2Step246Add0Arena s2Step246Add0B.length := by
    rw [hmrHybridCount,s2Step246Add0_card]
    decide +kernel
  have nd : s2Step246Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step246Add0Arena s2Step246Add0During s2Step246Add0Work.toFinset s2Step246Add0_bounded s2Step246Add0_apart rfl

private theorem s2Step246Add0_distinct : (842::835::834::(s2Step246Add0A++s2Step246Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step246Add0_owned : (842::835::834::(s2Step246Add0A++s2Step246Add0B)).toFinset⊆s2Step246Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step246Add0Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246Add0_checked : compileHmrHybridCinLog s2Step246Add0Arena 835 842 834 s2Step246Add0A s2Step246Add0B s2Step246Add0Work=some s2Step246Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step246Add0Arena s2Step246Add0During 835 842 834 s2Step246Add0A s2Step246Add0B s2Step246Add0Work
    (by decide +kernel) (by decide +kernel) s2Step246Add0_distinct
    (fun q hq => s2Step246Add0_owned (List.mem_toFinset.mpr hq)) s2Step246Add0_borrowed

private theorem s2Step246Add1_apart : Disjoint s2Step246Add1Arena.live s2Step246Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step246Add1Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246Add1_card : s2Step246Add1Arena.live.card=895 := by
  decide +kernel

private theorem s2Step246Add1_borrowed : s2Step246Add1Arena.checkBorrow (hmrHybridCount s2Step246Add1Arena s2Step246Add1B.length) s2Step246Add1Work=some s2Step246Add1During := by
  have len : s2Step246Add1Work.length=hmrHybridCount s2Step246Add1Arena s2Step246Add1B.length := by
    rw [hmrHybridCount,s2Step246Add1_card]
    decide +kernel
  have nd : s2Step246Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step246Add1Arena s2Step246Add1During s2Step246Add1Work.toFinset s2Step246Add1_bounded s2Step246Add1_apart rfl

private theorem s2Step246Add1_distinct : (842::835::834::(s2Step246Add1A++s2Step246Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step246Add1_owned : (842::835::834::(s2Step246Add1A++s2Step246Add1B)).toFinset⊆s2Step246Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step246Add1Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246Add1_checked : compileHmrHybridCinLog s2Step246Add1Arena 835 842 834 s2Step246Add1A s2Step246Add1B s2Step246Add1Work=some s2Step246Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step246Add1Arena s2Step246Add1During 835 842 834 s2Step246Add1A s2Step246Add1B s2Step246Add1Work
    (by decide +kernel) (by decide +kernel) s2Step246Add1_distinct
    (fun q hq => s2Step246Add1_owned (List.mem_toFinset.mpr hq)) s2Step246Add1_borrowed

private theorem s2Step246F4_apart : Disjoint (s2Step246Add0A++s2Step246Add0B).toFinset (s2Step246Add1A++s2Step246Add1B).toFinset := by
  have nd : ((s2Step246Add0A++s2Step246Add0B)++(s2Step246Add1A++s2Step246Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step246F4_carry : s2Step246F4FlagArena.checkBorrow 1 [834]=some s2Step246Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step246F4FlagArena,s2Step246HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step246F4FlagArena,s2Step246HeadFvAfter,s2Step246Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step246F4_distinct : (802::835::842::834::((s2Step246Add0A++s2Step246Add1A)++(s2Step246Add0B++s2Step246Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step246F4_flag : s2Step246HeadFvAfter.checkBorrow 1 [842]=some s2Step246F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step246HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step246F4_owned : (802::835::((s2Step246Add0A++s2Step246Add1A)++(s2Step246Add0B++s2Step246Add1B))).toFinset⊆s2Step246HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step246HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246F4_checked : compileHmrHybridF4Log s2Step246HeadFvAfter 802 835 s2Step246Add0A s2Step246Add0B s2Step246Add1A s2Step246Add1B [842] [834] s2Step246Add0Work s2Step246Add1Work=some s2Step246F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step246HeadFvAfter s2Step246F4FlagArena s2Step246Add0Arena s2Step246Add0During s2Step246Add1During 802 835
    s2Step246Add0A s2Step246Add0B s2Step246Add1A s2Step246Add1B [842] [834] s2Step246Add0Work s2Step246Add1Work
    (fun q hq => s2Step246F4_owned (List.mem_toFinset.mpr hq)) s2Step246F4_flag s2Step246F4_carry
    s2Step246F4_distinct s2Step246F4_apart s2Step246Add0_checked s2Step246Add1_checked

private theorem s2Step246Front_branch : s2Step246FrontSigmaArena.checkBorrow 1 [835]=some s2Step246HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step246FrontSigmaArena,s2Step246EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step246FrontSigmaArena,s2Step246EntryGvAfter,s2Step246HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step246Front_entry : HmrFrontEntryValid s2Step246EntryFBefore s2Step246FrontBank 147 138 ⟨147,146,138,137⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step246FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step246EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step246EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step246FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step246Front_sigma : s2Step246EntryGvAfter.checkBorrow 1 [802]=some s2Step246FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step246EntryGvAfter,arenaWires]
  · rfl

private def s2Step246HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246HeadFBefore : Arena := s2Step246HeadGAfter

private def s2Step246HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658],768⟩

private def s2Step246HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831],770⟩

private def s2Step246HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146],769⟩

private def s2Step246HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 809],771⟩

private theorem s2Step246HeadBank_incomingDistinct : ([s2Step246HeadGRow,s2Step246HeadFRow,s2Step246HeadGvRow,s2Step246HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step246HeadF_Incoming : rowsOwned s2Step246HeadFBefore [s2Step246HeadFRow,s2Step246HeadGvRow,s2Step246HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step246HeadGRow,s2Step246HeadFRow,s2Step246HeadGvRow,s2Step246HeadFvRow] 1 s2Step246HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step246HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step246HeadBank_outgoingOwned : rowsOwned s2Step246HeadFvAfter [s2Step246HeadGOut,s2Step246HeadFOut,s2Step246HeadGvOut,s2Step246HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step246HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step246HeadF_Outgoing : rowsOwned s2Step246HeadFvAfter [s2Step246HeadFOut,s2Step246HeadGvOut,s2Step246HeadFvOut] :=
  hmrRows_owned_drop s2Step246HeadFvAfter [s2Step246HeadGOut,s2Step246HeadFOut,s2Step246HeadGvOut,s2Step246HeadFvOut] 1 s2Step246HeadBank_outgoingOwned

private theorem s2Step246HeadF_distinct : (s2Step246HeadFRow.sign::s2Step246HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step246HeadF_owned : (s2Step246HeadFRow.sign::s2Step246HeadFRow.payload).toFinset⊆s2Step246HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step246HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246HeadF_reserved : s2Step246HeadFBefore.reserve s2Step246HeadFFresh.toFinset=some s2Step246HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step246HeadFFresh,arenaWires]
  · norm_num [s2Step246HeadFBefore,s2Step246HeadGAfter,s2Step246HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step246HeadFAfter,s2Step246HeadFBefore,s2Step246HeadGAfter,s2Step246HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step246HeadF_checked : planRowResizeLog s2Step246HeadFBefore s2Step246HeadFRow 148 s2Step246HeadFFresh=
    some (s2Step246HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 814],768⟩,growRow 768 s2Step246HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step246HeadFBefore s2Step246HeadFAfter s2Step246HeadFRow 148 s2Step246HeadFFresh
    s2Step246HeadF_distinct s2Step246HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step246HeadF_reserved
  have rowEq : WindowRow.mk (s2Step246HeadFRow.payload++s2Step246HeadFFresh) s2Step246HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 814],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step246HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step246HeadFvBefore : Arena := s2Step246HeadGvAfter

private theorem s2Step246HeadFv_Incoming : rowsOwned s2Step246HeadFvBefore [s2Step246HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step246HeadGRow,s2Step246HeadFRow,s2Step246HeadGvRow,s2Step246HeadFvRow] 3 s2Step246HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step246HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step246HeadFv_Outgoing : rowsOwned s2Step246HeadFvAfter [s2Step246HeadFvOut] :=
  hmrRows_owned_drop s2Step246HeadFvAfter [s2Step246HeadGOut,s2Step246HeadFOut,s2Step246HeadGvOut,s2Step246HeadFvOut] 3 s2Step246HeadBank_outgoingOwned

private theorem s2Step246HeadFv_distinct : (s2Step246HeadFvRow.sign::s2Step246HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step246HeadFv_owned : (s2Step246HeadFvRow.sign::s2Step246HeadFvRow.payload).toFinset⊆s2Step246HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step246HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246HeadFv_reserved : s2Step246HeadFvBefore.reserve s2Step246HeadFvFresh.toFinset=some s2Step246HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step246HeadFvFresh,arenaWires]
  · norm_num [s2Step246HeadFvBefore,s2Step246HeadGvAfter,s2Step246HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step246HeadFvAfter,s2Step246HeadFvBefore,s2Step246HeadGvAfter,s2Step246HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step246HeadFv_checked : planRowResizeLog s2Step246HeadFvBefore s2Step246HeadFvRow 139 s2Step246HeadFvFresh=
    some (s2Step246HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 810],770⟩,growRow 770 s2Step246HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step246HeadFvBefore s2Step246HeadFvAfter s2Step246HeadFvRow 139 s2Step246HeadFvFresh
    s2Step246HeadFv_distinct s2Step246HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step246HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step246HeadFvRow.payload++s2Step246HeadFvFresh) s2Step246HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 810],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step246HeadG_Incoming : rowsOwned s2Step246HeadGBefore [s2Step246HeadGRow,s2Step246HeadFRow,s2Step246HeadGvRow,s2Step246HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step246HeadGRow,s2Step246HeadFRow,s2Step246HeadGvRow,s2Step246HeadFvRow] 0 s2Step246HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step246HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step246HeadG_Outgoing : rowsOwned s2Step246HeadFvAfter [s2Step246HeadGOut,s2Step246HeadFOut,s2Step246HeadGvOut,s2Step246HeadFvOut] :=
  hmrRows_owned_drop s2Step246HeadFvAfter [s2Step246HeadGOut,s2Step246HeadFOut,s2Step246HeadGvOut,s2Step246HeadFvOut] 0 s2Step246HeadBank_outgoingOwned

private theorem s2Step246HeadG_distinct : (s2Step246HeadGRow.sign::s2Step246HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step246HeadG_owned : (s2Step246HeadGRow.sign::s2Step246HeadGRow.payload).toFinset⊆s2Step246HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step246HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246HeadG_reserved : s2Step246HeadGBefore.reserve s2Step246HeadGFresh.toFinset=some s2Step246HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step246HeadGFresh,arenaWires]
  · norm_num [s2Step246HeadGBefore,s2Step246HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step246HeadGAfter,s2Step246HeadGBefore,s2Step246HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step246HeadG_checked : planRowResizeLog s2Step246HeadGBefore s2Step246HeadGRow 148 s2Step246HeadGFresh=
    some (s2Step246HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 824],769⟩,growRow 769 s2Step246HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step246HeadGBefore s2Step246HeadGAfter s2Step246HeadGRow 148 s2Step246HeadGFresh
    s2Step246HeadG_distinct s2Step246HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step246HeadG_reserved
  have rowEq : WindowRow.mk (s2Step246HeadGRow.payload++s2Step246HeadGFresh) s2Step246HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 824],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step246HeadGvBefore : Arena := s2Step246HeadFAfter

private theorem s2Step246HeadGv_Incoming : rowsOwned s2Step246HeadGvBefore [s2Step246HeadGvRow,s2Step246HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step246HeadGRow,s2Step246HeadFRow,s2Step246HeadGvRow,s2Step246HeadFvRow] 2 s2Step246HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step246HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step246HeadGv_Outgoing : rowsOwned s2Step246HeadFvAfter [s2Step246HeadGvOut,s2Step246HeadFvOut] :=
  hmrRows_owned_drop s2Step246HeadFvAfter [s2Step246HeadGOut,s2Step246HeadFOut,s2Step246HeadGvOut,s2Step246HeadFvOut] 2 s2Step246HeadBank_outgoingOwned

private theorem s2Step246HeadGv_distinct : (s2Step246HeadGvRow.sign::s2Step246HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step246HeadGv_owned : (s2Step246HeadGvRow.sign::s2Step246HeadGvRow.payload).toFinset⊆s2Step246HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step246HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step246HeadGv_reserved : s2Step246HeadGvBefore.reserve s2Step246HeadGvFresh.toFinset=some s2Step246HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step246HeadGvFresh,arenaWires]
  · norm_num [s2Step246HeadGvBefore,s2Step246HeadFAfter,s2Step246HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step246HeadGvAfter,s2Step246HeadGvBefore,s2Step246HeadFAfter,s2Step246HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step246HeadGv_checked : planRowResizeLog s2Step246HeadGvBefore s2Step246HeadGvRow 139 s2Step246HeadGvFresh=
    some (s2Step246HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 809, 830],771⟩,growRow 771 s2Step246HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step246HeadGvBefore s2Step246HeadGvAfter s2Step246HeadGvRow 139 s2Step246HeadGvFresh
    s2Step246HeadGv_distinct s2Step246HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step246HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step246HeadGvRow.payload++s2Step246HeadGvFresh) s2Step246HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 809, 830],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step246HeadBank_rows : planWindowRowsLog s2Step246HeadGBefore [(s2Step246HeadGRow,148),(s2Step246HeadFRow,148),(s2Step246HeadGvRow,139),(s2Step246HeadFvRow,139)] [s2Step246HeadGFresh,s2Step246HeadFFresh,s2Step246HeadGvFresh,s2Step246HeadFvFresh]=
    some (s2Step246HeadFvAfter,[s2Step246HeadGOut,s2Step246HeadFOut,s2Step246HeadGvOut,s2Step246HeadFvOut],(growRow 769 s2Step246HeadGFresh ++ (growRow 768 s2Step246HeadFFresh ++ (growRow 771 s2Step246HeadGvFresh ++ (growRow 770 s2Step246HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step246HeadFvAfter [] []=some (s2Step246HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step246HeadFvBefore s2Step246HeadFvAfter s2Step246HeadFvAfter
    s2Step246HeadFvRow s2Step246HeadFvOut 139 s2Step246HeadFvFresh [] [] []
    (growRow 770 s2Step246HeadFvFresh) ([]) s2Step246HeadFv_Incoming s2Step246HeadFv_checked h4 s2Step246HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step246HeadGvBefore s2Step246HeadGvAfter s2Step246HeadFvAfter
    s2Step246HeadGvRow s2Step246HeadGvOut 139 s2Step246HeadGvFresh [(s2Step246HeadFvRow,139)] [s2Step246HeadFvFresh] [s2Step246HeadFvOut]
    (growRow 771 s2Step246HeadGvFresh) ((growRow 770 s2Step246HeadFvFresh ++ [])) s2Step246HeadGv_Incoming s2Step246HeadGv_checked h3 s2Step246HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step246HeadFBefore s2Step246HeadFAfter s2Step246HeadFvAfter
    s2Step246HeadFRow s2Step246HeadFOut 148 s2Step246HeadFFresh [(s2Step246HeadGvRow,139),(s2Step246HeadFvRow,139)] [s2Step246HeadGvFresh,s2Step246HeadFvFresh] [s2Step246HeadGvOut,s2Step246HeadFvOut]
    (growRow 768 s2Step246HeadFFresh) ((growRow 771 s2Step246HeadGvFresh ++ (growRow 770 s2Step246HeadFvFresh ++ []))) s2Step246HeadF_Incoming s2Step246HeadF_checked h2 s2Step246HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step246HeadGBefore s2Step246HeadGAfter s2Step246HeadFvAfter
    s2Step246HeadGRow s2Step246HeadGOut 148 s2Step246HeadGFresh [(s2Step246HeadFRow,148),(s2Step246HeadGvRow,139),(s2Step246HeadFvRow,139)] [s2Step246HeadFFresh,s2Step246HeadGvFresh,s2Step246HeadFvFresh] [s2Step246HeadFOut,s2Step246HeadGvOut,s2Step246HeadFvOut]
    (growRow 769 s2Step246HeadGFresh) ((growRow 768 s2Step246HeadFFresh ++ (growRow 771 s2Step246HeadGvFresh ++ (growRow 770 s2Step246HeadFvFresh ++ [])))) s2Step246HeadG_Incoming s2Step246HeadG_checked h1 s2Step246HeadG_Outgoing
  exact h0

private theorem s2Step246HeadBank_checked : compileHmrBankResizeLog .headroom s2Step246HeadGBefore ⟨s2Step246HeadFRow,s2Step246HeadGRow,s2Step246HeadFvRow,s2Step246HeadGvRow⟩ ⟨148,148,139,139⟩ [s2Step246HeadGFresh,s2Step246HeadFFresh,s2Step246HeadGvFresh,s2Step246HeadFvFresh]=
    some (s2Step246HeadFvAfter,⟨s2Step246HeadFOut,s2Step246HeadGOut,s2Step246HeadFvOut,s2Step246HeadGvOut⟩,(growRow 769 s2Step246HeadGFresh ++ (growRow 768 s2Step246HeadFFresh ++ (growRow 771 s2Step246HeadGvFresh ++ (growRow 770 s2Step246HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step246HeadBank_rows]
  rfl

private theorem s2Step246Front_checked : compileHmrSourceFrontLog s2Step246EntryFBefore s2Step246FrontBank 147 138 ⟨147,146,138,137⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step246FrontLog=some s2Step246FrontPlan := by
  have pairEq : s2Step246FrontPair=⟨s2Step246HeadFRow,s2Step246HeadGRow,s2Step246HeadFvRow,s2Step246HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step246FrontHead=⟨s2Step246ExitFRow,s2Step246ExitGRow,s2Step246ExitFvRow,s2Step246ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step246Add0A=s2Step246FrontHead.f.wires := by decide +kernel
  have gEq : s2Step246Add0B=s2Step246FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step246Add1A=s2Step246FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step246Add1B=s2Step246FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step246EntryFBefore s2Step246FrontBank 147 138 ⟨147,146,138,137⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step246FrontLog s2Step246FrontPlan
  · exact s2Step246Front_entry
  · exact s2Step246EntryBank_checked
  · exact s2Step246Front_sigma
  · rfl
  · exact s2Step246Front_branch
  · rfl
  · simpa only [s2Step246FrontPlan,pairEq] using s2Step246HeadBank_checked
  · simpa only [s2Step246FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step246F4_checked
  · exact s2Step246Counter_checked
  · rfl
  · simpa only [s2Step246FrontPlan,headEq] using s2Step246ExitBank_checked

private theorem s2Step246Complete_explicit_checked : compileHmrEarlyStepLog s2Step246EntryFBefore s2Step246FrontBank 147 138 ⟨147,146,138,137⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step246CompleteLog=some s2Step246CompletePlan := by
  let Q := s2Step246EarlyControlPlan
  have hq := s2Step246EarlyControl_plan_checked
  have fv1 : s2Step246CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step246CompleteOut.fv.payload[2]?.getD s2Step246CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step246CompleteOut.fv.payload[3]?.getD s2Step246CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step246CompleteOut.fv.payload[4]?.getD s2Step246CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step246EntryFBefore s2Step246EarlyControlArena s2Step246FrontBank 147 138 ⟨147,146,138,137⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step246CompleteLog s2Step246FrontPlan Q
    s2Step246Front_checked s2Step246Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step246Complete_owned s2Step246Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step246EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 802 s2Step246CompleteOut.fv.second (s2Step246CompleteOut.fv.payload[2]?.getD s2Step246CompleteOut.fv.sign) (s2Step246CompleteOut.fv.payload[3]?.getD s2Step246CompleteOut.fv.sign) (s2Step246CompleteOut.fv.payload[4]?.getD s2Step246CompleteOut.fv.sign) 835 51 s2Step246EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep246Arena : Arena := s2Step246EntryFBefore
def s2PrivateStep246Bank : WindowBank := s2Step246FrontBank
def s2PrivateStep246Spec : HmrSourceWalkStepLog := ⟨147,138,⟨147,146,138,137⟩,51,.early s2Step246CompleteLog⟩
def s2PrivateStep246Plan : HmrSourceStepPlan := .early s2Step246CompletePlan
theorem s2PrivateStep246_source : s2PrivateStep246Spec=s2ObservedLogs240[6] := rfl
theorem s2PrivateStep246_checked : compileHmrSourceStepLog s2PrivateStep246Arena s2PrivateStep246Bank
    s2PrivateStep246Spec.fgWidth s2PrivateStep246Spec.vWidth s2PrivateStep246Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]
    6 498 246 s2PrivateStep246Spec.need none s2PrivateStep246Spec.log=some s2PrivateStep246Plan := by
  change compileHmrSourceStepLog s2Step246EntryFBefore s2Step246FrontBank 147 138 ⟨147,146,138,137⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 6 498 246 51 none (.early s2Step246CompleteLog)=some (.early s2Step246CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 246<498)]
  rw [s2Step246Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
