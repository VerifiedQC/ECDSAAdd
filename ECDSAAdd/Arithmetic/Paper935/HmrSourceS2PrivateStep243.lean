import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep241
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

private def s2Step243CompleteMoves : List (Wire × Wire) := [(831,660),(802,661)]

private def s2Step243EarlyControlLog : HmrEarlyControlLog := ⟨[802, 831, 814, 810, 830],[842],[834],[792, 800, 885, 891, 894, 896],[900]⟩

private def s2Step243FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [830, 842], [], [846]],[[834], [810], [814], [826]],[[], [], [], []]⟩,[809],[819],[792],[800],[885, 891, 894, 896, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[885, 891, 894, 896, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[792, 800, 885, 891]⟩

private def s2Step243CompleteLog : HmrEarlyStepLog := ⟨s2Step243FrontLog,s2Step243CompleteMoves,s2Step243EarlyControlLog⟩

private def s2Step243ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659],768⟩

private def s2Step243ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826],770⟩

private def s2Step243ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],769⟩

private def s2Step243ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846],771⟩

private def s2Step243FrontOut : WindowBank := ⟨s2Step243ExitFOut,s2Step243ExitGOut,s2Step243ExitFvOut,s2Step243ExitGvOut⟩

private def s2Step243CompleteOut : WindowBank := s2Step243FrontOut.repacked s2Step243CompleteMoves

private def s2Step243EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step243EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step243EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step243EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step243EarlyControlPositiveArena,[842],s2Step243EarlyControlEqualityArena,[834],⟨⟨809,false⟩,[⟨⟨842,false⟩,834⟩]⟩⟩

private def s2Step243EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step243EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step243EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step243EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step243EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step243EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step243EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,802⟩,⟨⟨774,false⟩,831⟩,⟨⟨775,false⟩,814⟩,⟨⟨776,false⟩,810⟩,⟨⟨777,false⟩,830⟩]⟩

private def s2Step243EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step243EarlyControlZeroArena,s2Step243EarlyControlZeroPlan,s2Step243EarlyControlClassPlan,s2Step243EarlyControlFlagArena,s2Step243EarlyControlFittedArena,s2Step243EarlyControlHistoryArena,s2Step243EarlyControlSigmaArena,s2Step243EarlyControlOutputArena,s2Step243EarlyControlLog⟩

private def s2Step243CounterWork : List Wire := [792, 800, 885, 891]

private theorem s2Step243Counter_bounded : s2Step243CounterWork.toFinset⊆arenaWires := by norm_num [s2Step243CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step243HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step243CounterDuring : Arena := ⟨s2Step243HeadFvAfter.live∪s2Step243CounterWork.toFinset,Finset.union_subset s2Step243HeadFvAfter.bounded s2Step243Counter_bounded⟩

private def s2Step243EntryFFresh : List Wire := []

private def s2Step243EntryFvFresh : List Wire := []

private def s2Step243EntryGFresh : List Wire := [830, 842]

private def s2Step243EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step243EntryGvFresh : List Wire := [846]

private def s2Step243ExitFExtra : List Wire := [660, 661, 810]

private def s2Step243ExitGExtra : List Wire := [830, 842, 834]

private def s2Step243ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<660) ∨ (662≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step243ExitGvExtra : List Wire := [814]

private def s2Step243Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step243Add0Work : List Wire := [885, 891, 894, 896, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step243Add0_bounded : s2Step243Add0Work.toFinset⊆arenaWires := by
  have h : s2Step243Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step243Add0During : Arena := ⟨s2Step243Add0Arena.live∪s2Step243Add0Work.toFinset,Finset.union_subset s2Step243Add0Arena.bounded s2Step243Add0_bounded⟩

private def s2Step243Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step243Add1Work : List Wire := [885, 891, 894, 896, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step243Add1_bounded : s2Step243Add1Work.toFinset⊆arenaWires := by
  have h : s2Step243Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step243Add1During : Arena := ⟨s2Step243Add1Arena.live∪s2Step243Add1Work.toFinset,Finset.union_subset s2Step243Add1Arena.bounded s2Step243Add1_bounded⟩

private def s2Step243F4FlagArena : Arena := ⟨s2Step243HeadFvAfter.live∪{792},Finset.union_subset s2Step243HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step243F4Plan : HmrHybridF4Plan := ⟨s2Step243F4FlagArena,[792],s2Step243Add0Arena,[800],s2Step243Add0During,s2Step243Add0Work,s2Step243Add1During,s2Step243Add1Work⟩

private def s2Step243HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 810],768⟩

private def s2Step243HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826],770⟩

private def s2Step243HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 830, 842, 834],769⟩

private def s2Step243HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 814],771⟩

private def s2Step243FrontHead : WindowBank := ⟨s2Step243HeadFOut,s2Step243HeadGOut,s2Step243HeadFvOut,s2Step243HeadGvOut⟩

private def s2Step243EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩

private def s2Step243EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793],770⟩

private def s2Step243EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 830, 842],769⟩

private def s2Step243EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846],771⟩

private def s2Step243FrontPair : WindowBank := ⟨s2Step243EntryFOut,s2Step243EntryGOut,s2Step243EntryFvOut,s2Step243EntryGvOut⟩

private def s2Step243FrontSigmaArena : Arena := ⟨s2Step243EntryGvAfter.live∪{809},Finset.union_subset s2Step243EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step243HeadFFresh : List Wire := [810]

private def s2Step243HeadFvFresh : List Wire := [826]

private def s2Step243HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step243HeadGFresh : List Wire := [834]

private def s2Step243HeadGvFresh : List Wire := [814]

private def s2Step243FrontPlan : HmrSourceFront := ⟨s2Step243EntryGvAfter,s2Step243FrontPair,(growRow 768 s2Step243EntryFFresh ++ (growRow 769 s2Step243EntryGFresh ++ (growRow 770 s2Step243EntryFvFresh ++ (growRow 771 s2Step243EntryGvFresh ++ [])))),s2Step243FrontSigmaArena,[809],s2Step243HeadGBefore,[819],
  s2Step243HeadFvAfter,s2Step243FrontHead,(growRow 769 s2Step243HeadGFresh ++ (growRow 768 s2Step243HeadFFresh ++ (growRow 771 s2Step243HeadGvFresh ++ (growRow 770 s2Step243HeadFvFresh ++ [])))),s2Step243F4Plan,s2Step243CounterDuring,s2Step243CounterWork,s2Step243ExitGvAfter,s2Step243FrontOut,(shrinkRow 769 s2Step243ExitGExtra ++ (shrinkRow 768 s2Step243ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step243ExitGvExtra ++ []))))⟩

private def s2Step243CompletePlan : HmrEarlyStepPlan := ⟨s2Step243FrontPlan,s2Step243EarlyControlArena,s2Step243EarlyControlPlan,s2Step243CompleteMoves⟩

private theorem s2Step243Complete_apart : List.Disjoint (s2Step243CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [809, 819, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899] := by
  have nd : ((s2Step243CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[809, 819, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step243Complete_owned : (s2Step243CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step243EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step243EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private def s2Step243CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,661),(662,792),(793,800),(801,810),(811,814),(815,830),(832,834),(835,842),(843,885),(886,891),(892,894),(895,896),(897,900)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step243CompleteRelocationMove0Borrowed : Arena := ⟨s2Step243ExitGvAfter.live∪{660},Finset.union_subset s2Step243ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step243CompleteRelocationMove1Borrowed : Arena := ⟨s2Step243CompleteRelocationMove0After.live∪{661},Finset.union_subset s2Step243CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step243CompleteRelocation_move0_owned : 831∈s2Step243ExitGvAfter.live := by norm_num [s2Step243ExitGvAfter,arenaWires]

private theorem s2Step243CompleteRelocation_move0_reserve : s2Step243ExitGvAfter.reserve {660}=some s2Step243CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step243ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step243CompleteRelocation_move0_retire : s2Step243CompleteRelocationMove0Borrowed.retireSet {831}=s2Step243CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step243CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step243CompleteRelocationMove0Borrowed,s2Step243ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step243CompleteRelocation_move1_owned : 802∈s2Step243CompleteRelocationMove0After.live := by norm_num [s2Step243CompleteRelocationMove0After,arenaWires]

private theorem s2Step243CompleteRelocation_move1_reserve : s2Step243CompleteRelocationMove0After.reserve {661}=some s2Step243CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step243CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step243CompleteRelocation_move1_retire : s2Step243CompleteRelocationMove1Borrowed.retireSet {802}=s2Step243EarlyControlArena := by
  unfold Arena.retireSet s2Step243EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step243CompleteRelocationMove1Borrowed,s2Step243CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step243CompleteRelocation_checked : s2Step243ExitGvAfter.checkRepack [(831,660),(802,661)]=some s2Step243EarlyControlArena := by
  have tail2 : s2Step243EarlyControlArena.checkRepack []=some s2Step243EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step243CompleteRelocationMove0After s2Step243CompleteRelocationMove1Borrowed s2Step243EarlyControlArena s2Step243EarlyControlArena 802 661 []
    s2Step243CompleteRelocation_move1_owned s2Step243CompleteRelocation_move1_reserve s2Step243CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step243ExitGvAfter s2Step243CompleteRelocationMove0Borrowed s2Step243CompleteRelocationMove0After s2Step243EarlyControlArena 831 660 [(802,661)]
    s2Step243CompleteRelocation_move0_owned s2Step243CompleteRelocation_move0_reserve s2Step243CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step243Complete_repack : s2Step243ExitGvAfter.checkRepack s2Step243CompleteMoves=some s2Step243EarlyControlArena := by
  simpa only [s2Step243CompleteMoves] using s2Step243CompleteRelocation_checked

private theorem s2Step243EarlyControl_branchOwned : ([819] : List Wire).toFinset⊆s2Step243EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step243EarlyControlSigmaArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step243EarlyControl_branch : compileHmrBranchRetirement s2Step243EarlyControlSigmaArena 819=some s2Step243EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step243EarlyControl_branchOwned
  · ext q
    simp [s2Step243EarlyControlOutputArena,s2Step243EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step243EarlyControl_classEqualityBorrow : s2Step243EarlyControlPositiveArena.checkBorrow (([809, 842] : List Wire).length-1) s2Step243EarlyControlLog.classWork=some s2Step243EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step243EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step243EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
      decide +kernel
    · ext q
      simp [s2Step243EarlyControlEqualityArena,s2Step243EarlyControlPositiveArena,s2Step243EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step243EarlyControl_classEqualityOwned : ([809, 842] : List Wire).toFinset⊆s2Step243EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step243EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243EarlyControl_classEquality : compileHmrEqualityLog s2Step243EarlyControlPositiveArena [809, 842] 0 s2Step243EarlyControlLog.classWork=some (s2Step243EarlyControlEqualityArena,s2Step243EarlyControlLog.classWork,s2Step243EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step243EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step243EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step243EarlyControl_classOwned : ([777, 830, 809] : List Wire).toFinset⊆s2Step243EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step243EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243EarlyControl_positiveBorrow : s2Step243EarlyControlZeroArena.checkBorrow (1) s2Step243EarlyControlLog.positiveWork=some s2Step243EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step243EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step243EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
      decide +kernel
    · ext q
      simp [s2Step243EarlyControlPositiveArena,s2Step243EarlyControlZeroArena,s2Step243EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step243EarlyControl_class : compileHmrSourceClassLog s2Step243EarlyControlZeroArena false 777 s2Step243EarlyControlZeroPlan.top 0 809 s2Step243EarlyControlLog.positiveWork s2Step243EarlyControlLog.classWork=some s2Step243EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step243EarlyControlClassPlan s2Step243EarlyControlZeroArena false 777 s2Step243EarlyControlZeroPlan.top 0 809
  constructor
  · decide +kernel
  · exact s2Step243EarlyControl_classOwned
  · exact s2Step243EarlyControl_positiveBorrow
  · exact s2Step243EarlyControl_classEquality

private theorem s2Step243EarlyControl_entryRecordOwned : ([819, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899] : List Wire).toFinset⊆s2Step243EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step243EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243EarlyControl_entrySigmaOwned : ([809, 254] : List Wire).toFinset⊆s2Step243EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step243EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243EarlyControl_fitBorrow : s2Step243EarlyControlFlagArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899] : List Wire).length)) s2Step243EarlyControlLog.recordFresh=some s2Step243EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step243EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step243EarlyControlFlagArena (fun q => (0≤q ∧ q<900)) rfl
      decide +kernel
    · ext q
      simp [s2Step243EarlyControlFittedArena,s2Step243EarlyControlFlagArena,s2Step243EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step243EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899] : List Wire).toFinset⊆s2Step243EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step243EarlyControlFlagArena (fun q => (0≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243EarlyControl_fit : compileHmrRecordGrowLog s2Step243EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899] 51 s2Step243EarlyControlLog.recordFresh=some s2Step243EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step243EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step243EarlyControl_fitBorrow

private theorem s2Step243EarlyControl_flagsBorrow : s2Step243EarlyControlEqualityArena.checkBorrow (6) s2Step243EarlyControlLog.flagWork=some s2Step243EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step243EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step243EarlyControlEqualityArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
      decide +kernel
    · ext q
      simp [s2Step243EarlyControlFlagArena,s2Step243EarlyControlEqualityArena,s2Step243EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step243EarlyControl_flagsOwned : ([834, 253, 252, 251] : List Wire).toFinset⊆s2Step243EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step243EarlyControlEqualityArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243EarlyControl_flags : compileHmrFlagsLog s2Step243EarlyControlClassPlan.equalityArena s2Step243EarlyControlClassPlan.equality.top 253 252 251 s2Step243EarlyControlLog.flagWork=some s2Step243EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step243EarlyControl_flagsOwned⟩
  · exact s2Step243EarlyControl_flagsBorrow

private theorem s2Step243EarlyControl_historyBorrow : s2Step243EarlyControlArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899] : List Wire).length)) s2Step243EarlyControlLog.recordFresh=some s2Step243EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step243EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step243EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
      decide +kernel
    · ext q
      simp [s2Step243EarlyControlHistoryArena,s2Step243EarlyControlArena,s2Step243EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step243EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899] : List Wire).toFinset⊆s2Step243EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step243EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243EarlyControl_history : compileHmrRecordGrowLog s2Step243EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899] 51 s2Step243EarlyControlLog.recordFresh=some s2Step243EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step243EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step243EarlyControl_historyBorrow

private theorem s2Step243EarlyControl_sigmaOwned : ([254, 809] : List Wire).toFinset⊆s2Step243EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step243EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step243EarlyControl_sigmaReleaseOwned : ([809] : List Wire).toFinset⊆s2Step243EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step243EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step243EarlyControl_sigmaRelease : s2Step243EarlyControlHistoryArena.release {809} (fun _ => false)=some s2Step243EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step243EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step243EarlyControlSigmaArena,s2Step243EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step243EarlyControl_sigma : compileHmrSigmaDropLog s2Step243EarlyControlHistoryArena false 0 0 254 809 []=some s2Step243EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step243EarlyControl_sigmaOwned⟩
  · exact s2Step243EarlyControl_sigmaRelease

private theorem s2Step243EarlyControl_zeroBorrow : s2Step243EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step243EarlyControlLog.zeroWork=some s2Step243EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step243EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step243EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
      decide +kernel
    · ext q
      simp [s2Step243EarlyControlZeroArena,s2Step243EarlyControlArena,s2Step243EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step243EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step243EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step243EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243EarlyControl_zero : compileHmrEqualityLog s2Step243EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step243EarlyControlLog.zeroWork=some (s2Step243EarlyControlZeroArena,s2Step243EarlyControlLog.zeroWork,s2Step243EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step243EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step243EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step243EarlyControl_logged : s2Step243EarlyControlPlan.Logged s2Step243EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899] 777 809 254 253 252 251 819 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step243EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step243EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step243EarlyControl_zero
  · exact s2Step243EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step243EarlyControl_flags
  · exact s2Step243EarlyControl_fit
  · exact s2Step243EarlyControl_history
  · exact s2Step243EarlyControl_sigma
  · exact s2Step243EarlyControl_branch

private theorem s2Step243EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step243EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899] 777 809 254 253 252 251 819 51 s2Step243EarlyControlLog=some s2Step243EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step243EarlyControlPlan s2Step243EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899] 777 809 254 253 252 251 819 51 s2Step243EarlyControl_logged

private def s2Step243EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step243EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩

private def s2Step243EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793],770⟩

private def s2Step243EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147],769⟩

private def s2Step243EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩

private def s2Step243FrontBank : WindowBank := ⟨s2Step243EntryFRow,s2Step243EntryGRow,s2Step243EntryFvRow,s2Step243EntryGvRow⟩

private def s2Step243Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 810, 768]

private def s2Step243Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 830, 842, 834, 769]

private def s2Step243Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 770]

private def s2Step243Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 814, 771]

private theorem s2Step243Counter_apart : Disjoint s2Step243HeadFvAfter.live s2Step243CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step243HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243Counter_borrowed : s2Step243HeadFvAfter.checkBorrow 4 s2Step243CounterWork=some s2Step243CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step243HeadFvAfter s2Step243CounterDuring s2Step243CounterWork.toFinset s2Step243Counter_bounded s2Step243Counter_apart rfl

private theorem s2Step243Counter_owned : (809::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step243HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step243HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243Counter_checked : compileHmrCounterStepLog s2Step243HeadFvAfter true 809 [772, 773, 774, 775, 776, 777] s2Step243CounterWork=some s2Step243CounterDuring := by
  have owned : ∀q∈809::[772, 773, 774, 775, 776, 777],q∈s2Step243HeadFvAfter.live := fun q hq => s2Step243Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step243Counter_borrowed

private def s2Step243EntryFAfter : Arena := s2Step243EntryFBefore

private theorem s2Step243EntryBank_incomingDistinct : ([s2Step243EntryFRow,s2Step243EntryGRow,s2Step243EntryFvRow,s2Step243EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step243EntryF_Incoming : rowsOwned s2Step243EntryFBefore [s2Step243EntryFRow,s2Step243EntryGRow,s2Step243EntryFvRow,s2Step243EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step243EntryFRow,s2Step243EntryGRow,s2Step243EntryFvRow,s2Step243EntryGvRow] 0 s2Step243EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step243EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
    decide +kernel

private theorem s2Step243EntryBank_outgoingOwned : rowsOwned s2Step243EntryGvAfter [s2Step243EntryFOut,s2Step243EntryGOut,s2Step243EntryFvOut,s2Step243EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step243EntryGvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
    decide +kernel

private theorem s2Step243EntryF_Outgoing : rowsOwned s2Step243EntryGvAfter [s2Step243EntryFOut,s2Step243EntryGOut,s2Step243EntryFvOut,s2Step243EntryGvOut] :=
  hmrRows_owned_drop s2Step243EntryGvAfter [s2Step243EntryFOut,s2Step243EntryGOut,s2Step243EntryFvOut,s2Step243EntryGvOut] 0 s2Step243EntryBank_outgoingOwned

private theorem s2Step243EntryF_distinct : (s2Step243EntryFRow.sign::s2Step243EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step243EntryF_owned : (s2Step243EntryFRow.sign::s2Step243EntryFRow.payload).toFinset⊆s2Step243EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step243EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243EntryF_reserved : s2Step243EntryFBefore.reserve s2Step243EntryFFresh.toFinset=some s2Step243EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step243EntryFFresh,arenaWires]
  · norm_num [s2Step243EntryFBefore,s2Step243EntryFFresh,arenaWires]
  · simp only [s2Step243EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step243EntryF_checked : planRowResizeLog s2Step243EntryFBefore s2Step243EntryFRow 150 s2Step243EntryFFresh=
    some (s2Step243EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩,growRow 768 s2Step243EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step243EntryFBefore s2Step243EntryFAfter s2Step243EntryFRow 150 s2Step243EntryFFresh
    s2Step243EntryF_distinct s2Step243EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step243EntryF_reserved
  have rowEq : WindowRow.mk (s2Step243EntryFRow.payload++s2Step243EntryFFresh) s2Step243EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step243EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step243EntryFvAfter : Arena := s2Step243EntryGAfter

private def s2Step243EntryFvBefore : Arena := s2Step243EntryGAfter

private theorem s2Step243EntryFv_Incoming : rowsOwned s2Step243EntryFvBefore [s2Step243EntryFvRow,s2Step243EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step243EntryFRow,s2Step243EntryGRow,s2Step243EntryFvRow,s2Step243EntryGvRow] 2 s2Step243EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step243EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
    decide +kernel

private theorem s2Step243EntryFv_Outgoing : rowsOwned s2Step243EntryGvAfter [s2Step243EntryFvOut,s2Step243EntryGvOut] :=
  hmrRows_owned_drop s2Step243EntryGvAfter [s2Step243EntryFOut,s2Step243EntryGOut,s2Step243EntryFvOut,s2Step243EntryGvOut] 2 s2Step243EntryBank_outgoingOwned

private theorem s2Step243EntryFv_distinct : (s2Step243EntryFvRow.sign::s2Step243EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step243EntryFv_owned : (s2Step243EntryFvRow.sign::s2Step243EntryFvRow.payload).toFinset⊆s2Step243EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step243EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243EntryFv_reserved : s2Step243EntryFvBefore.reserve s2Step243EntryFvFresh.toFinset=some s2Step243EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step243EntryFvFresh,arenaWires]
  · norm_num [s2Step243EntryFvBefore,s2Step243EntryGAfter,s2Step243EntryFvFresh,arenaWires]
  · simp only [s2Step243EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step243EntryFv_checked : planRowResizeLog s2Step243EntryFvBefore s2Step243EntryFvRow 136 s2Step243EntryFvFresh=
    some (s2Step243EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793],770⟩,growRow 770 s2Step243EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step243EntryFvBefore s2Step243EntryFvAfter s2Step243EntryFvRow 136 s2Step243EntryFvFresh
    s2Step243EntryFv_distinct s2Step243EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step243EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step243EntryFvRow.payload++s2Step243EntryFvFresh) s2Step243EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step243EntryGBefore : Arena := s2Step243EntryFBefore

private theorem s2Step243EntryG_Incoming : rowsOwned s2Step243EntryGBefore [s2Step243EntryGRow,s2Step243EntryFvRow,s2Step243EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step243EntryFRow,s2Step243EntryGRow,s2Step243EntryFvRow,s2Step243EntryGvRow] 1 s2Step243EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step243EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
    decide +kernel

private theorem s2Step243EntryG_Outgoing : rowsOwned s2Step243EntryGvAfter [s2Step243EntryGOut,s2Step243EntryFvOut,s2Step243EntryGvOut] :=
  hmrRows_owned_drop s2Step243EntryGvAfter [s2Step243EntryFOut,s2Step243EntryGOut,s2Step243EntryFvOut,s2Step243EntryGvOut] 1 s2Step243EntryBank_outgoingOwned

private theorem s2Step243EntryG_distinct : (s2Step243EntryGRow.sign::s2Step243EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step243EntryG_owned : (s2Step243EntryGRow.sign::s2Step243EntryGRow.payload).toFinset⊆s2Step243EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step243EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243EntryG_reserved : s2Step243EntryGBefore.reserve s2Step243EntryGFresh.toFinset=some s2Step243EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step243EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step243EntryGBefore,s2Step243EntryFBefore,s2Step243EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step243EntryGAfter,s2Step243EntryGBefore,s2Step243EntryFBefore,s2Step243EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step243EntryG_checked : planRowResizeLog s2Step243EntryGBefore s2Step243EntryGRow 150 s2Step243EntryGFresh=
    some (s2Step243EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 830, 842],769⟩,growRow 769 s2Step243EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step243EntryGBefore s2Step243EntryGAfter s2Step243EntryGRow 150 s2Step243EntryGFresh
    s2Step243EntryG_distinct s2Step243EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step243EntryG_reserved
  have rowEq : WindowRow.mk (s2Step243EntryGRow.payload++s2Step243EntryGFresh) s2Step243EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 830, 842],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step243EntryGvBefore : Arena := s2Step243EntryGAfter

private theorem s2Step243EntryGv_Incoming : rowsOwned s2Step243EntryGvBefore [s2Step243EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step243EntryFRow,s2Step243EntryGRow,s2Step243EntryFvRow,s2Step243EntryGvRow] 3 s2Step243EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step243EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
    decide +kernel

private theorem s2Step243EntryGv_Outgoing : rowsOwned s2Step243EntryGvAfter [s2Step243EntryGvOut] :=
  hmrRows_owned_drop s2Step243EntryGvAfter [s2Step243EntryFOut,s2Step243EntryGOut,s2Step243EntryFvOut,s2Step243EntryGvOut] 3 s2Step243EntryBank_outgoingOwned

private theorem s2Step243EntryGv_distinct : (s2Step243EntryGvRow.sign::s2Step243EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step243EntryGv_owned : (s2Step243EntryGvRow.sign::s2Step243EntryGvRow.payload).toFinset⊆s2Step243EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step243EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243EntryGv_reserved : s2Step243EntryGvBefore.reserve s2Step243EntryGvFresh.toFinset=some s2Step243EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step243EntryGvFresh,arenaWires]
  · norm_num [s2Step243EntryGvBefore,s2Step243EntryGAfter,s2Step243EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step243EntryGvAfter,s2Step243EntryGvBefore,s2Step243EntryGAfter,s2Step243EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step243EntryGv_checked : planRowResizeLog s2Step243EntryGvBefore s2Step243EntryGvRow 136 s2Step243EntryGvFresh=
    some (s2Step243EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846],771⟩,growRow 771 s2Step243EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step243EntryGvBefore s2Step243EntryGvAfter s2Step243EntryGvRow 136 s2Step243EntryGvFresh
    s2Step243EntryGv_distinct s2Step243EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step243EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step243EntryGvRow.payload++s2Step243EntryGvFresh) s2Step243EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step243EntryBank_rows : planWindowRowsLog s2Step243EntryFBefore [(s2Step243EntryFRow,150),(s2Step243EntryGRow,150),(s2Step243EntryFvRow,136),(s2Step243EntryGvRow,136)] [s2Step243EntryFFresh,s2Step243EntryGFresh,s2Step243EntryFvFresh,s2Step243EntryGvFresh]=
    some (s2Step243EntryGvAfter,[s2Step243EntryFOut,s2Step243EntryGOut,s2Step243EntryFvOut,s2Step243EntryGvOut],(growRow 768 s2Step243EntryFFresh ++ (growRow 769 s2Step243EntryGFresh ++ (growRow 770 s2Step243EntryFvFresh ++ (growRow 771 s2Step243EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step243EntryGvAfter [] []=some (s2Step243EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step243EntryGvBefore s2Step243EntryGvAfter s2Step243EntryGvAfter
    s2Step243EntryGvRow s2Step243EntryGvOut 136 s2Step243EntryGvFresh [] [] []
    (growRow 771 s2Step243EntryGvFresh) ([]) s2Step243EntryGv_Incoming s2Step243EntryGv_checked h4 s2Step243EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step243EntryFvBefore s2Step243EntryFvAfter s2Step243EntryGvAfter
    s2Step243EntryFvRow s2Step243EntryFvOut 136 s2Step243EntryFvFresh [(s2Step243EntryGvRow,136)] [s2Step243EntryGvFresh] [s2Step243EntryGvOut]
    (growRow 770 s2Step243EntryFvFresh) ((growRow 771 s2Step243EntryGvFresh ++ [])) s2Step243EntryFv_Incoming s2Step243EntryFv_checked h3 s2Step243EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step243EntryGBefore s2Step243EntryGAfter s2Step243EntryGvAfter
    s2Step243EntryGRow s2Step243EntryGOut 150 s2Step243EntryGFresh [(s2Step243EntryFvRow,136),(s2Step243EntryGvRow,136)] [s2Step243EntryFvFresh,s2Step243EntryGvFresh] [s2Step243EntryFvOut,s2Step243EntryGvOut]
    (growRow 769 s2Step243EntryGFresh) ((growRow 770 s2Step243EntryFvFresh ++ (growRow 771 s2Step243EntryGvFresh ++ []))) s2Step243EntryG_Incoming s2Step243EntryG_checked h2 s2Step243EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step243EntryFBefore s2Step243EntryFAfter s2Step243EntryGvAfter
    s2Step243EntryFRow s2Step243EntryFOut 150 s2Step243EntryFFresh [(s2Step243EntryGRow,150),(s2Step243EntryFvRow,136),(s2Step243EntryGvRow,136)] [s2Step243EntryGFresh,s2Step243EntryFvFresh,s2Step243EntryGvFresh] [s2Step243EntryGOut,s2Step243EntryFvOut,s2Step243EntryGvOut]
    (growRow 768 s2Step243EntryFFresh) ((growRow 769 s2Step243EntryGFresh ++ (growRow 770 s2Step243EntryFvFresh ++ (growRow 771 s2Step243EntryGvFresh ++ [])))) s2Step243EntryF_Incoming s2Step243EntryF_checked h1 s2Step243EntryF_Outgoing
  exact h0

private theorem s2Step243EntryBank_checked : compileHmrBankResizeLog .entry s2Step243EntryFBefore ⟨s2Step243EntryFRow,s2Step243EntryGRow,s2Step243EntryFvRow,s2Step243EntryGvRow⟩ ⟨150,150,136,136⟩ [s2Step243EntryFFresh,s2Step243EntryGFresh,s2Step243EntryFvFresh,s2Step243EntryGvFresh]=
    some (s2Step243EntryGvAfter,⟨s2Step243EntryFOut,s2Step243EntryGOut,s2Step243EntryFvOut,s2Step243EntryGvOut⟩,(growRow 768 s2Step243EntryFFresh ++ (growRow 769 s2Step243EntryGFresh ++ (growRow 770 s2Step243EntryFvFresh ++ (growRow 771 s2Step243EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step243EntryBank_rows]
  rfl

private def s2Step243ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<660) ∨ (662≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step243ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step243ExitFBefore : Arena := s2Step243ExitGAfter

private def s2Step243ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 810],768⟩

private def s2Step243ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826],770⟩

private def s2Step243ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 830, 842, 834],769⟩

private def s2Step243ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 814],771⟩

private theorem s2Step243ExitBank_incomingDistinct : ([s2Step243ExitGRow,s2Step243ExitFRow,s2Step243ExitFvRow,s2Step243ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step243ExitF_Incoming : rowsOwned s2Step243ExitFBefore [s2Step243ExitFRow,s2Step243ExitFvRow,s2Step243ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step243ExitGRow,s2Step243ExitFRow,s2Step243ExitFvRow,s2Step243ExitGvRow] 1 s2Step243ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step243ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
    decide +kernel

private theorem s2Step243ExitBank_outgoingOwned : rowsOwned s2Step243ExitGvAfter [s2Step243ExitGOut,s2Step243ExitFOut,s2Step243ExitFvOut,s2Step243ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step243ExitGvAfter (fun q => (0≤q ∧ q<660) ∨ (662≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
    decide +kernel

private theorem s2Step243ExitF_Outgoing : rowsOwned s2Step243ExitGvAfter [s2Step243ExitFOut,s2Step243ExitFvOut,s2Step243ExitGvOut] :=
  hmrRows_owned_drop s2Step243ExitGvAfter [s2Step243ExitGOut,s2Step243ExitFOut,s2Step243ExitFvOut,s2Step243ExitGvOut] 1 s2Step243ExitBank_outgoingOwned

private theorem s2Step243ExitF_distinct : (s2Step243ExitFRow.sign::s2Step243ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step243ExitF_owned : (s2Step243ExitFRow.sign::s2Step243ExitFRow.payload).toFinset⊆s2Step243ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step243ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243ExitF_retired : s2Step243ExitFBefore.retireSet s2Step243ExitFExtra.toFinset=s2Step243ExitFAfter := by
  unfold Arena.retireSet s2Step243ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step243ExitFBefore,s2Step243ExitGAfter,s2Step243ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step243ExitF_checked : planRowResizeLog s2Step243ExitFBefore s2Step243ExitFRow 148 []=
    some (s2Step243ExitFAfter,s2Step243ExitFOut,shrinkRow 768 s2Step243ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step243ExitFBefore s2Step243ExitFRow 148 s2Step243ExitF_distinct s2Step243ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step243ExitFRow.payload.take 148) s2Step243ExitFRow.sign=s2Step243ExitFOut := by decide +kernel
  have hi : s2Step243ExitFRow.payload.drop 148=s2Step243ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step243ExitF_retired] at result
  exact result

private def s2Step243ExitFvAfter : Arena := s2Step243ExitFAfter

private def s2Step243ExitFvBefore : Arena := s2Step243ExitFAfter

private theorem s2Step243ExitFv_Incoming : rowsOwned s2Step243ExitFvBefore [s2Step243ExitFvRow,s2Step243ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step243ExitGRow,s2Step243ExitFRow,s2Step243ExitFvRow,s2Step243ExitGvRow] 2 s2Step243ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step243ExitFvBefore (fun q => (0≤q ∧ q<660) ∨ (662≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
    decide +kernel

private theorem s2Step243ExitFv_Outgoing : rowsOwned s2Step243ExitGvAfter [s2Step243ExitFvOut,s2Step243ExitGvOut] :=
  hmrRows_owned_drop s2Step243ExitGvAfter [s2Step243ExitGOut,s2Step243ExitFOut,s2Step243ExitFvOut,s2Step243ExitGvOut] 2 s2Step243ExitBank_outgoingOwned

private theorem s2Step243ExitFv_distinct : (s2Step243ExitFvRow.sign::s2Step243ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step243ExitFv_owned : (s2Step243ExitFvRow.sign::s2Step243ExitFvRow.payload).toFinset⊆s2Step243ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step243ExitFvBefore (fun q => (0≤q ∧ q<660) ∨ (662≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243ExitFv_reserved : s2Step243ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step243ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step243ExitFv_checked : planRowResizeLog s2Step243ExitFvBefore s2Step243ExitFvRow 137 []=
    some (s2Step243ExitFvAfter,s2Step243ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step243ExitFvBefore s2Step243ExitFvAfter s2Step243ExitFvRow 137 []
    s2Step243ExitFv_distinct s2Step243ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step243ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step243ExitFvRow.payload++[]) s2Step243ExitFvRow.sign=s2Step243ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step243ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)),Finset.filter_subset _ _⟩

private theorem s2Step243ExitG_Incoming : rowsOwned s2Step243ExitGBefore [s2Step243ExitGRow,s2Step243ExitFRow,s2Step243ExitFvRow,s2Step243ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step243ExitGRow,s2Step243ExitFRow,s2Step243ExitFvRow,s2Step243ExitGvRow] 0 s2Step243ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step243ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
    decide +kernel

private theorem s2Step243ExitG_Outgoing : rowsOwned s2Step243ExitGvAfter [s2Step243ExitGOut,s2Step243ExitFOut,s2Step243ExitFvOut,s2Step243ExitGvOut] :=
  hmrRows_owned_drop s2Step243ExitGvAfter [s2Step243ExitGOut,s2Step243ExitFOut,s2Step243ExitFvOut,s2Step243ExitGvOut] 0 s2Step243ExitBank_outgoingOwned

private theorem s2Step243ExitG_distinct : (s2Step243ExitGRow.sign::s2Step243ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step243ExitG_owned : (s2Step243ExitGRow.sign::s2Step243ExitGRow.payload).toFinset⊆s2Step243ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step243ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243ExitG_retired : s2Step243ExitGBefore.retireSet s2Step243ExitGExtra.toFinset=s2Step243ExitGAfter := by
  unfold Arena.retireSet s2Step243ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step243ExitGBefore,s2Step243ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step243ExitG_checked : planRowResizeLog s2Step243ExitGBefore s2Step243ExitGRow 148 []=
    some (s2Step243ExitGAfter,s2Step243ExitGOut,shrinkRow 769 s2Step243ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step243ExitGBefore s2Step243ExitGRow 148 s2Step243ExitG_distinct s2Step243ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step243ExitGRow.payload.take 148) s2Step243ExitGRow.sign=s2Step243ExitGOut := by decide +kernel
  have hi : s2Step243ExitGRow.payload.drop 148=s2Step243ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step243ExitG_retired] at result
  exact result

private def s2Step243ExitGvBefore : Arena := s2Step243ExitFAfter

private theorem s2Step243ExitGv_Incoming : rowsOwned s2Step243ExitGvBefore [s2Step243ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step243ExitGRow,s2Step243ExitFRow,s2Step243ExitFvRow,s2Step243ExitGvRow] 3 s2Step243ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step243ExitGvBefore (fun q => (0≤q ∧ q<660) ∨ (662≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
    decide +kernel

private theorem s2Step243ExitGv_Outgoing : rowsOwned s2Step243ExitGvAfter [s2Step243ExitGvOut] :=
  hmrRows_owned_drop s2Step243ExitGvAfter [s2Step243ExitGOut,s2Step243ExitFOut,s2Step243ExitFvOut,s2Step243ExitGvOut] 3 s2Step243ExitBank_outgoingOwned

private theorem s2Step243ExitGv_distinct : (s2Step243ExitGvRow.sign::s2Step243ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step243ExitGv_owned : (s2Step243ExitGvRow.sign::s2Step243ExitGvRow.payload).toFinset⊆s2Step243ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step243ExitGvBefore (fun q => (0≤q ∧ q<660) ∨ (662≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243ExitGv_retired : s2Step243ExitGvBefore.retireSet s2Step243ExitGvExtra.toFinset=s2Step243ExitGvAfter := by
  unfold Arena.retireSet s2Step243ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step243ExitGvBefore,s2Step243ExitFAfter,s2Step243ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step243ExitGv_checked : planRowResizeLog s2Step243ExitGvBefore s2Step243ExitGvRow 136 []=
    some (s2Step243ExitGvAfter,s2Step243ExitGvOut,shrinkRow 771 s2Step243ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step243ExitGvBefore s2Step243ExitGvRow 136 s2Step243ExitGv_distinct s2Step243ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step243ExitGvRow.payload.take 136) s2Step243ExitGvRow.sign=s2Step243ExitGvOut := by decide +kernel
  have hi : s2Step243ExitGvRow.payload.drop 136=s2Step243ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step243ExitGv_retired] at result
  exact result

private theorem s2Step243ExitBank_rows : planWindowRowsLog s2Step243ExitGBefore [(s2Step243ExitGRow,148),(s2Step243ExitFRow,148),(s2Step243ExitFvRow,137),(s2Step243ExitGvRow,136)] [[],[],[],[]]=
    some (s2Step243ExitGvAfter,[s2Step243ExitGOut,s2Step243ExitFOut,s2Step243ExitFvOut,s2Step243ExitGvOut],(shrinkRow 769 s2Step243ExitGExtra ++ (shrinkRow 768 s2Step243ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step243ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step243ExitGvAfter [] []=some (s2Step243ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step243ExitGvBefore s2Step243ExitGvAfter s2Step243ExitGvAfter
    s2Step243ExitGvRow s2Step243ExitGvOut 136 [] [] [] []
    (shrinkRow 771 s2Step243ExitGvExtra) ([]) s2Step243ExitGv_Incoming s2Step243ExitGv_checked h4 s2Step243ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step243ExitFvBefore s2Step243ExitFvAfter s2Step243ExitGvAfter
    s2Step243ExitFvRow s2Step243ExitFvOut 137 [] [(s2Step243ExitGvRow,136)] [[]] [s2Step243ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step243ExitGvExtra ++ [])) s2Step243ExitFv_Incoming s2Step243ExitFv_checked h3 s2Step243ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step243ExitFBefore s2Step243ExitFAfter s2Step243ExitGvAfter
    s2Step243ExitFRow s2Step243ExitFOut 148 [] [(s2Step243ExitFvRow,137),(s2Step243ExitGvRow,136)] [[],[]] [s2Step243ExitFvOut,s2Step243ExitGvOut]
    (shrinkRow 768 s2Step243ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step243ExitGvExtra ++ []))) s2Step243ExitF_Incoming s2Step243ExitF_checked h2 s2Step243ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step243ExitGBefore s2Step243ExitGAfter s2Step243ExitGvAfter
    s2Step243ExitGRow s2Step243ExitGOut 148 [] [(s2Step243ExitFRow,148),(s2Step243ExitFvRow,137),(s2Step243ExitGvRow,136)] [[],[],[]] [s2Step243ExitFOut,s2Step243ExitFvOut,s2Step243ExitGvOut]
    (shrinkRow 769 s2Step243ExitGExtra) ((shrinkRow 768 s2Step243ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step243ExitGvExtra ++ [])))) s2Step243ExitG_Incoming s2Step243ExitG_checked h1 s2Step243ExitG_Outgoing
  exact h0

private theorem s2Step243ExitBank_checked : compileHmrBankResizeLog .exit s2Step243ExitGBefore ⟨s2Step243ExitFRow,s2Step243ExitGRow,s2Step243ExitFvRow,s2Step243ExitGvRow⟩ ⟨148,148,137,136⟩ [[],[],[],[]]=
    some (s2Step243ExitGvAfter,⟨s2Step243ExitFOut,s2Step243ExitGOut,s2Step243ExitFvOut,s2Step243ExitGvOut⟩,(shrinkRow 769 s2Step243ExitGExtra ++ (shrinkRow 768 s2Step243ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step243ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step243ExitBank_rows]
  rfl

private theorem s2Step243Add0_apart : Disjoint s2Step243Add0Arena.live s2Step243Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step243Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243Add0_card : s2Step243Add0Arena.live.card=896 := by
  decide +kernel

private theorem s2Step243Add0_borrowed : s2Step243Add0Arena.checkBorrow (hmrHybridCount s2Step243Add0Arena s2Step243Add0B.length) s2Step243Add0Work=some s2Step243Add0During := by
  have len : s2Step243Add0Work.length=hmrHybridCount s2Step243Add0Arena s2Step243Add0B.length := by
    rw [hmrHybridCount,s2Step243Add0_card]
    decide +kernel
  have nd : s2Step243Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step243Add0Arena s2Step243Add0During s2Step243Add0Work.toFinset s2Step243Add0_bounded s2Step243Add0_apart rfl

private theorem s2Step243Add0_distinct : (792::819::800::(s2Step243Add0A++s2Step243Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step243Add0_owned : (792::819::800::(s2Step243Add0A++s2Step243Add0B)).toFinset⊆s2Step243Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step243Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243Add0_checked : compileHmrHybridCinLog s2Step243Add0Arena 819 792 800 s2Step243Add0A s2Step243Add0B s2Step243Add0Work=some s2Step243Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step243Add0Arena s2Step243Add0During 819 792 800 s2Step243Add0A s2Step243Add0B s2Step243Add0Work
    (by decide +kernel) (by decide +kernel) s2Step243Add0_distinct
    (fun q hq => s2Step243Add0_owned (List.mem_toFinset.mpr hq)) s2Step243Add0_borrowed

private theorem s2Step243Add1_apart : Disjoint s2Step243Add1Arena.live s2Step243Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step243Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243Add1_card : s2Step243Add1Arena.live.card=896 := by
  decide +kernel

private theorem s2Step243Add1_borrowed : s2Step243Add1Arena.checkBorrow (hmrHybridCount s2Step243Add1Arena s2Step243Add1B.length) s2Step243Add1Work=some s2Step243Add1During := by
  have len : s2Step243Add1Work.length=hmrHybridCount s2Step243Add1Arena s2Step243Add1B.length := by
    rw [hmrHybridCount,s2Step243Add1_card]
    decide +kernel
  have nd : s2Step243Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step243Add1Arena s2Step243Add1During s2Step243Add1Work.toFinset s2Step243Add1_bounded s2Step243Add1_apart rfl

private theorem s2Step243Add1_distinct : (792::819::800::(s2Step243Add1A++s2Step243Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step243Add1_owned : (792::819::800::(s2Step243Add1A++s2Step243Add1B)).toFinset⊆s2Step243Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step243Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243Add1_checked : compileHmrHybridCinLog s2Step243Add1Arena 819 792 800 s2Step243Add1A s2Step243Add1B s2Step243Add1Work=some s2Step243Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step243Add1Arena s2Step243Add1During 819 792 800 s2Step243Add1A s2Step243Add1B s2Step243Add1Work
    (by decide +kernel) (by decide +kernel) s2Step243Add1_distinct
    (fun q hq => s2Step243Add1_owned (List.mem_toFinset.mpr hq)) s2Step243Add1_borrowed

private theorem s2Step243F4_apart : Disjoint (s2Step243Add0A++s2Step243Add0B).toFinset (s2Step243Add1A++s2Step243Add1B).toFinset := by
  have nd : ((s2Step243Add0A++s2Step243Add0B)++(s2Step243Add1A++s2Step243Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step243F4_carry : s2Step243F4FlagArena.checkBorrow 1 [800]=some s2Step243Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step243F4FlagArena,s2Step243HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step243F4FlagArena,s2Step243HeadFvAfter,s2Step243Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step243F4_distinct : (809::819::792::800::((s2Step243Add0A++s2Step243Add1A)++(s2Step243Add0B++s2Step243Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step243F4_flag : s2Step243HeadFvAfter.checkBorrow 1 [792]=some s2Step243F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step243HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step243F4_owned : (809::819::((s2Step243Add0A++s2Step243Add1A)++(s2Step243Add0B++s2Step243Add1B))).toFinset⊆s2Step243HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step243HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243F4_checked : compileHmrHybridF4Log s2Step243HeadFvAfter 809 819 s2Step243Add0A s2Step243Add0B s2Step243Add1A s2Step243Add1B [792] [800] s2Step243Add0Work s2Step243Add1Work=some s2Step243F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step243HeadFvAfter s2Step243F4FlagArena s2Step243Add0Arena s2Step243Add0During s2Step243Add1During 809 819
    s2Step243Add0A s2Step243Add0B s2Step243Add1A s2Step243Add1B [792] [800] s2Step243Add0Work s2Step243Add1Work
    (fun q hq => s2Step243F4_owned (List.mem_toFinset.mpr hq)) s2Step243F4_flag s2Step243F4_carry
    s2Step243F4_distinct s2Step243F4_apart s2Step243Add0_checked s2Step243Add1_checked

private theorem s2Step243Front_branch : s2Step243FrontSigmaArena.checkBorrow 1 [819]=some s2Step243HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step243FrontSigmaArena,s2Step243EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step243FrontSigmaArena,s2Step243EntryGvAfter,s2Step243HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step243Front_entry : HmrFrontEntryValid s2Step243EntryFBefore s2Step243FrontBank 150 136 ⟨148,148,137,136⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step243FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step243EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step243EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step243FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step243Front_sigma : s2Step243EntryGvAfter.checkBorrow 1 [809]=some s2Step243FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step243EntryGvAfter,arenaWires]
  · rfl

private def s2Step243HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step243HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step243HeadFBefore : Arena := s2Step243HeadGAfter

private def s2Step243HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩

private def s2Step243HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793],770⟩

private def s2Step243HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 830, 842],769⟩

private def s2Step243HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846],771⟩

private theorem s2Step243HeadBank_incomingDistinct : ([s2Step243HeadGRow,s2Step243HeadFRow,s2Step243HeadGvRow,s2Step243HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step243HeadF_Incoming : rowsOwned s2Step243HeadFBefore [s2Step243HeadFRow,s2Step243HeadGvRow,s2Step243HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step243HeadGRow,s2Step243HeadFRow,s2Step243HeadGvRow,s2Step243HeadFvRow] 1 s2Step243HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step243HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
    decide +kernel

private theorem s2Step243HeadBank_outgoingOwned : rowsOwned s2Step243HeadFvAfter [s2Step243HeadGOut,s2Step243HeadFOut,s2Step243HeadGvOut,s2Step243HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step243HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
    decide +kernel

private theorem s2Step243HeadF_Outgoing : rowsOwned s2Step243HeadFvAfter [s2Step243HeadFOut,s2Step243HeadGvOut,s2Step243HeadFvOut] :=
  hmrRows_owned_drop s2Step243HeadFvAfter [s2Step243HeadGOut,s2Step243HeadFOut,s2Step243HeadGvOut,s2Step243HeadFvOut] 1 s2Step243HeadBank_outgoingOwned

private theorem s2Step243HeadF_distinct : (s2Step243HeadFRow.sign::s2Step243HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step243HeadF_owned : (s2Step243HeadFRow.sign::s2Step243HeadFRow.payload).toFinset⊆s2Step243HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step243HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243HeadF_reserved : s2Step243HeadFBefore.reserve s2Step243HeadFFresh.toFinset=some s2Step243HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step243HeadFFresh,arenaWires]
  · norm_num [s2Step243HeadFBefore,s2Step243HeadGAfter,s2Step243HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step243HeadFAfter,s2Step243HeadFBefore,s2Step243HeadGAfter,s2Step243HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step243HeadF_checked : planRowResizeLog s2Step243HeadFBefore s2Step243HeadFRow 151 s2Step243HeadFFresh=
    some (s2Step243HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 810],768⟩,growRow 768 s2Step243HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step243HeadFBefore s2Step243HeadFAfter s2Step243HeadFRow 151 s2Step243HeadFFresh
    s2Step243HeadF_distinct s2Step243HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step243HeadF_reserved
  have rowEq : WindowRow.mk (s2Step243HeadFRow.payload++s2Step243HeadFFresh) s2Step243HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 810],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step243HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step243HeadFvBefore : Arena := s2Step243HeadGvAfter

private theorem s2Step243HeadFv_Incoming : rowsOwned s2Step243HeadFvBefore [s2Step243HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step243HeadGRow,s2Step243HeadFRow,s2Step243HeadGvRow,s2Step243HeadFvRow] 3 s2Step243HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step243HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
    decide +kernel

private theorem s2Step243HeadFv_Outgoing : rowsOwned s2Step243HeadFvAfter [s2Step243HeadFvOut] :=
  hmrRows_owned_drop s2Step243HeadFvAfter [s2Step243HeadGOut,s2Step243HeadFOut,s2Step243HeadGvOut,s2Step243HeadFvOut] 3 s2Step243HeadBank_outgoingOwned

private theorem s2Step243HeadFv_distinct : (s2Step243HeadFvRow.sign::s2Step243HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step243HeadFv_owned : (s2Step243HeadFvRow.sign::s2Step243HeadFvRow.payload).toFinset⊆s2Step243HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step243HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243HeadFv_reserved : s2Step243HeadFvBefore.reserve s2Step243HeadFvFresh.toFinset=some s2Step243HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step243HeadFvFresh,arenaWires]
  · norm_num [s2Step243HeadFvBefore,s2Step243HeadGvAfter,s2Step243HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step243HeadFvAfter,s2Step243HeadFvBefore,s2Step243HeadGvAfter,s2Step243HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step243HeadFv_checked : planRowResizeLog s2Step243HeadFvBefore s2Step243HeadFvRow 137 s2Step243HeadFvFresh=
    some (s2Step243HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826],770⟩,growRow 770 s2Step243HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step243HeadFvBefore s2Step243HeadFvAfter s2Step243HeadFvRow 137 s2Step243HeadFvFresh
    s2Step243HeadFv_distinct s2Step243HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step243HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step243HeadFvRow.payload++s2Step243HeadFvFresh) s2Step243HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step243HeadG_Incoming : rowsOwned s2Step243HeadGBefore [s2Step243HeadGRow,s2Step243HeadFRow,s2Step243HeadGvRow,s2Step243HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step243HeadGRow,s2Step243HeadFRow,s2Step243HeadGvRow,s2Step243HeadFvRow] 0 s2Step243HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step243HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
    decide +kernel

private theorem s2Step243HeadG_Outgoing : rowsOwned s2Step243HeadFvAfter [s2Step243HeadGOut,s2Step243HeadFOut,s2Step243HeadGvOut,s2Step243HeadFvOut] :=
  hmrRows_owned_drop s2Step243HeadFvAfter [s2Step243HeadGOut,s2Step243HeadFOut,s2Step243HeadGvOut,s2Step243HeadFvOut] 0 s2Step243HeadBank_outgoingOwned

private theorem s2Step243HeadG_distinct : (s2Step243HeadGRow.sign::s2Step243HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step243HeadG_owned : (s2Step243HeadGRow.sign::s2Step243HeadGRow.payload).toFinset⊆s2Step243HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step243HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243HeadG_reserved : s2Step243HeadGBefore.reserve s2Step243HeadGFresh.toFinset=some s2Step243HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step243HeadGFresh,arenaWires]
  · norm_num [s2Step243HeadGBefore,s2Step243HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step243HeadGAfter,s2Step243HeadGBefore,s2Step243HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step243HeadG_checked : planRowResizeLog s2Step243HeadGBefore s2Step243HeadGRow 151 s2Step243HeadGFresh=
    some (s2Step243HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 830, 842, 834],769⟩,growRow 769 s2Step243HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step243HeadGBefore s2Step243HeadGAfter s2Step243HeadGRow 151 s2Step243HeadGFresh
    s2Step243HeadG_distinct s2Step243HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step243HeadG_reserved
  have rowEq : WindowRow.mk (s2Step243HeadGRow.payload++s2Step243HeadGFresh) s2Step243HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 830, 842, 834],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step243HeadGvBefore : Arena := s2Step243HeadFAfter

private theorem s2Step243HeadGv_Incoming : rowsOwned s2Step243HeadGvBefore [s2Step243HeadGvRow,s2Step243HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step243HeadGRow,s2Step243HeadFRow,s2Step243HeadGvRow,s2Step243HeadFvRow] 2 s2Step243HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step243HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
    decide +kernel

private theorem s2Step243HeadGv_Outgoing : rowsOwned s2Step243HeadFvAfter [s2Step243HeadGvOut,s2Step243HeadFvOut] :=
  hmrRows_owned_drop s2Step243HeadFvAfter [s2Step243HeadGOut,s2Step243HeadFOut,s2Step243HeadGvOut,s2Step243HeadFvOut] 2 s2Step243HeadBank_outgoingOwned

private theorem s2Step243HeadGv_distinct : (s2Step243HeadGvRow.sign::s2Step243HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step243HeadGv_owned : (s2Step243HeadGvRow.sign::s2Step243HeadGvRow.payload).toFinset⊆s2Step243HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step243HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step243HeadGv_reserved : s2Step243HeadGvBefore.reserve s2Step243HeadGvFresh.toFinset=some s2Step243HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step243HeadGvFresh,arenaWires]
  · norm_num [s2Step243HeadGvBefore,s2Step243HeadFAfter,s2Step243HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step243HeadGvAfter,s2Step243HeadGvBefore,s2Step243HeadFAfter,s2Step243HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step243HeadGv_checked : planRowResizeLog s2Step243HeadGvBefore s2Step243HeadGvRow 137 s2Step243HeadGvFresh=
    some (s2Step243HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 814],771⟩,growRow 771 s2Step243HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step243HeadGvBefore s2Step243HeadGvAfter s2Step243HeadGvRow 137 s2Step243HeadGvFresh
    s2Step243HeadGv_distinct s2Step243HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step243HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step243HeadGvRow.payload++s2Step243HeadGvFresh) s2Step243HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 814],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step243HeadBank_rows : planWindowRowsLog s2Step243HeadGBefore [(s2Step243HeadGRow,151),(s2Step243HeadFRow,151),(s2Step243HeadGvRow,137),(s2Step243HeadFvRow,137)] [s2Step243HeadGFresh,s2Step243HeadFFresh,s2Step243HeadGvFresh,s2Step243HeadFvFresh]=
    some (s2Step243HeadFvAfter,[s2Step243HeadGOut,s2Step243HeadFOut,s2Step243HeadGvOut,s2Step243HeadFvOut],(growRow 769 s2Step243HeadGFresh ++ (growRow 768 s2Step243HeadFFresh ++ (growRow 771 s2Step243HeadGvFresh ++ (growRow 770 s2Step243HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step243HeadFvAfter [] []=some (s2Step243HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step243HeadFvBefore s2Step243HeadFvAfter s2Step243HeadFvAfter
    s2Step243HeadFvRow s2Step243HeadFvOut 137 s2Step243HeadFvFresh [] [] []
    (growRow 770 s2Step243HeadFvFresh) ([]) s2Step243HeadFv_Incoming s2Step243HeadFv_checked h4 s2Step243HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step243HeadGvBefore s2Step243HeadGvAfter s2Step243HeadFvAfter
    s2Step243HeadGvRow s2Step243HeadGvOut 137 s2Step243HeadGvFresh [(s2Step243HeadFvRow,137)] [s2Step243HeadFvFresh] [s2Step243HeadFvOut]
    (growRow 771 s2Step243HeadGvFresh) ((growRow 770 s2Step243HeadFvFresh ++ [])) s2Step243HeadGv_Incoming s2Step243HeadGv_checked h3 s2Step243HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step243HeadFBefore s2Step243HeadFAfter s2Step243HeadFvAfter
    s2Step243HeadFRow s2Step243HeadFOut 151 s2Step243HeadFFresh [(s2Step243HeadGvRow,137),(s2Step243HeadFvRow,137)] [s2Step243HeadGvFresh,s2Step243HeadFvFresh] [s2Step243HeadGvOut,s2Step243HeadFvOut]
    (growRow 768 s2Step243HeadFFresh) ((growRow 771 s2Step243HeadGvFresh ++ (growRow 770 s2Step243HeadFvFresh ++ []))) s2Step243HeadF_Incoming s2Step243HeadF_checked h2 s2Step243HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step243HeadGBefore s2Step243HeadGAfter s2Step243HeadFvAfter
    s2Step243HeadGRow s2Step243HeadGOut 151 s2Step243HeadGFresh [(s2Step243HeadFRow,151),(s2Step243HeadGvRow,137),(s2Step243HeadFvRow,137)] [s2Step243HeadFFresh,s2Step243HeadGvFresh,s2Step243HeadFvFresh] [s2Step243HeadFOut,s2Step243HeadGvOut,s2Step243HeadFvOut]
    (growRow 769 s2Step243HeadGFresh) ((growRow 768 s2Step243HeadFFresh ++ (growRow 771 s2Step243HeadGvFresh ++ (growRow 770 s2Step243HeadFvFresh ++ [])))) s2Step243HeadG_Incoming s2Step243HeadG_checked h1 s2Step243HeadG_Outgoing
  exact h0

private theorem s2Step243HeadBank_checked : compileHmrBankResizeLog .headroom s2Step243HeadGBefore ⟨s2Step243HeadFRow,s2Step243HeadGRow,s2Step243HeadFvRow,s2Step243HeadGvRow⟩ ⟨151,151,137,137⟩ [s2Step243HeadGFresh,s2Step243HeadFFresh,s2Step243HeadGvFresh,s2Step243HeadFvFresh]=
    some (s2Step243HeadFvAfter,⟨s2Step243HeadFOut,s2Step243HeadGOut,s2Step243HeadFvOut,s2Step243HeadGvOut⟩,(growRow 769 s2Step243HeadGFresh ++ (growRow 768 s2Step243HeadFFresh ++ (growRow 771 s2Step243HeadGvFresh ++ (growRow 770 s2Step243HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step243HeadBank_rows]
  rfl

private theorem s2Step243Front_checked : compileHmrSourceFrontLog s2Step243EntryFBefore s2Step243FrontBank 150 136 ⟨148,148,137,136⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step243FrontLog=some s2Step243FrontPlan := by
  have pairEq : s2Step243FrontPair=⟨s2Step243HeadFRow,s2Step243HeadGRow,s2Step243HeadFvRow,s2Step243HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step243FrontHead=⟨s2Step243ExitFRow,s2Step243ExitGRow,s2Step243ExitFvRow,s2Step243ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step243Add0A=s2Step243FrontHead.f.wires := by decide +kernel
  have gEq : s2Step243Add0B=s2Step243FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step243Add1A=s2Step243FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step243Add1B=s2Step243FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step243EntryFBefore s2Step243FrontBank 150 136 ⟨148,148,137,136⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step243FrontLog s2Step243FrontPlan
  · exact s2Step243Front_entry
  · exact s2Step243EntryBank_checked
  · exact s2Step243Front_sigma
  · rfl
  · exact s2Step243Front_branch
  · rfl
  · simpa only [s2Step243FrontPlan,pairEq] using s2Step243HeadBank_checked
  · simpa only [s2Step243FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step243F4_checked
  · exact s2Step243Counter_checked
  · rfl
  · simpa only [s2Step243FrontPlan,headEq] using s2Step243ExitBank_checked

private theorem s2Step243Complete_explicit_checked : compileHmrEarlyStepLog s2Step243EntryFBefore s2Step243FrontBank 150 136 ⟨148,148,137,136⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899] 51 s2Step243CompleteLog=some s2Step243CompletePlan := by
  let Q := s2Step243EarlyControlPlan
  have hq := s2Step243EarlyControl_plan_checked
  have fv1 : s2Step243CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step243CompleteOut.fv.payload[2]?.getD s2Step243CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step243CompleteOut.fv.payload[3]?.getD s2Step243CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step243CompleteOut.fv.payload[4]?.getD s2Step243CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step243EntryFBefore s2Step243EarlyControlArena s2Step243FrontBank 150 136 ⟨148,148,137,136⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899] 51 s2Step243CompleteLog s2Step243FrontPlan Q
    s2Step243Front_checked s2Step243Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step243Complete_owned s2Step243Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step243EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899] 777 809 s2Step243CompleteOut.fv.second (s2Step243CompleteOut.fv.payload[2]?.getD s2Step243CompleteOut.fv.sign) (s2Step243CompleteOut.fv.payload[3]?.getD s2Step243CompleteOut.fv.sign) (s2Step243CompleteOut.fv.payload[4]?.getD s2Step243CompleteOut.fv.sign) 819 51 s2Step243EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep243Arena : Arena := s2Step243EntryFBefore
def s2PrivateStep243Bank : WindowBank := s2Step243FrontBank
def s2PrivateStep243Spec : HmrSourceWalkStepLog := ⟨150,136,⟨148,148,137,136⟩,51,.early s2Step243CompleteLog⟩
def s2PrivateStep243Plan : HmrSourceStepPlan := .early s2Step243CompletePlan
theorem s2PrivateStep243_source : s2PrivateStep243Spec=s2ObservedLogs240[3] := rfl
theorem s2PrivateStep243_checked : compileHmrSourceStepLog s2PrivateStep243Arena s2PrivateStep243Bank
    s2PrivateStep243Spec.fgWidth s2PrivateStep243Spec.vWidth s2PrivateStep243Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899]
    6 498 243 s2PrivateStep243Spec.need none s2PrivateStep243Spec.log=some s2PrivateStep243Plan := by
  change compileHmrSourceStepLog s2Step243EntryFBefore s2Step243FrontBank 150 136 ⟨148,148,137,136⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899] 6 498 243 51 none (.early s2Step243CompleteLog)=some (.early s2Step243CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 243<498)]
  rw [s2Step243Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
