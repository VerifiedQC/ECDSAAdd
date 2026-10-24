import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep203
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

private def s2Step205CompleteMoves : List (Wire × Wire) := [(783,166)]

private def s2Step205EarlyControlLog : HmrEarlyControlLog := ⟨[783, 841, 822, 781, 816],[789],[814],[882, 826, 842, 885, 891, 894],[]⟩

private def s2Step205FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [844]],[[789], [816], [841], [781]],[[], [], [], []]⟩,[879],[845],[814],[882],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step205CompleteLog : HmrEarlyStepLog := ⟨s2Step205FrontLog,s2Step205CompleteMoves,s2Step205EarlyControlLog⟩

private def s2Step205ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678],768⟩

private def s2Step205ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877],770⟩

private def s2Step205ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165],769⟩

private def s2Step205ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩

private def s2Step205FrontOut : WindowBank := ⟨s2Step205ExitFOut,s2Step205ExitGOut,s2Step205ExitFvOut,s2Step205ExitGvOut⟩

private def s2Step205CompleteOut : WindowBank := s2Step205FrontOut.repacked s2Step205CompleteMoves

private def s2Step205EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step205EarlyControlPositiveArena,[789],s2Step205EarlyControlEqualityArena,[814],⟨⟨879,false⟩,[⟨⟨789,false⟩,814⟩]⟩⟩

private def s2Step205EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,783⟩,⟨⟨774,false⟩,841⟩,⟨⟨775,false⟩,822⟩,⟨⟨776,false⟩,781⟩,⟨⟨777,false⟩,816⟩]⟩

private def s2Step205EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step205EarlyControlZeroArena,s2Step205EarlyControlZeroPlan,s2Step205EarlyControlClassPlan,s2Step205EarlyControlFlagArena,s2Step205EarlyControlFittedArena,s2Step205EarlyControlHistoryArena,s2Step205EarlyControlSigmaArena,s2Step205EarlyControlOutputArena,s2Step205EarlyControlLog⟩

private def s2Step205CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step205Counter_bounded : s2Step205CounterWork.toFinset⊆arenaWires := by norm_num [s2Step205CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step205HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205CounterDuring : Arena := ⟨s2Step205HeadFvAfter.live∪s2Step205CounterWork.toFinset,Finset.union_subset s2Step205HeadFvAfter.bounded s2Step205Counter_bounded⟩

private def s2Step205EntryFFresh : List Wire := []

private def s2Step205EntryFvFresh : List Wire := []

private def s2Step205EntryGFresh : List Wire := []

private def s2Step205EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205EntryGvFresh : List Wire := [844]

private def s2Step205ExitFExtra : List Wire := [816]

private def s2Step205ExitFvExtra : List Wire := [822, 781]

private def s2Step205ExitGExtra : List Wire := [166, 789]

private def s2Step205ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<166) ∨ (167≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205ExitGvExtra : List Wire := [841]

private def s2Step205Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205Add0Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step205Add0_bounded : s2Step205Add0Work.toFinset⊆arenaWires := by
  have h : s2Step205Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step205Add0During : Arena := ⟨s2Step205Add0Arena.live∪s2Step205Add0Work.toFinset,Finset.union_subset s2Step205Add0Arena.bounded s2Step205Add0_bounded⟩

private def s2Step205Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205Add1Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step205Add1_bounded : s2Step205Add1Work.toFinset⊆arenaWires := by
  have h : s2Step205Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step205Add1During : Arena := ⟨s2Step205Add1Arena.live∪s2Step205Add1Work.toFinset,Finset.union_subset s2Step205Add1Arena.bounded s2Step205Add1_bounded⟩

private def s2Step205F4FlagArena : Arena := ⟨s2Step205HeadFvAfter.live∪{814},Finset.union_subset s2Step205HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step205F4Plan : HmrHybridF4Plan := ⟨s2Step205F4FlagArena,[814],s2Step205Add0Arena,[882],s2Step205Add0During,s2Step205Add0Work,s2Step205Add1During,s2Step205Add1Work⟩

private def s2Step205HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 816],768⟩

private def s2Step205HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 822, 781],770⟩

private def s2Step205HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 789],769⟩

private def s2Step205HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 841],771⟩

private def s2Step205FrontHead : WindowBank := ⟨s2Step205HeadFOut,s2Step205HeadGOut,s2Step205HeadFvOut,s2Step205HeadGvOut⟩

private def s2Step205EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678],768⟩

private def s2Step205EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 822],770⟩

private def s2Step205EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166],769⟩

private def s2Step205EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩

private def s2Step205FrontPair : WindowBank := ⟨s2Step205EntryFOut,s2Step205EntryGOut,s2Step205EntryFvOut,s2Step205EntryGvOut⟩

private def s2Step205FrontSigmaArena : Arena := ⟨s2Step205EntryGvAfter.live∪{879},Finset.union_subset s2Step205EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step205HeadFFresh : List Wire := [816]

private def s2Step205HeadFvFresh : List Wire := [781]

private def s2Step205HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205HeadGFresh : List Wire := [789]

private def s2Step205HeadGvFresh : List Wire := [841]

private def s2Step205FrontPlan : HmrSourceFront := ⟨s2Step205EntryGvAfter,s2Step205FrontPair,(growRow 768 s2Step205EntryFFresh ++ (growRow 769 s2Step205EntryGFresh ++ (growRow 770 s2Step205EntryFvFresh ++ (growRow 771 s2Step205EntryGvFresh ++ [])))),s2Step205FrontSigmaArena,[879],s2Step205HeadGBefore,[845],
  s2Step205HeadFvAfter,s2Step205FrontHead,(growRow 769 s2Step205HeadGFresh ++ (growRow 768 s2Step205HeadFFresh ++ (growRow 771 s2Step205HeadGvFresh ++ (growRow 770 s2Step205HeadFvFresh ++ [])))),s2Step205F4Plan,s2Step205CounterDuring,s2Step205CounterWork,s2Step205ExitGvAfter,s2Step205FrontOut,(shrinkRow 769 s2Step205ExitGExtra ++ (shrinkRow 768 s2Step205ExitFExtra ++ (shrinkRow 770 s2Step205ExitFvExtra ++ (shrinkRow 771 s2Step205ExitGvExtra ++ []))))⟩

private def s2Step205CompletePlan : HmrEarlyStepPlan := ⟨s2Step205FrontPlan,s2Step205EarlyControlArena,s2Step205EarlyControlPlan,s2Step205CompleteMoves⟩

private theorem s2Step205Complete_apart : List.Disjoint (s2Step205CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [879, 845, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step205CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[879, 845, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step205Complete_owned : (s2Step205CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step205EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step205EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step205CompleteMoveArena : Arena := ⟨s2Step205ExitGvAfter.live∪{166},Finset.union_subset s2Step205ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step205Complete_repack : s2Step205ExitGvAfter.checkRepack s2Step205CompleteMoves=some s2Step205EarlyControlArena := by
  have owned : 783∈s2Step205ExitGvAfter.live := by norm_num [s2Step205ExitGvAfter,arenaWires]
  have reserve : s2Step205ExitGvAfter.reserve {166}=some s2Step205CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step205ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step205CompleteMoveArena.retireSet {783}=s2Step205EarlyControlArena := by
    unfold Arena.retireSet s2Step205EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step205CompleteMoveArena,s2Step205ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step205CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step205CompleteMoveArena.retireSet {783}).checkRepack []=some s2Step205EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step205EarlyControl_branchOwned : ([845] : List Wire).toFinset⊆s2Step205EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step205EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205EarlyControl_branch : compileHmrBranchRetirement s2Step205EarlyControlSigmaArena 845=some s2Step205EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step205EarlyControl_branchOwned
  · ext q
    simp [s2Step205EarlyControlOutputArena,s2Step205EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step205EarlyControl_classEqualityBorrow : s2Step205EarlyControlPositiveArena.checkBorrow (([879, 789] : List Wire).length-1) s2Step205EarlyControlLog.classWork=some s2Step205EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step205EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step205EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step205EarlyControlEqualityArena,s2Step205EarlyControlPositiveArena,s2Step205EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step205EarlyControl_classEqualityOwned : ([879, 789] : List Wire).toFinset⊆s2Step205EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step205EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205EarlyControl_classEquality : compileHmrEqualityLog s2Step205EarlyControlPositiveArena [879, 789] 0 s2Step205EarlyControlLog.classWork=some (s2Step205EarlyControlEqualityArena,s2Step205EarlyControlLog.classWork,s2Step205EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step205EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step205EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step205EarlyControl_classOwned : ([777, 816, 879] : List Wire).toFinset⊆s2Step205EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step205EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205EarlyControl_positiveBorrow : s2Step205EarlyControlZeroArena.checkBorrow (1) s2Step205EarlyControlLog.positiveWork=some s2Step205EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step205EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step205EarlyControlZeroArena (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step205EarlyControlPositiveArena,s2Step205EarlyControlZeroArena,s2Step205EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step205EarlyControl_class : compileHmrSourceClassLog s2Step205EarlyControlZeroArena false 777 s2Step205EarlyControlZeroPlan.top 0 879 s2Step205EarlyControlLog.positiveWork s2Step205EarlyControlLog.classWork=some s2Step205EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step205EarlyControlClassPlan s2Step205EarlyControlZeroArena false 777 s2Step205EarlyControlZeroPlan.top 0 879
  constructor
  · decide +kernel
  · exact s2Step205EarlyControl_classOwned
  · exact s2Step205EarlyControl_positiveBorrow
  · exact s2Step205EarlyControl_classEquality

private theorem s2Step205EarlyControl_entryRecordOwned : ([845, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step205EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step205EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205EarlyControl_entrySigmaOwned : ([879, 254] : List Wire).toFinset⊆s2Step205EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step205EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205EarlyControl_fitBorrow : s2Step205EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step205EarlyControlLog.recordFresh=some s2Step205EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step205EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step205EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step205EarlyControlFittedArena,s2Step205EarlyControlFlagArena,s2Step205EarlyControlLog,arenaWires]

private theorem s2Step205EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step205EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step205EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205EarlyControl_fit : compileHmrRecordGrowLog s2Step205EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step205EarlyControlLog.recordFresh=some s2Step205EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step205EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step205EarlyControl_fitBorrow

private theorem s2Step205EarlyControl_flagsBorrow : s2Step205EarlyControlEqualityArena.checkBorrow (6) s2Step205EarlyControlLog.flagWork=some s2Step205EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step205EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step205EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step205EarlyControlFlagArena,s2Step205EarlyControlEqualityArena,s2Step205EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step205EarlyControl_flagsOwned : ([814, 253, 252, 251] : List Wire).toFinset⊆s2Step205EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step205EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205EarlyControl_flags : compileHmrFlagsLog s2Step205EarlyControlClassPlan.equalityArena s2Step205EarlyControlClassPlan.equality.top 253 252 251 s2Step205EarlyControlLog.flagWork=some s2Step205EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step205EarlyControl_flagsOwned⟩
  · exact s2Step205EarlyControl_flagsBorrow

private theorem s2Step205EarlyControl_historyBorrow : s2Step205EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step205EarlyControlLog.recordFresh=some s2Step205EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step205EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step205EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step205EarlyControlHistoryArena,s2Step205EarlyControlArena,s2Step205EarlyControlLog,arenaWires]

private theorem s2Step205EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step205EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step205EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205EarlyControl_history : compileHmrRecordGrowLog s2Step205EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step205EarlyControlLog.recordFresh=some s2Step205EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step205EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step205EarlyControl_historyBorrow

private theorem s2Step205EarlyControl_sigmaOwned : ([254, 879] : List Wire).toFinset⊆s2Step205EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step205EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205EarlyControl_sigmaReleaseOwned : ([879] : List Wire).toFinset⊆s2Step205EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step205EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205EarlyControl_sigmaRelease : s2Step205EarlyControlHistoryArena.release {879} (fun _ => false)=some s2Step205EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step205EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step205EarlyControlSigmaArena,s2Step205EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step205EarlyControl_sigma : compileHmrSigmaDropLog s2Step205EarlyControlHistoryArena false 0 0 254 879 []=some s2Step205EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step205EarlyControl_sigmaOwned⟩
  · exact s2Step205EarlyControl_sigmaRelease

private theorem s2Step205EarlyControl_zeroBorrow : s2Step205EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step205EarlyControlLog.zeroWork=some s2Step205EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step205EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step205EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step205EarlyControlZeroArena,s2Step205EarlyControlArena,s2Step205EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step205EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step205EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step205EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205EarlyControl_zero : compileHmrEqualityLog s2Step205EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step205EarlyControlLog.zeroWork=some (s2Step205EarlyControlZeroArena,s2Step205EarlyControlLog.zeroWork,s2Step205EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step205EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step205EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step205EarlyControl_logged : s2Step205EarlyControlPlan.Logged s2Step205EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 879 254 253 252 251 845 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step205EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step205EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step205EarlyControl_zero
  · exact s2Step205EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step205EarlyControl_flags
  · exact s2Step205EarlyControl_fit
  · exact s2Step205EarlyControl_history
  · exact s2Step205EarlyControl_sigma
  · exact s2Step205EarlyControl_branch

private theorem s2Step205EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step205EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 879 254 253 252 251 845 47 s2Step205EarlyControlLog=some s2Step205EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step205EarlyControlPlan s2Step205EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 879 254 253 252 251 845 47 s2Step205EarlyControl_logged

private def s2Step205EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678],768⟩

private def s2Step205EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 822],770⟩

private def s2Step205EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166],769⟩

private def s2Step205EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩

private def s2Step205FrontBank : WindowBank := ⟨s2Step205EntryFRow,s2Step205EntryGRow,s2Step205EntryFvRow,s2Step205EntryGvRow⟩

private def s2Step205Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 816, 768]

private def s2Step205Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 789, 769]

private def s2Step205Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 822, 781, 770]

private def s2Step205Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 841, 771]

private theorem s2Step205Counter_apart : Disjoint s2Step205HeadFvAfter.live s2Step205CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step205HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205Counter_borrowed : s2Step205HeadFvAfter.checkBorrow 4 s2Step205CounterWork=some s2Step205CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step205HeadFvAfter s2Step205CounterDuring s2Step205CounterWork.toFinset s2Step205Counter_bounded s2Step205Counter_apart rfl

private theorem s2Step205Counter_owned : (879::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step205HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step205HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205Counter_checked : compileHmrCounterStepLog s2Step205HeadFvAfter true 879 [772, 773, 774, 775, 776, 777] s2Step205CounterWork=some s2Step205CounterDuring := by
  have owned : ∀q∈879::[772, 773, 774, 775, 776, 777],q∈s2Step205HeadFvAfter.live := fun q hq => s2Step205Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step205Counter_borrowed

private def s2Step205EntryFAfter : Arena := s2Step205EntryFBefore

private theorem s2Step205EntryBank_incomingDistinct : ([s2Step205EntryFRow,s2Step205EntryGRow,s2Step205EntryFvRow,s2Step205EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step205EntryF_Incoming : rowsOwned s2Step205EntryFBefore [s2Step205EntryFRow,s2Step205EntryGRow,s2Step205EntryFvRow,s2Step205EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step205EntryFRow,s2Step205EntryGRow,s2Step205EntryFvRow,s2Step205EntryGvRow] 0 s2Step205EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step205EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step205EntryBank_outgoingOwned : rowsOwned s2Step205EntryGvAfter [s2Step205EntryFOut,s2Step205EntryGOut,s2Step205EntryFvOut,s2Step205EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step205EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step205EntryF_Outgoing : rowsOwned s2Step205EntryGvAfter [s2Step205EntryFOut,s2Step205EntryGOut,s2Step205EntryFvOut,s2Step205EntryGvOut] :=
  hmrRows_owned_drop s2Step205EntryGvAfter [s2Step205EntryFOut,s2Step205EntryGOut,s2Step205EntryFvOut,s2Step205EntryGvOut] 0 s2Step205EntryBank_outgoingOwned

private theorem s2Step205EntryF_distinct : (s2Step205EntryFRow.sign::s2Step205EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step205EntryF_owned : (s2Step205EntryFRow.sign::s2Step205EntryFRow.payload).toFinset⊆s2Step205EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step205EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205EntryF_reserved : s2Step205EntryFBefore.reserve s2Step205EntryFFresh.toFinset=some s2Step205EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step205EntryFFresh,arenaWires]
  · norm_num [s2Step205EntryFBefore,s2Step205EntryFFresh,arenaWires]
  · simp only [s2Step205EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step205EntryF_checked : planRowResizeLog s2Step205EntryFBefore s2Step205EntryFRow 167 s2Step205EntryFFresh=
    some (s2Step205EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678],768⟩,growRow 768 s2Step205EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step205EntryFBefore s2Step205EntryFAfter s2Step205EntryFRow 167 s2Step205EntryFFresh
    s2Step205EntryF_distinct s2Step205EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step205EntryF_reserved
  have rowEq : WindowRow.mk (s2Step205EntryFRow.payload++s2Step205EntryFFresh) s2Step205EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step205EntryFvAfter : Arena := s2Step205EntryFBefore

private def s2Step205EntryFvBefore : Arena := s2Step205EntryFBefore

private theorem s2Step205EntryFv_Incoming : rowsOwned s2Step205EntryFvBefore [s2Step205EntryFvRow,s2Step205EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step205EntryFRow,s2Step205EntryGRow,s2Step205EntryFvRow,s2Step205EntryGvRow] 2 s2Step205EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step205EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step205EntryFv_Outgoing : rowsOwned s2Step205EntryGvAfter [s2Step205EntryFvOut,s2Step205EntryGvOut] :=
  hmrRows_owned_drop s2Step205EntryGvAfter [s2Step205EntryFOut,s2Step205EntryGOut,s2Step205EntryFvOut,s2Step205EntryGvOut] 2 s2Step205EntryBank_outgoingOwned

private theorem s2Step205EntryFv_distinct : (s2Step205EntryFvRow.sign::s2Step205EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step205EntryFv_owned : (s2Step205EntryFvRow.sign::s2Step205EntryFvRow.payload).toFinset⊆s2Step205EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step205EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205EntryFv_reserved : s2Step205EntryFvBefore.reserve s2Step205EntryFvFresh.toFinset=some s2Step205EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step205EntryFvFresh,arenaWires]
  · norm_num [s2Step205EntryFvBefore,s2Step205EntryFBefore,s2Step205EntryFvFresh,arenaWires]
  · simp only [s2Step205EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step205EntryFv_checked : planRowResizeLog s2Step205EntryFvBefore s2Step205EntryFvRow 118 s2Step205EntryFvFresh=
    some (s2Step205EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 822],770⟩,growRow 770 s2Step205EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step205EntryFvBefore s2Step205EntryFvAfter s2Step205EntryFvRow 118 s2Step205EntryFvFresh
    s2Step205EntryFv_distinct s2Step205EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step205EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step205EntryFvRow.payload++s2Step205EntryFvFresh) s2Step205EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 822],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step205EntryGAfter : Arena := s2Step205EntryFBefore

private def s2Step205EntryGBefore : Arena := s2Step205EntryFBefore

private theorem s2Step205EntryG_Incoming : rowsOwned s2Step205EntryGBefore [s2Step205EntryGRow,s2Step205EntryFvRow,s2Step205EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step205EntryFRow,s2Step205EntryGRow,s2Step205EntryFvRow,s2Step205EntryGvRow] 1 s2Step205EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step205EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step205EntryG_Outgoing : rowsOwned s2Step205EntryGvAfter [s2Step205EntryGOut,s2Step205EntryFvOut,s2Step205EntryGvOut] :=
  hmrRows_owned_drop s2Step205EntryGvAfter [s2Step205EntryFOut,s2Step205EntryGOut,s2Step205EntryFvOut,s2Step205EntryGvOut] 1 s2Step205EntryBank_outgoingOwned

private theorem s2Step205EntryG_distinct : (s2Step205EntryGRow.sign::s2Step205EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step205EntryG_owned : (s2Step205EntryGRow.sign::s2Step205EntryGRow.payload).toFinset⊆s2Step205EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step205EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205EntryG_reserved : s2Step205EntryGBefore.reserve s2Step205EntryGFresh.toFinset=some s2Step205EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step205EntryGFresh,arenaWires]
  · norm_num [s2Step205EntryGBefore,s2Step205EntryFBefore,s2Step205EntryGFresh,arenaWires]
  · simp only [s2Step205EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step205EntryG_checked : planRowResizeLog s2Step205EntryGBefore s2Step205EntryGRow 167 s2Step205EntryGFresh=
    some (s2Step205EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166],769⟩,growRow 769 s2Step205EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step205EntryGBefore s2Step205EntryGAfter s2Step205EntryGRow 167 s2Step205EntryGFresh
    s2Step205EntryG_distinct s2Step205EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step205EntryG_reserved
  have rowEq : WindowRow.mk (s2Step205EntryGRow.payload++s2Step205EntryGFresh) s2Step205EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step205EntryGvBefore : Arena := s2Step205EntryFBefore

private theorem s2Step205EntryGv_Incoming : rowsOwned s2Step205EntryGvBefore [s2Step205EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step205EntryFRow,s2Step205EntryGRow,s2Step205EntryFvRow,s2Step205EntryGvRow] 3 s2Step205EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step205EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step205EntryGv_Outgoing : rowsOwned s2Step205EntryGvAfter [s2Step205EntryGvOut] :=
  hmrRows_owned_drop s2Step205EntryGvAfter [s2Step205EntryFOut,s2Step205EntryGOut,s2Step205EntryFvOut,s2Step205EntryGvOut] 3 s2Step205EntryBank_outgoingOwned

private theorem s2Step205EntryGv_distinct : (s2Step205EntryGvRow.sign::s2Step205EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step205EntryGv_owned : (s2Step205EntryGvRow.sign::s2Step205EntryGvRow.payload).toFinset⊆s2Step205EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step205EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205EntryGv_reserved : s2Step205EntryGvBefore.reserve s2Step205EntryGvFresh.toFinset=some s2Step205EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step205EntryGvFresh,arenaWires]
  · norm_num [s2Step205EntryGvBefore,s2Step205EntryFBefore,s2Step205EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step205EntryGvAfter,s2Step205EntryGvBefore,s2Step205EntryFBefore,s2Step205EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step205EntryGv_checked : planRowResizeLog s2Step205EntryGvBefore s2Step205EntryGvRow 118 s2Step205EntryGvFresh=
    some (s2Step205EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩,growRow 771 s2Step205EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step205EntryGvBefore s2Step205EntryGvAfter s2Step205EntryGvRow 118 s2Step205EntryGvFresh
    s2Step205EntryGv_distinct s2Step205EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step205EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step205EntryGvRow.payload++s2Step205EntryGvFresh) s2Step205EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step205EntryBank_rows : planWindowRowsLog s2Step205EntryFBefore [(s2Step205EntryFRow,167),(s2Step205EntryGRow,167),(s2Step205EntryFvRow,118),(s2Step205EntryGvRow,118)] [s2Step205EntryFFresh,s2Step205EntryGFresh,s2Step205EntryFvFresh,s2Step205EntryGvFresh]=
    some (s2Step205EntryGvAfter,[s2Step205EntryFOut,s2Step205EntryGOut,s2Step205EntryFvOut,s2Step205EntryGvOut],(growRow 768 s2Step205EntryFFresh ++ (growRow 769 s2Step205EntryGFresh ++ (growRow 770 s2Step205EntryFvFresh ++ (growRow 771 s2Step205EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step205EntryGvAfter [] []=some (s2Step205EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step205EntryGvBefore s2Step205EntryGvAfter s2Step205EntryGvAfter
    s2Step205EntryGvRow s2Step205EntryGvOut 118 s2Step205EntryGvFresh [] [] []
    (growRow 771 s2Step205EntryGvFresh) ([]) s2Step205EntryGv_Incoming s2Step205EntryGv_checked h4 s2Step205EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step205EntryFvBefore s2Step205EntryFvAfter s2Step205EntryGvAfter
    s2Step205EntryFvRow s2Step205EntryFvOut 118 s2Step205EntryFvFresh [(s2Step205EntryGvRow,118)] [s2Step205EntryGvFresh] [s2Step205EntryGvOut]
    (growRow 770 s2Step205EntryFvFresh) ((growRow 771 s2Step205EntryGvFresh ++ [])) s2Step205EntryFv_Incoming s2Step205EntryFv_checked h3 s2Step205EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step205EntryGBefore s2Step205EntryGAfter s2Step205EntryGvAfter
    s2Step205EntryGRow s2Step205EntryGOut 167 s2Step205EntryGFresh [(s2Step205EntryFvRow,118),(s2Step205EntryGvRow,118)] [s2Step205EntryFvFresh,s2Step205EntryGvFresh] [s2Step205EntryFvOut,s2Step205EntryGvOut]
    (growRow 769 s2Step205EntryGFresh) ((growRow 770 s2Step205EntryFvFresh ++ (growRow 771 s2Step205EntryGvFresh ++ []))) s2Step205EntryG_Incoming s2Step205EntryG_checked h2 s2Step205EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step205EntryFBefore s2Step205EntryFAfter s2Step205EntryGvAfter
    s2Step205EntryFRow s2Step205EntryFOut 167 s2Step205EntryFFresh [(s2Step205EntryGRow,167),(s2Step205EntryFvRow,118),(s2Step205EntryGvRow,118)] [s2Step205EntryGFresh,s2Step205EntryFvFresh,s2Step205EntryGvFresh] [s2Step205EntryGOut,s2Step205EntryFvOut,s2Step205EntryGvOut]
    (growRow 768 s2Step205EntryFFresh) ((growRow 769 s2Step205EntryGFresh ++ (growRow 770 s2Step205EntryFvFresh ++ (growRow 771 s2Step205EntryGvFresh ++ [])))) s2Step205EntryF_Incoming s2Step205EntryF_checked h1 s2Step205EntryF_Outgoing
  exact h0

private theorem s2Step205EntryBank_checked : compileHmrBankResizeLog .entry s2Step205EntryFBefore ⟨s2Step205EntryFRow,s2Step205EntryGRow,s2Step205EntryFvRow,s2Step205EntryGvRow⟩ ⟨167,167,118,118⟩ [s2Step205EntryFFresh,s2Step205EntryGFresh,s2Step205EntryFvFresh,s2Step205EntryGvFresh]=
    some (s2Step205EntryGvAfter,⟨s2Step205EntryFOut,s2Step205EntryGOut,s2Step205EntryFvOut,s2Step205EntryGvOut⟩,(growRow 768 s2Step205EntryFFresh ++ (growRow 769 s2Step205EntryGFresh ++ (growRow 770 s2Step205EntryFvFresh ++ (growRow 771 s2Step205EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step205EntryBank_rows]
  rfl

private def s2Step205ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<166) ∨ (167≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<166) ∨ (167≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205ExitFBefore : Arena := s2Step205ExitGAfter

private def s2Step205ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 816],768⟩

private def s2Step205ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 822, 781],770⟩

private def s2Step205ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 789],769⟩

private def s2Step205ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 841],771⟩

private theorem s2Step205ExitBank_incomingDistinct : ([s2Step205ExitGRow,s2Step205ExitFRow,s2Step205ExitFvRow,s2Step205ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step205ExitF_Incoming : rowsOwned s2Step205ExitFBefore [s2Step205ExitFRow,s2Step205ExitFvRow,s2Step205ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step205ExitGRow,s2Step205ExitFRow,s2Step205ExitFvRow,s2Step205ExitGvRow] 1 s2Step205ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step205ExitFBefore (fun q => (0≤q ∧ q<166) ∨ (167≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step205ExitBank_outgoingOwned : rowsOwned s2Step205ExitGvAfter [s2Step205ExitGOut,s2Step205ExitFOut,s2Step205ExitFvOut,s2Step205ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step205ExitGvAfter (fun q => (0≤q ∧ q<166) ∨ (167≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step205ExitF_Outgoing : rowsOwned s2Step205ExitGvAfter [s2Step205ExitFOut,s2Step205ExitFvOut,s2Step205ExitGvOut] :=
  hmrRows_owned_drop s2Step205ExitGvAfter [s2Step205ExitGOut,s2Step205ExitFOut,s2Step205ExitFvOut,s2Step205ExitGvOut] 1 s2Step205ExitBank_outgoingOwned

private theorem s2Step205ExitF_distinct : (s2Step205ExitFRow.sign::s2Step205ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step205ExitF_owned : (s2Step205ExitFRow.sign::s2Step205ExitFRow.payload).toFinset⊆s2Step205ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step205ExitFBefore (fun q => (0≤q ∧ q<166) ∨ (167≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205ExitF_retired : s2Step205ExitFBefore.retireSet s2Step205ExitFExtra.toFinset=s2Step205ExitFAfter := by
  unfold Arena.retireSet s2Step205ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step205ExitFBefore,s2Step205ExitGAfter,s2Step205ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step205ExitF_checked : planRowResizeLog s2Step205ExitFBefore s2Step205ExitFRow 167 []=
    some (s2Step205ExitFAfter,s2Step205ExitFOut,shrinkRow 768 s2Step205ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step205ExitFBefore s2Step205ExitFRow 167 s2Step205ExitF_distinct s2Step205ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step205ExitFRow.payload.take 167) s2Step205ExitFRow.sign=s2Step205ExitFOut := by decide +kernel
  have hi : s2Step205ExitFRow.payload.drop 167=s2Step205ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step205ExitF_retired] at result
  exact result

private def s2Step205ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<166) ∨ (167≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205ExitFvBefore : Arena := s2Step205ExitFAfter

private theorem s2Step205ExitFv_Incoming : rowsOwned s2Step205ExitFvBefore [s2Step205ExitFvRow,s2Step205ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step205ExitGRow,s2Step205ExitFRow,s2Step205ExitFvRow,s2Step205ExitGvRow] 2 s2Step205ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step205ExitFvBefore (fun q => (0≤q ∧ q<166) ∨ (167≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step205ExitFv_Outgoing : rowsOwned s2Step205ExitGvAfter [s2Step205ExitFvOut,s2Step205ExitGvOut] :=
  hmrRows_owned_drop s2Step205ExitGvAfter [s2Step205ExitGOut,s2Step205ExitFOut,s2Step205ExitFvOut,s2Step205ExitGvOut] 2 s2Step205ExitBank_outgoingOwned

private theorem s2Step205ExitFv_distinct : (s2Step205ExitFvRow.sign::s2Step205ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step205ExitFv_owned : (s2Step205ExitFvRow.sign::s2Step205ExitFvRow.payload).toFinset⊆s2Step205ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step205ExitFvBefore (fun q => (0≤q ∧ q<166) ∨ (167≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205ExitFv_retired : s2Step205ExitFvBefore.retireSet s2Step205ExitFvExtra.toFinset=s2Step205ExitFvAfter := by
  unfold Arena.retireSet s2Step205ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step205ExitFvBefore,s2Step205ExitFAfter,s2Step205ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step205ExitFv_checked : planRowResizeLog s2Step205ExitFvBefore s2Step205ExitFvRow 117 []=
    some (s2Step205ExitFvAfter,s2Step205ExitFvOut,shrinkRow 770 s2Step205ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step205ExitFvBefore s2Step205ExitFvRow 117 s2Step205ExitFv_distinct s2Step205ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step205ExitFvRow.payload.take 117) s2Step205ExitFvRow.sign=s2Step205ExitFvOut := by decide +kernel
  have hi : s2Step205ExitFvRow.payload.drop 117=s2Step205ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step205ExitFv_retired] at result
  exact result

private def s2Step205ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step205ExitG_Incoming : rowsOwned s2Step205ExitGBefore [s2Step205ExitGRow,s2Step205ExitFRow,s2Step205ExitFvRow,s2Step205ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step205ExitGRow,s2Step205ExitFRow,s2Step205ExitFvRow,s2Step205ExitGvRow] 0 s2Step205ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step205ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step205ExitG_Outgoing : rowsOwned s2Step205ExitGvAfter [s2Step205ExitGOut,s2Step205ExitFOut,s2Step205ExitFvOut,s2Step205ExitGvOut] :=
  hmrRows_owned_drop s2Step205ExitGvAfter [s2Step205ExitGOut,s2Step205ExitFOut,s2Step205ExitFvOut,s2Step205ExitGvOut] 0 s2Step205ExitBank_outgoingOwned

private theorem s2Step205ExitG_distinct : (s2Step205ExitGRow.sign::s2Step205ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step205ExitG_owned : (s2Step205ExitGRow.sign::s2Step205ExitGRow.payload).toFinset⊆s2Step205ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step205ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205ExitG_retired : s2Step205ExitGBefore.retireSet s2Step205ExitGExtra.toFinset=s2Step205ExitGAfter := by
  unfold Arena.retireSet s2Step205ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step205ExitGBefore,s2Step205ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step205ExitG_checked : planRowResizeLog s2Step205ExitGBefore s2Step205ExitGRow 166 []=
    some (s2Step205ExitGAfter,s2Step205ExitGOut,shrinkRow 769 s2Step205ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step205ExitGBefore s2Step205ExitGRow 166 s2Step205ExitG_distinct s2Step205ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step205ExitGRow.payload.take 166) s2Step205ExitGRow.sign=s2Step205ExitGOut := by decide +kernel
  have hi : s2Step205ExitGRow.payload.drop 166=s2Step205ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step205ExitG_retired] at result
  exact result

private def s2Step205ExitGvBefore : Arena := s2Step205ExitFvAfter

private theorem s2Step205ExitGv_Incoming : rowsOwned s2Step205ExitGvBefore [s2Step205ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step205ExitGRow,s2Step205ExitFRow,s2Step205ExitFvRow,s2Step205ExitGvRow] 3 s2Step205ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step205ExitGvBefore (fun q => (0≤q ∧ q<166) ∨ (167≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step205ExitGv_Outgoing : rowsOwned s2Step205ExitGvAfter [s2Step205ExitGvOut] :=
  hmrRows_owned_drop s2Step205ExitGvAfter [s2Step205ExitGOut,s2Step205ExitFOut,s2Step205ExitFvOut,s2Step205ExitGvOut] 3 s2Step205ExitBank_outgoingOwned

private theorem s2Step205ExitGv_distinct : (s2Step205ExitGvRow.sign::s2Step205ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step205ExitGv_owned : (s2Step205ExitGvRow.sign::s2Step205ExitGvRow.payload).toFinset⊆s2Step205ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step205ExitGvBefore (fun q => (0≤q ∧ q<166) ∨ (167≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205ExitGv_retired : s2Step205ExitGvBefore.retireSet s2Step205ExitGvExtra.toFinset=s2Step205ExitGvAfter := by
  unfold Arena.retireSet s2Step205ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step205ExitGvBefore,s2Step205ExitFvAfter,s2Step205ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step205ExitGv_checked : planRowResizeLog s2Step205ExitGvBefore s2Step205ExitGvRow 118 []=
    some (s2Step205ExitGvAfter,s2Step205ExitGvOut,shrinkRow 771 s2Step205ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step205ExitGvBefore s2Step205ExitGvRow 118 s2Step205ExitGv_distinct s2Step205ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step205ExitGvRow.payload.take 118) s2Step205ExitGvRow.sign=s2Step205ExitGvOut := by decide +kernel
  have hi : s2Step205ExitGvRow.payload.drop 118=s2Step205ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step205ExitGv_retired] at result
  exact result

private theorem s2Step205ExitBank_rows : planWindowRowsLog s2Step205ExitGBefore [(s2Step205ExitGRow,166),(s2Step205ExitFRow,167),(s2Step205ExitFvRow,117),(s2Step205ExitGvRow,118)] [[],[],[],[]]=
    some (s2Step205ExitGvAfter,[s2Step205ExitGOut,s2Step205ExitFOut,s2Step205ExitFvOut,s2Step205ExitGvOut],(shrinkRow 769 s2Step205ExitGExtra ++ (shrinkRow 768 s2Step205ExitFExtra ++ (shrinkRow 770 s2Step205ExitFvExtra ++ (shrinkRow 771 s2Step205ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step205ExitGvAfter [] []=some (s2Step205ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step205ExitGvBefore s2Step205ExitGvAfter s2Step205ExitGvAfter
    s2Step205ExitGvRow s2Step205ExitGvOut 118 [] [] [] []
    (shrinkRow 771 s2Step205ExitGvExtra) ([]) s2Step205ExitGv_Incoming s2Step205ExitGv_checked h4 s2Step205ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step205ExitFvBefore s2Step205ExitFvAfter s2Step205ExitGvAfter
    s2Step205ExitFvRow s2Step205ExitFvOut 117 [] [(s2Step205ExitGvRow,118)] [[]] [s2Step205ExitGvOut]
    (shrinkRow 770 s2Step205ExitFvExtra) ((shrinkRow 771 s2Step205ExitGvExtra ++ [])) s2Step205ExitFv_Incoming s2Step205ExitFv_checked h3 s2Step205ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step205ExitFBefore s2Step205ExitFAfter s2Step205ExitGvAfter
    s2Step205ExitFRow s2Step205ExitFOut 167 [] [(s2Step205ExitFvRow,117),(s2Step205ExitGvRow,118)] [[],[]] [s2Step205ExitFvOut,s2Step205ExitGvOut]
    (shrinkRow 768 s2Step205ExitFExtra) ((shrinkRow 770 s2Step205ExitFvExtra ++ (shrinkRow 771 s2Step205ExitGvExtra ++ []))) s2Step205ExitF_Incoming s2Step205ExitF_checked h2 s2Step205ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step205ExitGBefore s2Step205ExitGAfter s2Step205ExitGvAfter
    s2Step205ExitGRow s2Step205ExitGOut 166 [] [(s2Step205ExitFRow,167),(s2Step205ExitFvRow,117),(s2Step205ExitGvRow,118)] [[],[],[]] [s2Step205ExitFOut,s2Step205ExitFvOut,s2Step205ExitGvOut]
    (shrinkRow 769 s2Step205ExitGExtra) ((shrinkRow 768 s2Step205ExitFExtra ++ (shrinkRow 770 s2Step205ExitFvExtra ++ (shrinkRow 771 s2Step205ExitGvExtra ++ [])))) s2Step205ExitG_Incoming s2Step205ExitG_checked h1 s2Step205ExitG_Outgoing
  exact h0

private theorem s2Step205ExitBank_checked : compileHmrBankResizeLog .exit s2Step205ExitGBefore ⟨s2Step205ExitFRow,s2Step205ExitGRow,s2Step205ExitFvRow,s2Step205ExitGvRow⟩ ⟨167,166,117,118⟩ [[],[],[],[]]=
    some (s2Step205ExitGvAfter,⟨s2Step205ExitFOut,s2Step205ExitGOut,s2Step205ExitFvOut,s2Step205ExitGvOut⟩,(shrinkRow 769 s2Step205ExitGExtra ++ (shrinkRow 768 s2Step205ExitFExtra ++ (shrinkRow 770 s2Step205ExitFvExtra ++ (shrinkRow 771 s2Step205ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step205ExitBank_rows]
  rfl

private theorem s2Step205Add0_apart : Disjoint s2Step205Add0Arena.live s2Step205Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step205Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205Add0_card : s2Step205Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step205Add0_borrowed : s2Step205Add0Arena.checkBorrow (hmrHybridCount s2Step205Add0Arena s2Step205Add0B.length) s2Step205Add0Work=some s2Step205Add0During := by
  have len : s2Step205Add0Work.length=hmrHybridCount s2Step205Add0Arena s2Step205Add0B.length := by
    rw [hmrHybridCount,s2Step205Add0_card]
    decide +kernel
  have nd : s2Step205Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step205Add0Arena s2Step205Add0During s2Step205Add0Work.toFinset s2Step205Add0_bounded s2Step205Add0_apart rfl

private theorem s2Step205Add0_distinct : (814::845::882::(s2Step205Add0A++s2Step205Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step205Add0_owned : (814::845::882::(s2Step205Add0A++s2Step205Add0B)).toFinset⊆s2Step205Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step205Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205Add0_checked : compileHmrHybridCinLog s2Step205Add0Arena 845 814 882 s2Step205Add0A s2Step205Add0B s2Step205Add0Work=some s2Step205Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step205Add0Arena s2Step205Add0During 845 814 882 s2Step205Add0A s2Step205Add0B s2Step205Add0Work
    (by decide +kernel) (by decide +kernel) s2Step205Add0_distinct
    (fun q hq => s2Step205Add0_owned (List.mem_toFinset.mpr hq)) s2Step205Add0_borrowed

private theorem s2Step205Add1_apart : Disjoint s2Step205Add1Arena.live s2Step205Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step205Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205Add1_card : s2Step205Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step205Add1_borrowed : s2Step205Add1Arena.checkBorrow (hmrHybridCount s2Step205Add1Arena s2Step205Add1B.length) s2Step205Add1Work=some s2Step205Add1During := by
  have len : s2Step205Add1Work.length=hmrHybridCount s2Step205Add1Arena s2Step205Add1B.length := by
    rw [hmrHybridCount,s2Step205Add1_card]
    decide +kernel
  have nd : s2Step205Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step205Add1Arena s2Step205Add1During s2Step205Add1Work.toFinset s2Step205Add1_bounded s2Step205Add1_apart rfl

private theorem s2Step205Add1_distinct : (814::845::882::(s2Step205Add1A++s2Step205Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step205Add1_owned : (814::845::882::(s2Step205Add1A++s2Step205Add1B)).toFinset⊆s2Step205Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step205Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205Add1_checked : compileHmrHybridCinLog s2Step205Add1Arena 845 814 882 s2Step205Add1A s2Step205Add1B s2Step205Add1Work=some s2Step205Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step205Add1Arena s2Step205Add1During 845 814 882 s2Step205Add1A s2Step205Add1B s2Step205Add1Work
    (by decide +kernel) (by decide +kernel) s2Step205Add1_distinct
    (fun q hq => s2Step205Add1_owned (List.mem_toFinset.mpr hq)) s2Step205Add1_borrowed

private theorem s2Step205F4_apart : Disjoint (s2Step205Add0A++s2Step205Add0B).toFinset (s2Step205Add1A++s2Step205Add1B).toFinset := by
  have nd : ((s2Step205Add0A++s2Step205Add0B)++(s2Step205Add1A++s2Step205Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step205F4_carry : s2Step205F4FlagArena.checkBorrow 1 [882]=some s2Step205Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step205F4FlagArena,s2Step205HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step205F4FlagArena,s2Step205HeadFvAfter,s2Step205Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step205F4_distinct : (879::845::814::882::((s2Step205Add0A++s2Step205Add1A)++(s2Step205Add0B++s2Step205Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step205F4_flag : s2Step205HeadFvAfter.checkBorrow 1 [814]=some s2Step205F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step205HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step205F4_owned : (879::845::((s2Step205Add0A++s2Step205Add1A)++(s2Step205Add0B++s2Step205Add1B))).toFinset⊆s2Step205HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step205HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205F4_checked : compileHmrHybridF4Log s2Step205HeadFvAfter 879 845 s2Step205Add0A s2Step205Add0B s2Step205Add1A s2Step205Add1B [814] [882] s2Step205Add0Work s2Step205Add1Work=some s2Step205F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step205HeadFvAfter s2Step205F4FlagArena s2Step205Add0Arena s2Step205Add0During s2Step205Add1During 879 845
    s2Step205Add0A s2Step205Add0B s2Step205Add1A s2Step205Add1B [814] [882] s2Step205Add0Work s2Step205Add1Work
    (fun q hq => s2Step205F4_owned (List.mem_toFinset.mpr hq)) s2Step205F4_flag s2Step205F4_carry
    s2Step205F4_distinct s2Step205F4_apart s2Step205Add0_checked s2Step205Add1_checked

private theorem s2Step205Front_branch : s2Step205FrontSigmaArena.checkBorrow 1 [845]=some s2Step205HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step205FrontSigmaArena,s2Step205EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step205FrontSigmaArena,s2Step205EntryGvAfter,s2Step205HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step205Front_entry : HmrFrontEntryValid s2Step205EntryFBefore s2Step205FrontBank 167 118 ⟨167,166,117,118⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step205FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step205EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step205EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (846≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step205FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step205Front_sigma : s2Step205EntryGvAfter.checkBorrow 1 [879]=some s2Step205FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step205EntryGvAfter,arenaWires]
  · rfl

private def s2Step205HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205HeadFBefore : Arena := s2Step205HeadGAfter

private def s2Step205HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678],768⟩

private def s2Step205HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 822],770⟩

private def s2Step205HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166],769⟩

private def s2Step205HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844],771⟩

private theorem s2Step205HeadBank_incomingDistinct : ([s2Step205HeadGRow,s2Step205HeadFRow,s2Step205HeadGvRow,s2Step205HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step205HeadF_Incoming : rowsOwned s2Step205HeadFBefore [s2Step205HeadFRow,s2Step205HeadGvRow,s2Step205HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step205HeadGRow,s2Step205HeadFRow,s2Step205HeadGvRow,s2Step205HeadFvRow] 1 s2Step205HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step205HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step205HeadBank_outgoingOwned : rowsOwned s2Step205HeadFvAfter [s2Step205HeadGOut,s2Step205HeadFOut,s2Step205HeadGvOut,s2Step205HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step205HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step205HeadF_Outgoing : rowsOwned s2Step205HeadFvAfter [s2Step205HeadFOut,s2Step205HeadGvOut,s2Step205HeadFvOut] :=
  hmrRows_owned_drop s2Step205HeadFvAfter [s2Step205HeadGOut,s2Step205HeadFOut,s2Step205HeadGvOut,s2Step205HeadFvOut] 1 s2Step205HeadBank_outgoingOwned

private theorem s2Step205HeadF_distinct : (s2Step205HeadFRow.sign::s2Step205HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step205HeadF_owned : (s2Step205HeadFRow.sign::s2Step205HeadFRow.payload).toFinset⊆s2Step205HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step205HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205HeadF_reserved : s2Step205HeadFBefore.reserve s2Step205HeadFFresh.toFinset=some s2Step205HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step205HeadFFresh,arenaWires]
  · norm_num [s2Step205HeadFBefore,s2Step205HeadGAfter,s2Step205HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step205HeadFAfter,s2Step205HeadFBefore,s2Step205HeadGAfter,s2Step205HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step205HeadF_checked : planRowResizeLog s2Step205HeadFBefore s2Step205HeadFRow 168 s2Step205HeadFFresh=
    some (s2Step205HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 816],768⟩,growRow 768 s2Step205HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step205HeadFBefore s2Step205HeadFAfter s2Step205HeadFRow 168 s2Step205HeadFFresh
    s2Step205HeadF_distinct s2Step205HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step205HeadF_reserved
  have rowEq : WindowRow.mk (s2Step205HeadFRow.payload++s2Step205HeadFFresh) s2Step205HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 816],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step205HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step205HeadFvBefore : Arena := s2Step205HeadGvAfter

private theorem s2Step205HeadFv_Incoming : rowsOwned s2Step205HeadFvBefore [s2Step205HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step205HeadGRow,s2Step205HeadFRow,s2Step205HeadGvRow,s2Step205HeadFvRow] 3 s2Step205HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step205HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step205HeadFv_Outgoing : rowsOwned s2Step205HeadFvAfter [s2Step205HeadFvOut] :=
  hmrRows_owned_drop s2Step205HeadFvAfter [s2Step205HeadGOut,s2Step205HeadFOut,s2Step205HeadGvOut,s2Step205HeadFvOut] 3 s2Step205HeadBank_outgoingOwned

private theorem s2Step205HeadFv_distinct : (s2Step205HeadFvRow.sign::s2Step205HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step205HeadFv_owned : (s2Step205HeadFvRow.sign::s2Step205HeadFvRow.payload).toFinset⊆s2Step205HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step205HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205HeadFv_reserved : s2Step205HeadFvBefore.reserve s2Step205HeadFvFresh.toFinset=some s2Step205HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step205HeadFvFresh,arenaWires]
  · norm_num [s2Step205HeadFvBefore,s2Step205HeadGvAfter,s2Step205HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step205HeadFvAfter,s2Step205HeadFvBefore,s2Step205HeadGvAfter,s2Step205HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step205HeadFv_checked : planRowResizeLog s2Step205HeadFvBefore s2Step205HeadFvRow 119 s2Step205HeadFvFresh=
    some (s2Step205HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 822, 781],770⟩,growRow 770 s2Step205HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step205HeadFvBefore s2Step205HeadFvAfter s2Step205HeadFvRow 119 s2Step205HeadFvFresh
    s2Step205HeadFv_distinct s2Step205HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step205HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step205HeadFvRow.payload++s2Step205HeadFvFresh) s2Step205HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 822, 781],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step205HeadG_Incoming : rowsOwned s2Step205HeadGBefore [s2Step205HeadGRow,s2Step205HeadFRow,s2Step205HeadGvRow,s2Step205HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step205HeadGRow,s2Step205HeadFRow,s2Step205HeadGvRow,s2Step205HeadFvRow] 0 s2Step205HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step205HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step205HeadG_Outgoing : rowsOwned s2Step205HeadFvAfter [s2Step205HeadGOut,s2Step205HeadFOut,s2Step205HeadGvOut,s2Step205HeadFvOut] :=
  hmrRows_owned_drop s2Step205HeadFvAfter [s2Step205HeadGOut,s2Step205HeadFOut,s2Step205HeadGvOut,s2Step205HeadFvOut] 0 s2Step205HeadBank_outgoingOwned

private theorem s2Step205HeadG_distinct : (s2Step205HeadGRow.sign::s2Step205HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step205HeadG_owned : (s2Step205HeadGRow.sign::s2Step205HeadGRow.payload).toFinset⊆s2Step205HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step205HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205HeadG_reserved : s2Step205HeadGBefore.reserve s2Step205HeadGFresh.toFinset=some s2Step205HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step205HeadGFresh,arenaWires]
  · norm_num [s2Step205HeadGBefore,s2Step205HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step205HeadGAfter,s2Step205HeadGBefore,s2Step205HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step205HeadG_checked : planRowResizeLog s2Step205HeadGBefore s2Step205HeadGRow 168 s2Step205HeadGFresh=
    some (s2Step205HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 789],769⟩,growRow 769 s2Step205HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step205HeadGBefore s2Step205HeadGAfter s2Step205HeadGRow 168 s2Step205HeadGFresh
    s2Step205HeadG_distinct s2Step205HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step205HeadG_reserved
  have rowEq : WindowRow.mk (s2Step205HeadGRow.payload++s2Step205HeadGFresh) s2Step205HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 789],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step205HeadGvBefore : Arena := s2Step205HeadFAfter

private theorem s2Step205HeadGv_Incoming : rowsOwned s2Step205HeadGvBefore [s2Step205HeadGvRow,s2Step205HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step205HeadGRow,s2Step205HeadFRow,s2Step205HeadGvRow,s2Step205HeadFvRow] 2 s2Step205HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step205HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step205HeadGv_Outgoing : rowsOwned s2Step205HeadFvAfter [s2Step205HeadGvOut,s2Step205HeadFvOut] :=
  hmrRows_owned_drop s2Step205HeadFvAfter [s2Step205HeadGOut,s2Step205HeadFOut,s2Step205HeadGvOut,s2Step205HeadFvOut] 2 s2Step205HeadBank_outgoingOwned

private theorem s2Step205HeadGv_distinct : (s2Step205HeadGvRow.sign::s2Step205HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step205HeadGv_owned : (s2Step205HeadGvRow.sign::s2Step205HeadGvRow.payload).toFinset⊆s2Step205HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step205HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step205HeadGv_reserved : s2Step205HeadGvBefore.reserve s2Step205HeadGvFresh.toFinset=some s2Step205HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step205HeadGvFresh,arenaWires]
  · norm_num [s2Step205HeadGvBefore,s2Step205HeadFAfter,s2Step205HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step205HeadGvAfter,s2Step205HeadGvBefore,s2Step205HeadFAfter,s2Step205HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step205HeadGv_checked : planRowResizeLog s2Step205HeadGvBefore s2Step205HeadGvRow 119 s2Step205HeadGvFresh=
    some (s2Step205HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 841],771⟩,growRow 771 s2Step205HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step205HeadGvBefore s2Step205HeadGvAfter s2Step205HeadGvRow 119 s2Step205HeadGvFresh
    s2Step205HeadGv_distinct s2Step205HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step205HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step205HeadGvRow.payload++s2Step205HeadGvFresh) s2Step205HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 841],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step205HeadBank_rows : planWindowRowsLog s2Step205HeadGBefore [(s2Step205HeadGRow,168),(s2Step205HeadFRow,168),(s2Step205HeadGvRow,119),(s2Step205HeadFvRow,119)] [s2Step205HeadGFresh,s2Step205HeadFFresh,s2Step205HeadGvFresh,s2Step205HeadFvFresh]=
    some (s2Step205HeadFvAfter,[s2Step205HeadGOut,s2Step205HeadFOut,s2Step205HeadGvOut,s2Step205HeadFvOut],(growRow 769 s2Step205HeadGFresh ++ (growRow 768 s2Step205HeadFFresh ++ (growRow 771 s2Step205HeadGvFresh ++ (growRow 770 s2Step205HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step205HeadFvAfter [] []=some (s2Step205HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step205HeadFvBefore s2Step205HeadFvAfter s2Step205HeadFvAfter
    s2Step205HeadFvRow s2Step205HeadFvOut 119 s2Step205HeadFvFresh [] [] []
    (growRow 770 s2Step205HeadFvFresh) ([]) s2Step205HeadFv_Incoming s2Step205HeadFv_checked h4 s2Step205HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step205HeadGvBefore s2Step205HeadGvAfter s2Step205HeadFvAfter
    s2Step205HeadGvRow s2Step205HeadGvOut 119 s2Step205HeadGvFresh [(s2Step205HeadFvRow,119)] [s2Step205HeadFvFresh] [s2Step205HeadFvOut]
    (growRow 771 s2Step205HeadGvFresh) ((growRow 770 s2Step205HeadFvFresh ++ [])) s2Step205HeadGv_Incoming s2Step205HeadGv_checked h3 s2Step205HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step205HeadFBefore s2Step205HeadFAfter s2Step205HeadFvAfter
    s2Step205HeadFRow s2Step205HeadFOut 168 s2Step205HeadFFresh [(s2Step205HeadGvRow,119),(s2Step205HeadFvRow,119)] [s2Step205HeadGvFresh,s2Step205HeadFvFresh] [s2Step205HeadGvOut,s2Step205HeadFvOut]
    (growRow 768 s2Step205HeadFFresh) ((growRow 771 s2Step205HeadGvFresh ++ (growRow 770 s2Step205HeadFvFresh ++ []))) s2Step205HeadF_Incoming s2Step205HeadF_checked h2 s2Step205HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step205HeadGBefore s2Step205HeadGAfter s2Step205HeadFvAfter
    s2Step205HeadGRow s2Step205HeadGOut 168 s2Step205HeadGFresh [(s2Step205HeadFRow,168),(s2Step205HeadGvRow,119),(s2Step205HeadFvRow,119)] [s2Step205HeadFFresh,s2Step205HeadGvFresh,s2Step205HeadFvFresh] [s2Step205HeadFOut,s2Step205HeadGvOut,s2Step205HeadFvOut]
    (growRow 769 s2Step205HeadGFresh) ((growRow 768 s2Step205HeadFFresh ++ (growRow 771 s2Step205HeadGvFresh ++ (growRow 770 s2Step205HeadFvFresh ++ [])))) s2Step205HeadG_Incoming s2Step205HeadG_checked h1 s2Step205HeadG_Outgoing
  exact h0

private theorem s2Step205HeadBank_checked : compileHmrBankResizeLog .headroom s2Step205HeadGBefore ⟨s2Step205HeadFRow,s2Step205HeadGRow,s2Step205HeadFvRow,s2Step205HeadGvRow⟩ ⟨168,168,119,119⟩ [s2Step205HeadGFresh,s2Step205HeadFFresh,s2Step205HeadGvFresh,s2Step205HeadFvFresh]=
    some (s2Step205HeadFvAfter,⟨s2Step205HeadFOut,s2Step205HeadGOut,s2Step205HeadFvOut,s2Step205HeadGvOut⟩,(growRow 769 s2Step205HeadGFresh ++ (growRow 768 s2Step205HeadFFresh ++ (growRow 771 s2Step205HeadGvFresh ++ (growRow 770 s2Step205HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step205HeadBank_rows]
  rfl

private theorem s2Step205Front_checked : compileHmrSourceFrontLog s2Step205EntryFBefore s2Step205FrontBank 167 118 ⟨167,166,117,118⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step205FrontLog=some s2Step205FrontPlan := by
  have pairEq : s2Step205FrontPair=⟨s2Step205HeadFRow,s2Step205HeadGRow,s2Step205HeadFvRow,s2Step205HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step205FrontHead=⟨s2Step205ExitFRow,s2Step205ExitGRow,s2Step205ExitFvRow,s2Step205ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step205Add0A=s2Step205FrontHead.f.wires := by decide +kernel
  have gEq : s2Step205Add0B=s2Step205FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step205Add1A=s2Step205FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step205Add1B=s2Step205FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step205EntryFBefore s2Step205FrontBank 167 118 ⟨167,166,117,118⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step205FrontLog s2Step205FrontPlan
  · exact s2Step205Front_entry
  · exact s2Step205EntryBank_checked
  · exact s2Step205Front_sigma
  · rfl
  · exact s2Step205Front_branch
  · rfl
  · simpa only [s2Step205FrontPlan,pairEq] using s2Step205HeadBank_checked
  · simpa only [s2Step205FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step205F4_checked
  · exact s2Step205Counter_checked
  · rfl
  · simpa only [s2Step205FrontPlan,headEq] using s2Step205ExitBank_checked

private theorem s2Step205Complete_explicit_checked : compileHmrEarlyStepLog s2Step205EntryFBefore s2Step205FrontBank 167 118 ⟨167,166,117,118⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step205CompleteLog=some s2Step205CompletePlan := by
  let Q := s2Step205EarlyControlPlan
  have hq := s2Step205EarlyControl_plan_checked
  have fv1 : s2Step205CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step205CompleteOut.fv.payload[2]?.getD s2Step205CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step205CompleteOut.fv.payload[3]?.getD s2Step205CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step205CompleteOut.fv.payload[4]?.getD s2Step205CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step205EntryFBefore s2Step205EarlyControlArena s2Step205FrontBank 167 118 ⟨167,166,117,118⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step205CompleteLog s2Step205FrontPlan Q
    s2Step205Front_checked s2Step205Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step205Complete_owned s2Step205Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step205EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 879 s2Step205CompleteOut.fv.second (s2Step205CompleteOut.fv.payload[2]?.getD s2Step205CompleteOut.fv.sign) (s2Step205CompleteOut.fv.payload[3]?.getD s2Step205CompleteOut.fv.sign) (s2Step205CompleteOut.fv.payload[4]?.getD s2Step205CompleteOut.fv.sign) 845 47 s2Step205EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep205Arena : Arena := s2Step205EntryFBefore
def s2PrivateStep205Bank : WindowBank := s2Step205FrontBank
def s2PrivateStep205Spec : HmrSourceWalkStepLog := ⟨167,118,⟨167,166,117,118⟩,47,.early s2Step205CompleteLog⟩
def s2PrivateStep205Plan : HmrSourceStepPlan := .early s2Step205CompletePlan
theorem s2PrivateStep205_source : s2PrivateStep205Spec=s2ObservedLogs192[13] := rfl
theorem s2PrivateStep205_checked : compileHmrSourceStepLog s2PrivateStep205Arena s2PrivateStep205Bank
    s2PrivateStep205Spec.fgWidth s2PrivateStep205Spec.vWidth s2PrivateStep205Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 205 s2PrivateStep205Spec.need none s2PrivateStep205Spec.log=some s2PrivateStep205Plan := by
  change compileHmrSourceStepLog s2Step205EntryFBefore s2Step205FrontBank 167 118 ⟨167,166,117,118⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 205 47 none (.early s2Step205CompleteLog)=some (.early s2Step205CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 205<498)]
  rw [s2Step205Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
