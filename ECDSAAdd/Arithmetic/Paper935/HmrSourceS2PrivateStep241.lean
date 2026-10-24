import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep239
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

private def s2Step241CompleteMoves : List (Wire × Wire) := [(830,149)]

private def s2Step241EarlyControlLog : HmrEarlyControlLog := ⟨[830, 810, 819, 809, 793],[814],[826],[792, 800, 885, 891, 894, 896],[]⟩

private def s2Step241FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[793], [809], [810], [819]],[[], [], [], []]⟩,[842],[834],[814],[826],[792, 800, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[792, 800, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 826, 792, 800]⟩

private def s2Step241CompleteLog : HmrEarlyStepLog := ⟨s2Step241FrontLog,s2Step241CompleteMoves,s2Step241EarlyControlLog⟩

private def s2Step241ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩

private def s2Step241ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832],770⟩

private def s2Step241ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148],769⟩

private def s2Step241ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩

private def s2Step241FrontOut : WindowBank := ⟨s2Step241ExitFOut,s2Step241ExitGOut,s2Step241ExitFvOut,s2Step241ExitGvOut⟩

private def s2Step241CompleteOut : WindowBank := s2Step241FrontOut.repacked s2Step241CompleteMoves

private def s2Step241EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step241EarlyControlPositiveArena,[814],s2Step241EarlyControlEqualityArena,[826],⟨⟨842,false⟩,[⟨⟨814,false⟩,826⟩]⟩⟩

private def s2Step241EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,830⟩,⟨⟨774,false⟩,810⟩,⟨⟨775,false⟩,819⟩,⟨⟨776,false⟩,809⟩,⟨⟨777,false⟩,793⟩]⟩

private def s2Step241EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step241EarlyControlZeroArena,s2Step241EarlyControlZeroPlan,s2Step241EarlyControlClassPlan,s2Step241EarlyControlFlagArena,s2Step241EarlyControlFittedArena,s2Step241EarlyControlHistoryArena,s2Step241EarlyControlSigmaArena,s2Step241EarlyControlOutputArena,s2Step241EarlyControlLog⟩

private def s2Step241CounterWork : List Wire := [814, 826, 792, 800]

private theorem s2Step241Counter_bounded : s2Step241CounterWork.toFinset⊆arenaWires := by norm_num [s2Step241CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step241HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241CounterDuring : Arena := ⟨s2Step241HeadFvAfter.live∪s2Step241CounterWork.toFinset,Finset.union_subset s2Step241HeadFvAfter.bounded s2Step241Counter_bounded⟩

private def s2Step241EntryFFresh : List Wire := []

private def s2Step241EntryFvFresh : List Wire := []

private def s2Step241EntryGFresh : List Wire := []

private def s2Step241EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241EntryGvAfter : Arena := s2Step241EntryFBefore

private def s2Step241EntryGvFresh : List Wire := []

private def s2Step241ExitFExtra : List Wire := [809]

private def s2Step241ExitFvExtra : List Wire := [819]

private def s2Step241ExitGExtra : List Wire := [149, 793]

private def s2Step241ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241ExitGvExtra : List Wire := [810]

private def s2Step241Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241Add0Work : List Wire := [792, 800, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step241Add0_bounded : s2Step241Add0Work.toFinset⊆arenaWires := by
  have h : s2Step241Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step241Add0During : Arena := ⟨s2Step241Add0Arena.live∪s2Step241Add0Work.toFinset,Finset.union_subset s2Step241Add0Arena.bounded s2Step241Add0_bounded⟩

private def s2Step241Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241Add1Work : List Wire := [792, 800, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step241Add1_bounded : s2Step241Add1Work.toFinset⊆arenaWires := by
  have h : s2Step241Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step241Add1During : Arena := ⟨s2Step241Add1Arena.live∪s2Step241Add1Work.toFinset,Finset.union_subset s2Step241Add1Arena.bounded s2Step241Add1_bounded⟩

private def s2Step241F4FlagArena : Arena := ⟨s2Step241HeadFvAfter.live∪{814},Finset.union_subset s2Step241HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step241F4Plan : HmrHybridF4Plan := ⟨s2Step241F4FlagArena,[814],s2Step241Add0Arena,[826],s2Step241Add0During,s2Step241Add0Work,s2Step241Add1During,s2Step241Add1Work⟩

private def s2Step241HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 809],768⟩

private def s2Step241HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 819],770⟩

private def s2Step241HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 793],769⟩

private def s2Step241HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 810],771⟩

private def s2Step241FrontHead : WindowBank := ⟨s2Step241HeadFOut,s2Step241HeadGOut,s2Step241HeadFvOut,s2Step241HeadGvOut⟩

private def s2Step241EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩

private def s2Step241EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832],770⟩

private def s2Step241EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],769⟩

private def s2Step241EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩

private def s2Step241FrontPair : WindowBank := ⟨s2Step241EntryFOut,s2Step241EntryGOut,s2Step241EntryFvOut,s2Step241EntryGvOut⟩

private def s2Step241FrontSigmaArena : Arena := ⟨s2Step241EntryGvAfter.live∪{842},Finset.union_subset s2Step241EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step241HeadFFresh : List Wire := [809]

private def s2Step241HeadFvFresh : List Wire := [819]

private def s2Step241HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241HeadGFresh : List Wire := [793]

private def s2Step241HeadGvFresh : List Wire := [810]

private def s2Step241FrontPlan : HmrSourceFront := ⟨s2Step241EntryGvAfter,s2Step241FrontPair,(growRow 768 s2Step241EntryFFresh ++ (growRow 769 s2Step241EntryGFresh ++ (growRow 770 s2Step241EntryFvFresh ++ (growRow 771 s2Step241EntryGvFresh ++ [])))),s2Step241FrontSigmaArena,[842],s2Step241HeadGBefore,[834],
  s2Step241HeadFvAfter,s2Step241FrontHead,(growRow 769 s2Step241HeadGFresh ++ (growRow 768 s2Step241HeadFFresh ++ (growRow 771 s2Step241HeadGvFresh ++ (growRow 770 s2Step241HeadFvFresh ++ [])))),s2Step241F4Plan,s2Step241CounterDuring,s2Step241CounterWork,s2Step241ExitGvAfter,s2Step241FrontOut,(shrinkRow 769 s2Step241ExitGExtra ++ (shrinkRow 768 s2Step241ExitFExtra ++ (shrinkRow 770 s2Step241ExitFvExtra ++ (shrinkRow 771 s2Step241ExitGvExtra ++ []))))⟩

private def s2Step241CompletePlan : HmrEarlyStepPlan := ⟨s2Step241FrontPlan,s2Step241EarlyControlArena,s2Step241EarlyControlPlan,s2Step241CompleteMoves⟩

private theorem s2Step241Complete_apart : List.Disjoint (s2Step241CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [842, 834, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] := by
  have nd : ((s2Step241CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[842, 834, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step241Complete_owned : (s2Step241CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step241EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step241EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private def s2Step241CompleteMoveArena : Arena := ⟨s2Step241ExitGvAfter.live∪{149},Finset.union_subset s2Step241ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step241Complete_repack : s2Step241ExitGvAfter.checkRepack s2Step241CompleteMoves=some s2Step241EarlyControlArena := by
  have owned : 830∈s2Step241ExitGvAfter.live := by norm_num [s2Step241ExitGvAfter,arenaWires]
  have reserve : s2Step241ExitGvAfter.reserve {149}=some s2Step241CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step241ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step241CompleteMoveArena.retireSet {830}=s2Step241EarlyControlArena := by
    unfold Arena.retireSet s2Step241EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step241CompleteMoveArena,s2Step241ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step241CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step241CompleteMoveArena.retireSet {830}).checkRepack []=some s2Step241EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step241EarlyControl_branchOwned : ([834] : List Wire).toFinset⊆s2Step241EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step241EarlyControlSigmaArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241EarlyControl_branch : compileHmrBranchRetirement s2Step241EarlyControlSigmaArena 834=some s2Step241EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step241EarlyControl_branchOwned
  · ext q
    simp [s2Step241EarlyControlOutputArena,s2Step241EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step241EarlyControl_classEqualityBorrow : s2Step241EarlyControlPositiveArena.checkBorrow (([842, 814] : List Wire).length-1) s2Step241EarlyControlLog.classWork=some s2Step241EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step241EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step241EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step241EarlyControlEqualityArena,s2Step241EarlyControlPositiveArena,s2Step241EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step241EarlyControl_classEqualityOwned : ([842, 814] : List Wire).toFinset⊆s2Step241EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step241EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241EarlyControl_classEquality : compileHmrEqualityLog s2Step241EarlyControlPositiveArena [842, 814] 0 s2Step241EarlyControlLog.classWork=some (s2Step241EarlyControlEqualityArena,s2Step241EarlyControlLog.classWork,s2Step241EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step241EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step241EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step241EarlyControl_classOwned : ([777, 793, 842] : List Wire).toFinset⊆s2Step241EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step241EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241EarlyControl_positiveBorrow : s2Step241EarlyControlZeroArena.checkBorrow (1) s2Step241EarlyControlLog.positiveWork=some s2Step241EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step241EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step241EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step241EarlyControlPositiveArena,s2Step241EarlyControlZeroArena,s2Step241EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step241EarlyControl_class : compileHmrSourceClassLog s2Step241EarlyControlZeroArena false 777 s2Step241EarlyControlZeroPlan.top 0 842 s2Step241EarlyControlLog.positiveWork s2Step241EarlyControlLog.classWork=some s2Step241EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step241EarlyControlClassPlan s2Step241EarlyControlZeroArena false 777 s2Step241EarlyControlZeroPlan.top 0 842
  constructor
  · decide +kernel
  · exact s2Step241EarlyControl_classOwned
  · exact s2Step241EarlyControl_positiveBorrow
  · exact s2Step241EarlyControl_classEquality

private theorem s2Step241EarlyControl_entryRecordOwned : ([834, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step241EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step241EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241EarlyControl_entrySigmaOwned : ([842, 254] : List Wire).toFinset⊆s2Step241EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step241EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241EarlyControl_fitBorrow : s2Step241EarlyControlFlagArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step241EarlyControlLog.recordFresh=some s2Step241EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step241EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step241EarlyControlFlagArena (fun q => (0≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step241EarlyControlFittedArena,s2Step241EarlyControlFlagArena,s2Step241EarlyControlLog,arenaWires]

private theorem s2Step241EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step241EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step241EarlyControlFlagArena (fun q => (0≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241EarlyControl_fit : compileHmrRecordGrowLog s2Step241EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step241EarlyControlLog.recordFresh=some s2Step241EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step241EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step241EarlyControl_fitBorrow

private theorem s2Step241EarlyControl_flagsBorrow : s2Step241EarlyControlEqualityArena.checkBorrow (6) s2Step241EarlyControlLog.flagWork=some s2Step241EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step241EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step241EarlyControlEqualityArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step241EarlyControlFlagArena,s2Step241EarlyControlEqualityArena,s2Step241EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step241EarlyControl_flagsOwned : ([826, 253, 252, 251] : List Wire).toFinset⊆s2Step241EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step241EarlyControlEqualityArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241EarlyControl_flags : compileHmrFlagsLog s2Step241EarlyControlClassPlan.equalityArena s2Step241EarlyControlClassPlan.equality.top 253 252 251 s2Step241EarlyControlLog.flagWork=some s2Step241EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step241EarlyControl_flagsOwned⟩
  · exact s2Step241EarlyControl_flagsBorrow

private theorem s2Step241EarlyControl_historyBorrow : s2Step241EarlyControlArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step241EarlyControlLog.recordFresh=some s2Step241EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step241EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step241EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step241EarlyControlHistoryArena,s2Step241EarlyControlArena,s2Step241EarlyControlLog,arenaWires]

private theorem s2Step241EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step241EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step241EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241EarlyControl_history : compileHmrRecordGrowLog s2Step241EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step241EarlyControlLog.recordFresh=some s2Step241EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step241EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step241EarlyControl_historyBorrow

private theorem s2Step241EarlyControl_sigmaOwned : ([254, 842] : List Wire).toFinset⊆s2Step241EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step241EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241EarlyControl_sigmaReleaseOwned : ([842] : List Wire).toFinset⊆s2Step241EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step241EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241EarlyControl_sigmaRelease : s2Step241EarlyControlHistoryArena.release {842} (fun _ => false)=some s2Step241EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step241EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step241EarlyControlSigmaArena,s2Step241EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step241EarlyControl_sigma : compileHmrSigmaDropLog s2Step241EarlyControlHistoryArena false 0 0 254 842 []=some s2Step241EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step241EarlyControl_sigmaOwned⟩
  · exact s2Step241EarlyControl_sigmaRelease

private theorem s2Step241EarlyControl_zeroBorrow : s2Step241EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step241EarlyControlLog.zeroWork=some s2Step241EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step241EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step241EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step241EarlyControlZeroArena,s2Step241EarlyControlArena,s2Step241EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step241EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step241EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step241EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241EarlyControl_zero : compileHmrEqualityLog s2Step241EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step241EarlyControlLog.zeroWork=some (s2Step241EarlyControlZeroArena,s2Step241EarlyControlLog.zeroWork,s2Step241EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step241EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step241EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step241EarlyControl_logged : s2Step241EarlyControlPlan.Logged s2Step241EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 842 254 253 252 251 834 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step241EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step241EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step241EarlyControl_zero
  · exact s2Step241EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step241EarlyControl_flags
  · exact s2Step241EarlyControl_fit
  · exact s2Step241EarlyControl_history
  · exact s2Step241EarlyControl_sigma
  · exact s2Step241EarlyControl_branch

private theorem s2Step241EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step241EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 842 254 253 252 251 834 49 s2Step241EarlyControlLog=some s2Step241EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step241EarlyControlPlan s2Step241EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 842 254 253 252 251 834 49 s2Step241EarlyControl_logged

private def s2Step241EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩

private def s2Step241EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832],770⟩

private def s2Step241EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],769⟩

private def s2Step241EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩

private def s2Step241FrontBank : WindowBank := ⟨s2Step241EntryFRow,s2Step241EntryGRow,s2Step241EntryFvRow,s2Step241EntryGvRow⟩

private def s2Step241Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 809, 768]

private def s2Step241Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 793, 769]

private def s2Step241Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 819, 770]

private def s2Step241Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 810, 771]

private theorem s2Step241Counter_apart : Disjoint s2Step241HeadFvAfter.live s2Step241CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step241HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241Counter_borrowed : s2Step241HeadFvAfter.checkBorrow 4 s2Step241CounterWork=some s2Step241CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step241HeadFvAfter s2Step241CounterDuring s2Step241CounterWork.toFinset s2Step241Counter_bounded s2Step241Counter_apart rfl

private theorem s2Step241Counter_owned : (842::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step241HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step241HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241Counter_checked : compileHmrCounterStepLog s2Step241HeadFvAfter true 842 [772, 773, 774, 775, 776, 777] s2Step241CounterWork=some s2Step241CounterDuring := by
  have owned : ∀q∈842::[772, 773, 774, 775, 776, 777],q∈s2Step241HeadFvAfter.live := fun q hq => s2Step241Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step241Counter_borrowed

private def s2Step241EntryFAfter : Arena := s2Step241EntryFBefore

private theorem s2Step241EntryBank_incomingDistinct : ([s2Step241EntryFRow,s2Step241EntryGRow,s2Step241EntryFvRow,s2Step241EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step241EntryF_Incoming : rowsOwned s2Step241EntryFBefore [s2Step241EntryFRow,s2Step241EntryGRow,s2Step241EntryFvRow,s2Step241EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step241EntryFRow,s2Step241EntryGRow,s2Step241EntryFvRow,s2Step241EntryGvRow] 0 s2Step241EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step241EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step241EntryBank_outgoingOwned : rowsOwned s2Step241EntryGvAfter [s2Step241EntryFOut,s2Step241EntryGOut,s2Step241EntryFvOut,s2Step241EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step241EntryGvAfter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step241EntryF_Outgoing : rowsOwned s2Step241EntryGvAfter [s2Step241EntryFOut,s2Step241EntryGOut,s2Step241EntryFvOut,s2Step241EntryGvOut] :=
  hmrRows_owned_drop s2Step241EntryGvAfter [s2Step241EntryFOut,s2Step241EntryGOut,s2Step241EntryFvOut,s2Step241EntryGvOut] 0 s2Step241EntryBank_outgoingOwned

private theorem s2Step241EntryF_distinct : (s2Step241EntryFRow.sign::s2Step241EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step241EntryF_owned : (s2Step241EntryFRow.sign::s2Step241EntryFRow.payload).toFinset⊆s2Step241EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step241EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241EntryF_reserved : s2Step241EntryFBefore.reserve s2Step241EntryFFresh.toFinset=some s2Step241EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step241EntryFFresh,arenaWires]
  · norm_num [s2Step241EntryFBefore,s2Step241EntryFFresh,arenaWires]
  · simp only [s2Step241EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step241EntryF_checked : planRowResizeLog s2Step241EntryFBefore s2Step241EntryFRow 150 s2Step241EntryFFresh=
    some (s2Step241EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩,growRow 768 s2Step241EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step241EntryFBefore s2Step241EntryFAfter s2Step241EntryFRow 150 s2Step241EntryFFresh
    s2Step241EntryF_distinct s2Step241EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step241EntryF_reserved
  have rowEq : WindowRow.mk (s2Step241EntryFRow.payload++s2Step241EntryFFresh) s2Step241EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step241EntryFvAfter : Arena := s2Step241EntryFBefore

private def s2Step241EntryFvBefore : Arena := s2Step241EntryFBefore

private theorem s2Step241EntryFv_Incoming : rowsOwned s2Step241EntryFvBefore [s2Step241EntryFvRow,s2Step241EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step241EntryFRow,s2Step241EntryGRow,s2Step241EntryFvRow,s2Step241EntryGvRow] 2 s2Step241EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step241EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step241EntryFv_Outgoing : rowsOwned s2Step241EntryGvAfter [s2Step241EntryFvOut,s2Step241EntryGvOut] :=
  hmrRows_owned_drop s2Step241EntryGvAfter [s2Step241EntryFOut,s2Step241EntryGOut,s2Step241EntryFvOut,s2Step241EntryGvOut] 2 s2Step241EntryBank_outgoingOwned

private theorem s2Step241EntryFv_distinct : (s2Step241EntryFvRow.sign::s2Step241EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step241EntryFv_owned : (s2Step241EntryFvRow.sign::s2Step241EntryFvRow.payload).toFinset⊆s2Step241EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step241EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241EntryFv_reserved : s2Step241EntryFvBefore.reserve s2Step241EntryFvFresh.toFinset=some s2Step241EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step241EntryFvFresh,arenaWires]
  · norm_num [s2Step241EntryFvBefore,s2Step241EntryFBefore,s2Step241EntryFvFresh,arenaWires]
  · simp only [s2Step241EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step241EntryFv_checked : planRowResizeLog s2Step241EntryFvBefore s2Step241EntryFvRow 135 s2Step241EntryFvFresh=
    some (s2Step241EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832],770⟩,growRow 770 s2Step241EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step241EntryFvBefore s2Step241EntryFvAfter s2Step241EntryFvRow 135 s2Step241EntryFvFresh
    s2Step241EntryFv_distinct s2Step241EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step241EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step241EntryFvRow.payload++s2Step241EntryFvFresh) s2Step241EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step241EntryGAfter : Arena := s2Step241EntryFBefore

private def s2Step241EntryGBefore : Arena := s2Step241EntryFBefore

private theorem s2Step241EntryG_Incoming : rowsOwned s2Step241EntryGBefore [s2Step241EntryGRow,s2Step241EntryFvRow,s2Step241EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step241EntryFRow,s2Step241EntryGRow,s2Step241EntryFvRow,s2Step241EntryGvRow] 1 s2Step241EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step241EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step241EntryG_Outgoing : rowsOwned s2Step241EntryGvAfter [s2Step241EntryGOut,s2Step241EntryFvOut,s2Step241EntryGvOut] :=
  hmrRows_owned_drop s2Step241EntryGvAfter [s2Step241EntryFOut,s2Step241EntryGOut,s2Step241EntryFvOut,s2Step241EntryGvOut] 1 s2Step241EntryBank_outgoingOwned

private theorem s2Step241EntryG_distinct : (s2Step241EntryGRow.sign::s2Step241EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step241EntryG_owned : (s2Step241EntryGRow.sign::s2Step241EntryGRow.payload).toFinset⊆s2Step241EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step241EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241EntryG_reserved : s2Step241EntryGBefore.reserve s2Step241EntryGFresh.toFinset=some s2Step241EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step241EntryGFresh,arenaWires]
  · norm_num [s2Step241EntryGBefore,s2Step241EntryFBefore,s2Step241EntryGFresh,arenaWires]
  · simp only [s2Step241EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step241EntryG_checked : planRowResizeLog s2Step241EntryGBefore s2Step241EntryGRow 150 s2Step241EntryGFresh=
    some (s2Step241EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],769⟩,growRow 769 s2Step241EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step241EntryGBefore s2Step241EntryGAfter s2Step241EntryGRow 150 s2Step241EntryGFresh
    s2Step241EntryG_distinct s2Step241EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step241EntryG_reserved
  have rowEq : WindowRow.mk (s2Step241EntryGRow.payload++s2Step241EntryGFresh) s2Step241EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step241EntryGvBefore : Arena := s2Step241EntryFBefore

private theorem s2Step241EntryGv_Incoming : rowsOwned s2Step241EntryGvBefore [s2Step241EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step241EntryFRow,s2Step241EntryGRow,s2Step241EntryFvRow,s2Step241EntryGvRow] 3 s2Step241EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step241EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step241EntryGv_Outgoing : rowsOwned s2Step241EntryGvAfter [s2Step241EntryGvOut] :=
  hmrRows_owned_drop s2Step241EntryGvAfter [s2Step241EntryFOut,s2Step241EntryGOut,s2Step241EntryFvOut,s2Step241EntryGvOut] 3 s2Step241EntryBank_outgoingOwned

private theorem s2Step241EntryGv_distinct : (s2Step241EntryGvRow.sign::s2Step241EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step241EntryGv_owned : (s2Step241EntryGvRow.sign::s2Step241EntryGvRow.payload).toFinset⊆s2Step241EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step241EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241EntryGv_reserved : s2Step241EntryGvBefore.reserve s2Step241EntryGvFresh.toFinset=some s2Step241EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step241EntryGvFresh,arenaWires]
  · norm_num [s2Step241EntryGvBefore,s2Step241EntryFBefore,s2Step241EntryGvFresh,arenaWires]
  · simp only [s2Step241EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step241EntryGv_checked : planRowResizeLog s2Step241EntryGvBefore s2Step241EntryGvRow 135 s2Step241EntryGvFresh=
    some (s2Step241EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩,growRow 771 s2Step241EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step241EntryGvBefore s2Step241EntryGvAfter s2Step241EntryGvRow 135 s2Step241EntryGvFresh
    s2Step241EntryGv_distinct s2Step241EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step241EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step241EntryGvRow.payload++s2Step241EntryGvFresh) s2Step241EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step241EntryBank_rows : planWindowRowsLog s2Step241EntryFBefore [(s2Step241EntryFRow,150),(s2Step241EntryGRow,150),(s2Step241EntryFvRow,135),(s2Step241EntryGvRow,135)] [s2Step241EntryFFresh,s2Step241EntryGFresh,s2Step241EntryFvFresh,s2Step241EntryGvFresh]=
    some (s2Step241EntryGvAfter,[s2Step241EntryFOut,s2Step241EntryGOut,s2Step241EntryFvOut,s2Step241EntryGvOut],(growRow 768 s2Step241EntryFFresh ++ (growRow 769 s2Step241EntryGFresh ++ (growRow 770 s2Step241EntryFvFresh ++ (growRow 771 s2Step241EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step241EntryGvAfter [] []=some (s2Step241EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step241EntryGvBefore s2Step241EntryGvAfter s2Step241EntryGvAfter
    s2Step241EntryGvRow s2Step241EntryGvOut 135 s2Step241EntryGvFresh [] [] []
    (growRow 771 s2Step241EntryGvFresh) ([]) s2Step241EntryGv_Incoming s2Step241EntryGv_checked h4 s2Step241EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step241EntryFvBefore s2Step241EntryFvAfter s2Step241EntryGvAfter
    s2Step241EntryFvRow s2Step241EntryFvOut 135 s2Step241EntryFvFresh [(s2Step241EntryGvRow,135)] [s2Step241EntryGvFresh] [s2Step241EntryGvOut]
    (growRow 770 s2Step241EntryFvFresh) ((growRow 771 s2Step241EntryGvFresh ++ [])) s2Step241EntryFv_Incoming s2Step241EntryFv_checked h3 s2Step241EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step241EntryGBefore s2Step241EntryGAfter s2Step241EntryGvAfter
    s2Step241EntryGRow s2Step241EntryGOut 150 s2Step241EntryGFresh [(s2Step241EntryFvRow,135),(s2Step241EntryGvRow,135)] [s2Step241EntryFvFresh,s2Step241EntryGvFresh] [s2Step241EntryFvOut,s2Step241EntryGvOut]
    (growRow 769 s2Step241EntryGFresh) ((growRow 770 s2Step241EntryFvFresh ++ (growRow 771 s2Step241EntryGvFresh ++ []))) s2Step241EntryG_Incoming s2Step241EntryG_checked h2 s2Step241EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step241EntryFBefore s2Step241EntryFAfter s2Step241EntryGvAfter
    s2Step241EntryFRow s2Step241EntryFOut 150 s2Step241EntryFFresh [(s2Step241EntryGRow,150),(s2Step241EntryFvRow,135),(s2Step241EntryGvRow,135)] [s2Step241EntryGFresh,s2Step241EntryFvFresh,s2Step241EntryGvFresh] [s2Step241EntryGOut,s2Step241EntryFvOut,s2Step241EntryGvOut]
    (growRow 768 s2Step241EntryFFresh) ((growRow 769 s2Step241EntryGFresh ++ (growRow 770 s2Step241EntryFvFresh ++ (growRow 771 s2Step241EntryGvFresh ++ [])))) s2Step241EntryF_Incoming s2Step241EntryF_checked h1 s2Step241EntryF_Outgoing
  exact h0

private theorem s2Step241EntryBank_checked : compileHmrBankResizeLog .entry s2Step241EntryFBefore ⟨s2Step241EntryFRow,s2Step241EntryGRow,s2Step241EntryFvRow,s2Step241EntryGvRow⟩ ⟨150,150,135,135⟩ [s2Step241EntryFFresh,s2Step241EntryGFresh,s2Step241EntryFvFresh,s2Step241EntryGvFresh]=
    some (s2Step241EntryGvAfter,⟨s2Step241EntryFOut,s2Step241EntryGOut,s2Step241EntryFvOut,s2Step241EntryGvOut⟩,(growRow 768 s2Step241EntryFFresh ++ (growRow 769 s2Step241EntryGFresh ++ (growRow 770 s2Step241EntryFvFresh ++ (growRow 771 s2Step241EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step241EntryBank_rows]
  rfl

private def s2Step241ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241ExitFBefore : Arena := s2Step241ExitGAfter

private def s2Step241ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 809],768⟩

private def s2Step241ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 819],770⟩

private def s2Step241ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 793],769⟩

private def s2Step241ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 810],771⟩

private theorem s2Step241ExitBank_incomingDistinct : ([s2Step241ExitGRow,s2Step241ExitFRow,s2Step241ExitFvRow,s2Step241ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step241ExitF_Incoming : rowsOwned s2Step241ExitFBefore [s2Step241ExitFRow,s2Step241ExitFvRow,s2Step241ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step241ExitGRow,s2Step241ExitFRow,s2Step241ExitFvRow,s2Step241ExitGvRow] 1 s2Step241ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step241ExitFBefore (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step241ExitBank_outgoingOwned : rowsOwned s2Step241ExitGvAfter [s2Step241ExitGOut,s2Step241ExitFOut,s2Step241ExitFvOut,s2Step241ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step241ExitGvAfter (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step241ExitF_Outgoing : rowsOwned s2Step241ExitGvAfter [s2Step241ExitFOut,s2Step241ExitFvOut,s2Step241ExitGvOut] :=
  hmrRows_owned_drop s2Step241ExitGvAfter [s2Step241ExitGOut,s2Step241ExitFOut,s2Step241ExitFvOut,s2Step241ExitGvOut] 1 s2Step241ExitBank_outgoingOwned

private theorem s2Step241ExitF_distinct : (s2Step241ExitFRow.sign::s2Step241ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step241ExitF_owned : (s2Step241ExitFRow.sign::s2Step241ExitFRow.payload).toFinset⊆s2Step241ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step241ExitFBefore (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241ExitF_retired : s2Step241ExitFBefore.retireSet s2Step241ExitFExtra.toFinset=s2Step241ExitFAfter := by
  unfold Arena.retireSet s2Step241ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step241ExitFBefore,s2Step241ExitGAfter,s2Step241ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step241ExitF_checked : planRowResizeLog s2Step241ExitFBefore s2Step241ExitFRow 150 []=
    some (s2Step241ExitFAfter,s2Step241ExitFOut,shrinkRow 768 s2Step241ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step241ExitFBefore s2Step241ExitFRow 150 s2Step241ExitF_distinct s2Step241ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step241ExitFRow.payload.take 150) s2Step241ExitFRow.sign=s2Step241ExitFOut := by decide +kernel
  have hi : s2Step241ExitFRow.payload.drop 150=s2Step241ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step241ExitF_retired] at result
  exact result

private def s2Step241ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241ExitFvBefore : Arena := s2Step241ExitFAfter

private theorem s2Step241ExitFv_Incoming : rowsOwned s2Step241ExitFvBefore [s2Step241ExitFvRow,s2Step241ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step241ExitGRow,s2Step241ExitFRow,s2Step241ExitFvRow,s2Step241ExitGvRow] 2 s2Step241ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step241ExitFvBefore (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step241ExitFv_Outgoing : rowsOwned s2Step241ExitGvAfter [s2Step241ExitFvOut,s2Step241ExitGvOut] :=
  hmrRows_owned_drop s2Step241ExitGvAfter [s2Step241ExitGOut,s2Step241ExitFOut,s2Step241ExitFvOut,s2Step241ExitGvOut] 2 s2Step241ExitBank_outgoingOwned

private theorem s2Step241ExitFv_distinct : (s2Step241ExitFvRow.sign::s2Step241ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step241ExitFv_owned : (s2Step241ExitFvRow.sign::s2Step241ExitFvRow.payload).toFinset⊆s2Step241ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step241ExitFvBefore (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241ExitFv_retired : s2Step241ExitFvBefore.retireSet s2Step241ExitFvExtra.toFinset=s2Step241ExitFvAfter := by
  unfold Arena.retireSet s2Step241ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step241ExitFvBefore,s2Step241ExitFAfter,s2Step241ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step241ExitFv_checked : planRowResizeLog s2Step241ExitFvBefore s2Step241ExitFvRow 135 []=
    some (s2Step241ExitFvAfter,s2Step241ExitFvOut,shrinkRow 770 s2Step241ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step241ExitFvBefore s2Step241ExitFvRow 135 s2Step241ExitFv_distinct s2Step241ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step241ExitFvRow.payload.take 135) s2Step241ExitFvRow.sign=s2Step241ExitFvOut := by decide +kernel
  have hi : s2Step241ExitFvRow.payload.drop 135=s2Step241ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step241ExitFv_retired] at result
  exact result

private def s2Step241ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private theorem s2Step241ExitG_Incoming : rowsOwned s2Step241ExitGBefore [s2Step241ExitGRow,s2Step241ExitFRow,s2Step241ExitFvRow,s2Step241ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step241ExitGRow,s2Step241ExitFRow,s2Step241ExitFvRow,s2Step241ExitGvRow] 0 s2Step241ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step241ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step241ExitG_Outgoing : rowsOwned s2Step241ExitGvAfter [s2Step241ExitGOut,s2Step241ExitFOut,s2Step241ExitFvOut,s2Step241ExitGvOut] :=
  hmrRows_owned_drop s2Step241ExitGvAfter [s2Step241ExitGOut,s2Step241ExitFOut,s2Step241ExitFvOut,s2Step241ExitGvOut] 0 s2Step241ExitBank_outgoingOwned

private theorem s2Step241ExitG_distinct : (s2Step241ExitGRow.sign::s2Step241ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step241ExitG_owned : (s2Step241ExitGRow.sign::s2Step241ExitGRow.payload).toFinset⊆s2Step241ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step241ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241ExitG_retired : s2Step241ExitGBefore.retireSet s2Step241ExitGExtra.toFinset=s2Step241ExitGAfter := by
  unfold Arena.retireSet s2Step241ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step241ExitGBefore,s2Step241ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step241ExitG_checked : planRowResizeLog s2Step241ExitGBefore s2Step241ExitGRow 149 []=
    some (s2Step241ExitGAfter,s2Step241ExitGOut,shrinkRow 769 s2Step241ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step241ExitGBefore s2Step241ExitGRow 149 s2Step241ExitG_distinct s2Step241ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step241ExitGRow.payload.take 149) s2Step241ExitGRow.sign=s2Step241ExitGOut := by decide +kernel
  have hi : s2Step241ExitGRow.payload.drop 149=s2Step241ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step241ExitG_retired] at result
  exact result

private def s2Step241ExitGvBefore : Arena := s2Step241ExitFvAfter

private theorem s2Step241ExitGv_Incoming : rowsOwned s2Step241ExitGvBefore [s2Step241ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step241ExitGRow,s2Step241ExitFRow,s2Step241ExitFvRow,s2Step241ExitGvRow] 3 s2Step241ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step241ExitGvBefore (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step241ExitGv_Outgoing : rowsOwned s2Step241ExitGvAfter [s2Step241ExitGvOut] :=
  hmrRows_owned_drop s2Step241ExitGvAfter [s2Step241ExitGOut,s2Step241ExitFOut,s2Step241ExitFvOut,s2Step241ExitGvOut] 3 s2Step241ExitBank_outgoingOwned

private theorem s2Step241ExitGv_distinct : (s2Step241ExitGvRow.sign::s2Step241ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step241ExitGv_owned : (s2Step241ExitGvRow.sign::s2Step241ExitGvRow.payload).toFinset⊆s2Step241ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step241ExitGvBefore (fun q => (0≤q ∧ q<149) ∨ (150≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241ExitGv_retired : s2Step241ExitGvBefore.retireSet s2Step241ExitGvExtra.toFinset=s2Step241ExitGvAfter := by
  unfold Arena.retireSet s2Step241ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step241ExitGvBefore,s2Step241ExitFvAfter,s2Step241ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step241ExitGv_checked : planRowResizeLog s2Step241ExitGvBefore s2Step241ExitGvRow 135 []=
    some (s2Step241ExitGvAfter,s2Step241ExitGvOut,shrinkRow 771 s2Step241ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step241ExitGvBefore s2Step241ExitGvRow 135 s2Step241ExitGv_distinct s2Step241ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step241ExitGvRow.payload.take 135) s2Step241ExitGvRow.sign=s2Step241ExitGvOut := by decide +kernel
  have hi : s2Step241ExitGvRow.payload.drop 135=s2Step241ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step241ExitGv_retired] at result
  exact result

private theorem s2Step241ExitBank_rows : planWindowRowsLog s2Step241ExitGBefore [(s2Step241ExitGRow,149),(s2Step241ExitFRow,150),(s2Step241ExitFvRow,135),(s2Step241ExitGvRow,135)] [[],[],[],[]]=
    some (s2Step241ExitGvAfter,[s2Step241ExitGOut,s2Step241ExitFOut,s2Step241ExitFvOut,s2Step241ExitGvOut],(shrinkRow 769 s2Step241ExitGExtra ++ (shrinkRow 768 s2Step241ExitFExtra ++ (shrinkRow 770 s2Step241ExitFvExtra ++ (shrinkRow 771 s2Step241ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step241ExitGvAfter [] []=some (s2Step241ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step241ExitGvBefore s2Step241ExitGvAfter s2Step241ExitGvAfter
    s2Step241ExitGvRow s2Step241ExitGvOut 135 [] [] [] []
    (shrinkRow 771 s2Step241ExitGvExtra) ([]) s2Step241ExitGv_Incoming s2Step241ExitGv_checked h4 s2Step241ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step241ExitFvBefore s2Step241ExitFvAfter s2Step241ExitGvAfter
    s2Step241ExitFvRow s2Step241ExitFvOut 135 [] [(s2Step241ExitGvRow,135)] [[]] [s2Step241ExitGvOut]
    (shrinkRow 770 s2Step241ExitFvExtra) ((shrinkRow 771 s2Step241ExitGvExtra ++ [])) s2Step241ExitFv_Incoming s2Step241ExitFv_checked h3 s2Step241ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step241ExitFBefore s2Step241ExitFAfter s2Step241ExitGvAfter
    s2Step241ExitFRow s2Step241ExitFOut 150 [] [(s2Step241ExitFvRow,135),(s2Step241ExitGvRow,135)] [[],[]] [s2Step241ExitFvOut,s2Step241ExitGvOut]
    (shrinkRow 768 s2Step241ExitFExtra) ((shrinkRow 770 s2Step241ExitFvExtra ++ (shrinkRow 771 s2Step241ExitGvExtra ++ []))) s2Step241ExitF_Incoming s2Step241ExitF_checked h2 s2Step241ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step241ExitGBefore s2Step241ExitGAfter s2Step241ExitGvAfter
    s2Step241ExitGRow s2Step241ExitGOut 149 [] [(s2Step241ExitFRow,150),(s2Step241ExitFvRow,135),(s2Step241ExitGvRow,135)] [[],[],[]] [s2Step241ExitFOut,s2Step241ExitFvOut,s2Step241ExitGvOut]
    (shrinkRow 769 s2Step241ExitGExtra) ((shrinkRow 768 s2Step241ExitFExtra ++ (shrinkRow 770 s2Step241ExitFvExtra ++ (shrinkRow 771 s2Step241ExitGvExtra ++ [])))) s2Step241ExitG_Incoming s2Step241ExitG_checked h1 s2Step241ExitG_Outgoing
  exact h0

private theorem s2Step241ExitBank_checked : compileHmrBankResizeLog .exit s2Step241ExitGBefore ⟨s2Step241ExitFRow,s2Step241ExitGRow,s2Step241ExitFvRow,s2Step241ExitGvRow⟩ ⟨150,149,135,135⟩ [[],[],[],[]]=
    some (s2Step241ExitGvAfter,⟨s2Step241ExitFOut,s2Step241ExitGOut,s2Step241ExitFvOut,s2Step241ExitGvOut⟩,(shrinkRow 769 s2Step241ExitGExtra ++ (shrinkRow 768 s2Step241ExitFExtra ++ (shrinkRow 770 s2Step241ExitFvExtra ++ (shrinkRow 771 s2Step241ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step241ExitBank_rows]
  rfl

private theorem s2Step241Add0_apart : Disjoint s2Step241Add0Arena.live s2Step241Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step241Add0Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241Add0_card : s2Step241Add0Arena.live.card=893 := by
  decide +kernel

private theorem s2Step241Add0_borrowed : s2Step241Add0Arena.checkBorrow (hmrHybridCount s2Step241Add0Arena s2Step241Add0B.length) s2Step241Add0Work=some s2Step241Add0During := by
  have len : s2Step241Add0Work.length=hmrHybridCount s2Step241Add0Arena s2Step241Add0B.length := by
    rw [hmrHybridCount,s2Step241Add0_card]
    decide +kernel
  have nd : s2Step241Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step241Add0Arena s2Step241Add0During s2Step241Add0Work.toFinset s2Step241Add0_bounded s2Step241Add0_apart rfl

private theorem s2Step241Add0_distinct : (814::834::826::(s2Step241Add0A++s2Step241Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step241Add0_owned : (814::834::826::(s2Step241Add0A++s2Step241Add0B)).toFinset⊆s2Step241Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step241Add0Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241Add0_checked : compileHmrHybridCinLog s2Step241Add0Arena 834 814 826 s2Step241Add0A s2Step241Add0B s2Step241Add0Work=some s2Step241Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step241Add0Arena s2Step241Add0During 834 814 826 s2Step241Add0A s2Step241Add0B s2Step241Add0Work
    (by decide +kernel) (by decide +kernel) s2Step241Add0_distinct
    (fun q hq => s2Step241Add0_owned (List.mem_toFinset.mpr hq)) s2Step241Add0_borrowed

private theorem s2Step241Add1_apart : Disjoint s2Step241Add1Arena.live s2Step241Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step241Add1Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241Add1_card : s2Step241Add1Arena.live.card=893 := by
  decide +kernel

private theorem s2Step241Add1_borrowed : s2Step241Add1Arena.checkBorrow (hmrHybridCount s2Step241Add1Arena s2Step241Add1B.length) s2Step241Add1Work=some s2Step241Add1During := by
  have len : s2Step241Add1Work.length=hmrHybridCount s2Step241Add1Arena s2Step241Add1B.length := by
    rw [hmrHybridCount,s2Step241Add1_card]
    decide +kernel
  have nd : s2Step241Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step241Add1Arena s2Step241Add1During s2Step241Add1Work.toFinset s2Step241Add1_bounded s2Step241Add1_apart rfl

private theorem s2Step241Add1_distinct : (814::834::826::(s2Step241Add1A++s2Step241Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step241Add1_owned : (814::834::826::(s2Step241Add1A++s2Step241Add1B)).toFinset⊆s2Step241Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step241Add1Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241Add1_checked : compileHmrHybridCinLog s2Step241Add1Arena 834 814 826 s2Step241Add1A s2Step241Add1B s2Step241Add1Work=some s2Step241Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step241Add1Arena s2Step241Add1During 834 814 826 s2Step241Add1A s2Step241Add1B s2Step241Add1Work
    (by decide +kernel) (by decide +kernel) s2Step241Add1_distinct
    (fun q hq => s2Step241Add1_owned (List.mem_toFinset.mpr hq)) s2Step241Add1_borrowed

private theorem s2Step241F4_apart : Disjoint (s2Step241Add0A++s2Step241Add0B).toFinset (s2Step241Add1A++s2Step241Add1B).toFinset := by
  have nd : ((s2Step241Add0A++s2Step241Add0B)++(s2Step241Add1A++s2Step241Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step241F4_carry : s2Step241F4FlagArena.checkBorrow 1 [826]=some s2Step241Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step241F4FlagArena,s2Step241HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step241F4FlagArena,s2Step241HeadFvAfter,s2Step241Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step241F4_distinct : (842::834::814::826::((s2Step241Add0A++s2Step241Add1A)++(s2Step241Add0B++s2Step241Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step241F4_flag : s2Step241HeadFvAfter.checkBorrow 1 [814]=some s2Step241F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step241HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step241F4_owned : (842::834::((s2Step241Add0A++s2Step241Add1A)++(s2Step241Add0B++s2Step241Add1B))).toFinset⊆s2Step241HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step241HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241F4_checked : compileHmrHybridF4Log s2Step241HeadFvAfter 842 834 s2Step241Add0A s2Step241Add0B s2Step241Add1A s2Step241Add1B [814] [826] s2Step241Add0Work s2Step241Add1Work=some s2Step241F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step241HeadFvAfter s2Step241F4FlagArena s2Step241Add0Arena s2Step241Add0During s2Step241Add1During 842 834
    s2Step241Add0A s2Step241Add0B s2Step241Add1A s2Step241Add1B [814] [826] s2Step241Add0Work s2Step241Add1Work
    (fun q hq => s2Step241F4_owned (List.mem_toFinset.mpr hq)) s2Step241F4_flag s2Step241F4_carry
    s2Step241F4_distinct s2Step241F4_apart s2Step241Add0_checked s2Step241Add1_checked

private theorem s2Step241Front_branch : s2Step241FrontSigmaArena.checkBorrow 1 [834]=some s2Step241HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step241FrontSigmaArena,s2Step241EntryGvAfter,s2Step241EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step241FrontSigmaArena,s2Step241EntryGvAfter,s2Step241EntryFBefore,s2Step241HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step241Front_entry : HmrFrontEntryValid s2Step241EntryFBefore s2Step241FrontBank 150 135 ⟨150,149,135,135⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step241FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step241EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step241EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step241FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step241Front_sigma : s2Step241EntryGvAfter.checkBorrow 1 [842]=some s2Step241FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step241EntryGvAfter,s2Step241EntryFBefore,arenaWires]
  · rfl

private def s2Step241HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241HeadFBefore : Arena := s2Step241HeadGAfter

private def s2Step241HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩

private def s2Step241HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832],770⟩

private def s2Step241HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],769⟩

private def s2Step241HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩

private theorem s2Step241HeadBank_incomingDistinct : ([s2Step241HeadGRow,s2Step241HeadFRow,s2Step241HeadGvRow,s2Step241HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step241HeadF_Incoming : rowsOwned s2Step241HeadFBefore [s2Step241HeadFRow,s2Step241HeadGvRow,s2Step241HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step241HeadGRow,s2Step241HeadFRow,s2Step241HeadGvRow,s2Step241HeadFvRow] 1 s2Step241HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step241HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step241HeadBank_outgoingOwned : rowsOwned s2Step241HeadFvAfter [s2Step241HeadGOut,s2Step241HeadFOut,s2Step241HeadGvOut,s2Step241HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step241HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step241HeadF_Outgoing : rowsOwned s2Step241HeadFvAfter [s2Step241HeadFOut,s2Step241HeadGvOut,s2Step241HeadFvOut] :=
  hmrRows_owned_drop s2Step241HeadFvAfter [s2Step241HeadGOut,s2Step241HeadFOut,s2Step241HeadGvOut,s2Step241HeadFvOut] 1 s2Step241HeadBank_outgoingOwned

private theorem s2Step241HeadF_distinct : (s2Step241HeadFRow.sign::s2Step241HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step241HeadF_owned : (s2Step241HeadFRow.sign::s2Step241HeadFRow.payload).toFinset⊆s2Step241HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step241HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241HeadF_reserved : s2Step241HeadFBefore.reserve s2Step241HeadFFresh.toFinset=some s2Step241HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step241HeadFFresh,arenaWires]
  · norm_num [s2Step241HeadFBefore,s2Step241HeadGAfter,s2Step241HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step241HeadFAfter,s2Step241HeadFBefore,s2Step241HeadGAfter,s2Step241HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step241HeadF_checked : planRowResizeLog s2Step241HeadFBefore s2Step241HeadFRow 151 s2Step241HeadFFresh=
    some (s2Step241HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 809],768⟩,growRow 768 s2Step241HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step241HeadFBefore s2Step241HeadFAfter s2Step241HeadFRow 151 s2Step241HeadFFresh
    s2Step241HeadF_distinct s2Step241HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step241HeadF_reserved
  have rowEq : WindowRow.mk (s2Step241HeadFRow.payload++s2Step241HeadFFresh) s2Step241HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 809],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step241HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step241HeadFvBefore : Arena := s2Step241HeadGvAfter

private theorem s2Step241HeadFv_Incoming : rowsOwned s2Step241HeadFvBefore [s2Step241HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step241HeadGRow,s2Step241HeadFRow,s2Step241HeadGvRow,s2Step241HeadFvRow] 3 s2Step241HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step241HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step241HeadFv_Outgoing : rowsOwned s2Step241HeadFvAfter [s2Step241HeadFvOut] :=
  hmrRows_owned_drop s2Step241HeadFvAfter [s2Step241HeadGOut,s2Step241HeadFOut,s2Step241HeadGvOut,s2Step241HeadFvOut] 3 s2Step241HeadBank_outgoingOwned

private theorem s2Step241HeadFv_distinct : (s2Step241HeadFvRow.sign::s2Step241HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step241HeadFv_owned : (s2Step241HeadFvRow.sign::s2Step241HeadFvRow.payload).toFinset⊆s2Step241HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step241HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241HeadFv_reserved : s2Step241HeadFvBefore.reserve s2Step241HeadFvFresh.toFinset=some s2Step241HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step241HeadFvFresh,arenaWires]
  · norm_num [s2Step241HeadFvBefore,s2Step241HeadGvAfter,s2Step241HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step241HeadFvAfter,s2Step241HeadFvBefore,s2Step241HeadGvAfter,s2Step241HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step241HeadFv_checked : planRowResizeLog s2Step241HeadFvBefore s2Step241HeadFvRow 136 s2Step241HeadFvFresh=
    some (s2Step241HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 819],770⟩,growRow 770 s2Step241HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step241HeadFvBefore s2Step241HeadFvAfter s2Step241HeadFvRow 136 s2Step241HeadFvFresh
    s2Step241HeadFv_distinct s2Step241HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step241HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step241HeadFvRow.payload++s2Step241HeadFvFresh) s2Step241HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 819],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step241HeadG_Incoming : rowsOwned s2Step241HeadGBefore [s2Step241HeadGRow,s2Step241HeadFRow,s2Step241HeadGvRow,s2Step241HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step241HeadGRow,s2Step241HeadFRow,s2Step241HeadGvRow,s2Step241HeadFvRow] 0 s2Step241HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step241HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step241HeadG_Outgoing : rowsOwned s2Step241HeadFvAfter [s2Step241HeadGOut,s2Step241HeadFOut,s2Step241HeadGvOut,s2Step241HeadFvOut] :=
  hmrRows_owned_drop s2Step241HeadFvAfter [s2Step241HeadGOut,s2Step241HeadFOut,s2Step241HeadGvOut,s2Step241HeadFvOut] 0 s2Step241HeadBank_outgoingOwned

private theorem s2Step241HeadG_distinct : (s2Step241HeadGRow.sign::s2Step241HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step241HeadG_owned : (s2Step241HeadGRow.sign::s2Step241HeadGRow.payload).toFinset⊆s2Step241HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step241HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241HeadG_reserved : s2Step241HeadGBefore.reserve s2Step241HeadGFresh.toFinset=some s2Step241HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step241HeadGFresh,arenaWires]
  · norm_num [s2Step241HeadGBefore,s2Step241HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step241HeadGAfter,s2Step241HeadGBefore,s2Step241HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step241HeadG_checked : planRowResizeLog s2Step241HeadGBefore s2Step241HeadGRow 151 s2Step241HeadGFresh=
    some (s2Step241HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 793],769⟩,growRow 769 s2Step241HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step241HeadGBefore s2Step241HeadGAfter s2Step241HeadGRow 151 s2Step241HeadGFresh
    s2Step241HeadG_distinct s2Step241HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step241HeadG_reserved
  have rowEq : WindowRow.mk (s2Step241HeadGRow.payload++s2Step241HeadGFresh) s2Step241HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 793],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step241HeadGvBefore : Arena := s2Step241HeadFAfter

private theorem s2Step241HeadGv_Incoming : rowsOwned s2Step241HeadGvBefore [s2Step241HeadGvRow,s2Step241HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step241HeadGRow,s2Step241HeadFRow,s2Step241HeadGvRow,s2Step241HeadFvRow] 2 s2Step241HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step241HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step241HeadGv_Outgoing : rowsOwned s2Step241HeadFvAfter [s2Step241HeadGvOut,s2Step241HeadFvOut] :=
  hmrRows_owned_drop s2Step241HeadFvAfter [s2Step241HeadGOut,s2Step241HeadFOut,s2Step241HeadGvOut,s2Step241HeadFvOut] 2 s2Step241HeadBank_outgoingOwned

private theorem s2Step241HeadGv_distinct : (s2Step241HeadGvRow.sign::s2Step241HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step241HeadGv_owned : (s2Step241HeadGvRow.sign::s2Step241HeadGvRow.payload).toFinset⊆s2Step241HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step241HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step241HeadGv_reserved : s2Step241HeadGvBefore.reserve s2Step241HeadGvFresh.toFinset=some s2Step241HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step241HeadGvFresh,arenaWires]
  · norm_num [s2Step241HeadGvBefore,s2Step241HeadFAfter,s2Step241HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step241HeadGvAfter,s2Step241HeadGvBefore,s2Step241HeadFAfter,s2Step241HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step241HeadGv_checked : planRowResizeLog s2Step241HeadGvBefore s2Step241HeadGvRow 136 s2Step241HeadGvFresh=
    some (s2Step241HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 810],771⟩,growRow 771 s2Step241HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step241HeadGvBefore s2Step241HeadGvAfter s2Step241HeadGvRow 136 s2Step241HeadGvFresh
    s2Step241HeadGv_distinct s2Step241HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step241HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step241HeadGvRow.payload++s2Step241HeadGvFresh) s2Step241HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 810],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step241HeadBank_rows : planWindowRowsLog s2Step241HeadGBefore [(s2Step241HeadGRow,151),(s2Step241HeadFRow,151),(s2Step241HeadGvRow,136),(s2Step241HeadFvRow,136)] [s2Step241HeadGFresh,s2Step241HeadFFresh,s2Step241HeadGvFresh,s2Step241HeadFvFresh]=
    some (s2Step241HeadFvAfter,[s2Step241HeadGOut,s2Step241HeadFOut,s2Step241HeadGvOut,s2Step241HeadFvOut],(growRow 769 s2Step241HeadGFresh ++ (growRow 768 s2Step241HeadFFresh ++ (growRow 771 s2Step241HeadGvFresh ++ (growRow 770 s2Step241HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step241HeadFvAfter [] []=some (s2Step241HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step241HeadFvBefore s2Step241HeadFvAfter s2Step241HeadFvAfter
    s2Step241HeadFvRow s2Step241HeadFvOut 136 s2Step241HeadFvFresh [] [] []
    (growRow 770 s2Step241HeadFvFresh) ([]) s2Step241HeadFv_Incoming s2Step241HeadFv_checked h4 s2Step241HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step241HeadGvBefore s2Step241HeadGvAfter s2Step241HeadFvAfter
    s2Step241HeadGvRow s2Step241HeadGvOut 136 s2Step241HeadGvFresh [(s2Step241HeadFvRow,136)] [s2Step241HeadFvFresh] [s2Step241HeadFvOut]
    (growRow 771 s2Step241HeadGvFresh) ((growRow 770 s2Step241HeadFvFresh ++ [])) s2Step241HeadGv_Incoming s2Step241HeadGv_checked h3 s2Step241HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step241HeadFBefore s2Step241HeadFAfter s2Step241HeadFvAfter
    s2Step241HeadFRow s2Step241HeadFOut 151 s2Step241HeadFFresh [(s2Step241HeadGvRow,136),(s2Step241HeadFvRow,136)] [s2Step241HeadGvFresh,s2Step241HeadFvFresh] [s2Step241HeadGvOut,s2Step241HeadFvOut]
    (growRow 768 s2Step241HeadFFresh) ((growRow 771 s2Step241HeadGvFresh ++ (growRow 770 s2Step241HeadFvFresh ++ []))) s2Step241HeadF_Incoming s2Step241HeadF_checked h2 s2Step241HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step241HeadGBefore s2Step241HeadGAfter s2Step241HeadFvAfter
    s2Step241HeadGRow s2Step241HeadGOut 151 s2Step241HeadGFresh [(s2Step241HeadFRow,151),(s2Step241HeadGvRow,136),(s2Step241HeadFvRow,136)] [s2Step241HeadFFresh,s2Step241HeadGvFresh,s2Step241HeadFvFresh] [s2Step241HeadFOut,s2Step241HeadGvOut,s2Step241HeadFvOut]
    (growRow 769 s2Step241HeadGFresh) ((growRow 768 s2Step241HeadFFresh ++ (growRow 771 s2Step241HeadGvFresh ++ (growRow 770 s2Step241HeadFvFresh ++ [])))) s2Step241HeadG_Incoming s2Step241HeadG_checked h1 s2Step241HeadG_Outgoing
  exact h0

private theorem s2Step241HeadBank_checked : compileHmrBankResizeLog .headroom s2Step241HeadGBefore ⟨s2Step241HeadFRow,s2Step241HeadGRow,s2Step241HeadFvRow,s2Step241HeadGvRow⟩ ⟨151,151,136,136⟩ [s2Step241HeadGFresh,s2Step241HeadFFresh,s2Step241HeadGvFresh,s2Step241HeadFvFresh]=
    some (s2Step241HeadFvAfter,⟨s2Step241HeadFOut,s2Step241HeadGOut,s2Step241HeadFvOut,s2Step241HeadGvOut⟩,(growRow 769 s2Step241HeadGFresh ++ (growRow 768 s2Step241HeadFFresh ++ (growRow 771 s2Step241HeadGvFresh ++ (growRow 770 s2Step241HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step241HeadBank_rows]
  rfl

private theorem s2Step241Front_checked : compileHmrSourceFrontLog s2Step241EntryFBefore s2Step241FrontBank 150 135 ⟨150,149,135,135⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step241FrontLog=some s2Step241FrontPlan := by
  have pairEq : s2Step241FrontPair=⟨s2Step241HeadFRow,s2Step241HeadGRow,s2Step241HeadFvRow,s2Step241HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step241FrontHead=⟨s2Step241ExitFRow,s2Step241ExitGRow,s2Step241ExitFvRow,s2Step241ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step241Add0A=s2Step241FrontHead.f.wires := by decide +kernel
  have gEq : s2Step241Add0B=s2Step241FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step241Add1A=s2Step241FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step241Add1B=s2Step241FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step241EntryFBefore s2Step241FrontBank 150 135 ⟨150,149,135,135⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step241FrontLog s2Step241FrontPlan
  · exact s2Step241Front_entry
  · exact s2Step241EntryBank_checked
  · exact s2Step241Front_sigma
  · rfl
  · exact s2Step241Front_branch
  · rfl
  · simpa only [s2Step241FrontPlan,pairEq] using s2Step241HeadBank_checked
  · simpa only [s2Step241FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step241F4_checked
  · exact s2Step241Counter_checked
  · rfl
  · simpa only [s2Step241FrontPlan,headEq] using s2Step241ExitBank_checked

private theorem s2Step241Complete_explicit_checked : compileHmrEarlyStepLog s2Step241EntryFBefore s2Step241FrontBank 150 135 ⟨150,149,135,135⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step241CompleteLog=some s2Step241CompletePlan := by
  let Q := s2Step241EarlyControlPlan
  have hq := s2Step241EarlyControl_plan_checked
  have fv1 : s2Step241CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step241CompleteOut.fv.payload[2]?.getD s2Step241CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step241CompleteOut.fv.payload[3]?.getD s2Step241CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step241CompleteOut.fv.payload[4]?.getD s2Step241CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step241EntryFBefore s2Step241EarlyControlArena s2Step241FrontBank 150 135 ⟨150,149,135,135⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step241CompleteLog s2Step241FrontPlan Q
    s2Step241Front_checked s2Step241Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step241Complete_owned s2Step241Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step241EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 842 s2Step241CompleteOut.fv.second (s2Step241CompleteOut.fv.payload[2]?.getD s2Step241CompleteOut.fv.sign) (s2Step241CompleteOut.fv.payload[3]?.getD s2Step241CompleteOut.fv.sign) (s2Step241CompleteOut.fv.payload[4]?.getD s2Step241CompleteOut.fv.sign) 834 49 s2Step241EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep241Arena : Arena := s2Step241EntryFBefore
def s2PrivateStep241Bank : WindowBank := s2Step241FrontBank
def s2PrivateStep241Spec : HmrSourceWalkStepLog := ⟨150,135,⟨150,149,135,135⟩,49,.early s2Step241CompleteLog⟩
def s2PrivateStep241Plan : HmrSourceStepPlan := .early s2Step241CompletePlan
theorem s2PrivateStep241_source : s2PrivateStep241Spec=s2ObservedLogs240[1] := rfl
theorem s2PrivateStep241_checked : compileHmrSourceStepLog s2PrivateStep241Arena s2PrivateStep241Bank
    s2PrivateStep241Spec.fgWidth s2PrivateStep241Spec.vWidth s2PrivateStep241Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]
    6 498 241 s2PrivateStep241Spec.need none s2PrivateStep241Spec.log=some s2PrivateStep241Plan := by
  change compileHmrSourceStepLog s2Step241EntryFBefore s2Step241FrontBank 150 135 ⟨150,149,135,135⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 6 498 241 49 none (.early s2Step241CompleteLog)=some (.early s2Step241CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 241<498)]
  rw [s2Step241Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
