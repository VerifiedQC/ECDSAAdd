import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep200
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

private def s2Step202CompleteMoves : List (Wire × Wire) := [(841,168)]

private def s2Step202EarlyControlLog : HmrEarlyControlLog := ⟨[841, 822, 789, 781, 816],[814],[882],[826, 842, 885, 891, 894, 895],[]⟩

private def s2Step202FrontLog : HmrFrontAllocationLog := ⟨⟨[[816], [], [788, 789], []],[[882], [814], [822], [781]],[[], [], [], []]⟩,[879],[877],[826],[842],[885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891]⟩

private def s2Step202CompleteLog : HmrEarlyStepLog := ⟨s2Step202FrontLog,s2Step202CompleteMoves,s2Step202EarlyControlLog⟩

private def s2Step202ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679],768⟩

private def s2Step202ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788],770⟩

private def s2Step202ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167],769⟩

private def s2Step202ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩

private def s2Step202FrontOut : WindowBank := ⟨s2Step202ExitFOut,s2Step202ExitGOut,s2Step202ExitFvOut,s2Step202ExitGvOut⟩

private def s2Step202CompleteOut : WindowBank := s2Step202FrontOut.repacked s2Step202CompleteMoves

private def s2Step202EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step202EarlyControlPositiveArena,[814],s2Step202EarlyControlEqualityArena,[882],⟨⟨879,false⟩,[⟨⟨814,false⟩,882⟩]⟩⟩

private def s2Step202EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,841⟩,⟨⟨774,false⟩,822⟩,⟨⟨775,false⟩,789⟩,⟨⟨776,false⟩,781⟩,⟨⟨777,false⟩,816⟩]⟩

private def s2Step202EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step202EarlyControlZeroArena,s2Step202EarlyControlZeroPlan,s2Step202EarlyControlClassPlan,s2Step202EarlyControlFlagArena,s2Step202EarlyControlFittedArena,s2Step202EarlyControlHistoryArena,s2Step202EarlyControlSigmaArena,s2Step202EarlyControlOutputArena,s2Step202EarlyControlLog⟩

private def s2Step202CounterWork : List Wire := [826, 842, 885, 891]

private theorem s2Step202Counter_bounded : s2Step202CounterWork.toFinset⊆arenaWires := by norm_num [s2Step202CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step202HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202CounterDuring : Arena := ⟨s2Step202HeadFvAfter.live∪s2Step202CounterWork.toFinset,Finset.union_subset s2Step202HeadFvAfter.bounded s2Step202Counter_bounded⟩

private def s2Step202EntryFFresh : List Wire := [816]

private def s2Step202EntryFvFresh : List Wire := [788, 789]

private def s2Step202EntryGFresh : List Wire := []

private def s2Step202EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202EntryGvAfter : Arena := s2Step202EntryFvAfter

private def s2Step202EntryGvFresh : List Wire := []

private def s2Step202ExitFExtra : List Wire := [816, 814]

private def s2Step202ExitFvExtra : List Wire := [789, 781]

private def s2Step202ExitGExtra : List Wire := [168, 882]

private def s2Step202ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202ExitGvExtra : List Wire := [822]

private def s2Step202Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202Add0Work : List Wire := [885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step202Add0_bounded : s2Step202Add0Work.toFinset⊆arenaWires := by
  have h : s2Step202Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step202Add0During : Arena := ⟨s2Step202Add0Arena.live∪s2Step202Add0Work.toFinset,Finset.union_subset s2Step202Add0Arena.bounded s2Step202Add0_bounded⟩

private def s2Step202Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202Add1Work : List Wire := [885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step202Add1_bounded : s2Step202Add1Work.toFinset⊆arenaWires := by
  have h : s2Step202Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step202Add1During : Arena := ⟨s2Step202Add1Arena.live∪s2Step202Add1Work.toFinset,Finset.union_subset s2Step202Add1Arena.bounded s2Step202Add1_bounded⟩

private def s2Step202F4FlagArena : Arena := ⟨s2Step202HeadFvAfter.live∪{826},Finset.union_subset s2Step202HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step202F4Plan : HmrHybridF4Plan := ⟨s2Step202F4FlagArena,[826],s2Step202Add0Arena,[842],s2Step202Add0During,s2Step202Add0Work,s2Step202Add1During,s2Step202Add1Work⟩

private def s2Step202HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 816, 814],768⟩

private def s2Step202HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 789, 781],770⟩

private def s2Step202HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 882],769⟩

private def s2Step202HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 822],771⟩

private def s2Step202FrontHead : WindowBank := ⟨s2Step202HeadFOut,s2Step202HeadGOut,s2Step202HeadFvOut,s2Step202HeadGvOut⟩

private def s2Step202EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 816],768⟩

private def s2Step202EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 789],770⟩

private def s2Step202EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168],769⟩

private def s2Step202EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩

private def s2Step202FrontPair : WindowBank := ⟨s2Step202EntryFOut,s2Step202EntryGOut,s2Step202EntryFvOut,s2Step202EntryGvOut⟩

private def s2Step202FrontSigmaArena : Arena := ⟨s2Step202EntryGvAfter.live∪{879},Finset.union_subset s2Step202EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step202HeadFFresh : List Wire := [814]

private def s2Step202HeadFvFresh : List Wire := [781]

private def s2Step202HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202HeadGFresh : List Wire := [882]

private def s2Step202HeadGvFresh : List Wire := [822]

private def s2Step202FrontPlan : HmrSourceFront := ⟨s2Step202EntryGvAfter,s2Step202FrontPair,(growRow 768 s2Step202EntryFFresh ++ (growRow 769 s2Step202EntryGFresh ++ (growRow 770 s2Step202EntryFvFresh ++ (growRow 771 s2Step202EntryGvFresh ++ [])))),s2Step202FrontSigmaArena,[879],s2Step202HeadGBefore,[877],
  s2Step202HeadFvAfter,s2Step202FrontHead,(growRow 769 s2Step202HeadGFresh ++ (growRow 768 s2Step202HeadFFresh ++ (growRow 771 s2Step202HeadGvFresh ++ (growRow 770 s2Step202HeadFvFresh ++ [])))),s2Step202F4Plan,s2Step202CounterDuring,s2Step202CounterWork,s2Step202ExitGvAfter,s2Step202FrontOut,(shrinkRow 769 s2Step202ExitGExtra ++ (shrinkRow 768 s2Step202ExitFExtra ++ (shrinkRow 770 s2Step202ExitFvExtra ++ (shrinkRow 771 s2Step202ExitGvExtra ++ []))))⟩

private def s2Step202CompletePlan : HmrEarlyStepPlan := ⟨s2Step202FrontPlan,s2Step202EarlyControlArena,s2Step202EarlyControlPlan,s2Step202CompleteMoves⟩

private theorem s2Step202Complete_apart : List.Disjoint (s2Step202CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [879, 877, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step202CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[879, 877, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step202Complete_owned : (s2Step202CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step202EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step202EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step202CompleteMoveArena : Arena := ⟨s2Step202ExitGvAfter.live∪{168},Finset.union_subset s2Step202ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step202Complete_repack : s2Step202ExitGvAfter.checkRepack s2Step202CompleteMoves=some s2Step202EarlyControlArena := by
  have owned : 841∈s2Step202ExitGvAfter.live := by norm_num [s2Step202ExitGvAfter,arenaWires]
  have reserve : s2Step202ExitGvAfter.reserve {168}=some s2Step202CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step202ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step202CompleteMoveArena.retireSet {841}=s2Step202EarlyControlArena := by
    unfold Arena.retireSet s2Step202EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step202CompleteMoveArena,s2Step202ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step202CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step202CompleteMoveArena.retireSet {841}).checkRepack []=some s2Step202EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step202EarlyControl_branchOwned : ([877] : List Wire).toFinset⊆s2Step202EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step202EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202EarlyControl_branch : compileHmrBranchRetirement s2Step202EarlyControlSigmaArena 877=some s2Step202EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step202EarlyControl_branchOwned
  · ext q
    simp [s2Step202EarlyControlOutputArena,s2Step202EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step202EarlyControl_classEqualityBorrow : s2Step202EarlyControlPositiveArena.checkBorrow (([879, 814] : List Wire).length-1) s2Step202EarlyControlLog.classWork=some s2Step202EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step202EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step202EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step202EarlyControlEqualityArena,s2Step202EarlyControlPositiveArena,s2Step202EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step202EarlyControl_classEqualityOwned : ([879, 814] : List Wire).toFinset⊆s2Step202EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step202EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202EarlyControl_classEquality : compileHmrEqualityLog s2Step202EarlyControlPositiveArena [879, 814] 0 s2Step202EarlyControlLog.classWork=some (s2Step202EarlyControlEqualityArena,s2Step202EarlyControlLog.classWork,s2Step202EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step202EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step202EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step202EarlyControl_classOwned : ([777, 816, 879] : List Wire).toFinset⊆s2Step202EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step202EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202EarlyControl_positiveBorrow : s2Step202EarlyControlZeroArena.checkBorrow (1) s2Step202EarlyControlLog.positiveWork=some s2Step202EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step202EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step202EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step202EarlyControlPositiveArena,s2Step202EarlyControlZeroArena,s2Step202EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step202EarlyControl_class : compileHmrSourceClassLog s2Step202EarlyControlZeroArena false 777 s2Step202EarlyControlZeroPlan.top 0 879 s2Step202EarlyControlLog.positiveWork s2Step202EarlyControlLog.classWork=some s2Step202EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step202EarlyControlClassPlan s2Step202EarlyControlZeroArena false 777 s2Step202EarlyControlZeroPlan.top 0 879
  constructor
  · decide +kernel
  · exact s2Step202EarlyControl_classOwned
  · exact s2Step202EarlyControl_positiveBorrow
  · exact s2Step202EarlyControl_classEquality

private theorem s2Step202EarlyControl_entryRecordOwned : ([877, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step202EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step202EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202EarlyControl_entrySigmaOwned : ([879, 254] : List Wire).toFinset⊆s2Step202EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step202EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202EarlyControl_fitBorrow : s2Step202EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step202EarlyControlLog.recordFresh=some s2Step202EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step202EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step202EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step202EarlyControlFittedArena,s2Step202EarlyControlFlagArena,s2Step202EarlyControlLog,arenaWires]

private theorem s2Step202EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step202EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step202EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202EarlyControl_fit : compileHmrRecordGrowLog s2Step202EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step202EarlyControlLog.recordFresh=some s2Step202EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step202EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step202EarlyControl_fitBorrow

private theorem s2Step202EarlyControl_flagsBorrow : s2Step202EarlyControlEqualityArena.checkBorrow (6) s2Step202EarlyControlLog.flagWork=some s2Step202EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step202EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step202EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step202EarlyControlFlagArena,s2Step202EarlyControlEqualityArena,s2Step202EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step202EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s2Step202EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step202EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202EarlyControl_flags : compileHmrFlagsLog s2Step202EarlyControlClassPlan.equalityArena s2Step202EarlyControlClassPlan.equality.top 253 252 251 s2Step202EarlyControlLog.flagWork=some s2Step202EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step202EarlyControl_flagsOwned⟩
  · exact s2Step202EarlyControl_flagsBorrow

private theorem s2Step202EarlyControl_historyBorrow : s2Step202EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step202EarlyControlLog.recordFresh=some s2Step202EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step202EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step202EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step202EarlyControlHistoryArena,s2Step202EarlyControlArena,s2Step202EarlyControlLog,arenaWires]

private theorem s2Step202EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step202EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step202EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202EarlyControl_history : compileHmrRecordGrowLog s2Step202EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step202EarlyControlLog.recordFresh=some s2Step202EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step202EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step202EarlyControl_historyBorrow

private theorem s2Step202EarlyControl_sigmaOwned : ([254, 879] : List Wire).toFinset⊆s2Step202EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step202EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202EarlyControl_sigmaReleaseOwned : ([879] : List Wire).toFinset⊆s2Step202EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step202EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202EarlyControl_sigmaRelease : s2Step202EarlyControlHistoryArena.release {879} (fun _ => false)=some s2Step202EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step202EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step202EarlyControlSigmaArena,s2Step202EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step202EarlyControl_sigma : compileHmrSigmaDropLog s2Step202EarlyControlHistoryArena false 0 0 254 879 []=some s2Step202EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step202EarlyControl_sigmaOwned⟩
  · exact s2Step202EarlyControl_sigmaRelease

private theorem s2Step202EarlyControl_zeroBorrow : s2Step202EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step202EarlyControlLog.zeroWork=some s2Step202EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step202EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step202EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step202EarlyControlZeroArena,s2Step202EarlyControlArena,s2Step202EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step202EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step202EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step202EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202EarlyControl_zero : compileHmrEqualityLog s2Step202EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step202EarlyControlLog.zeroWork=some (s2Step202EarlyControlZeroArena,s2Step202EarlyControlLog.zeroWork,s2Step202EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step202EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step202EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step202EarlyControl_logged : s2Step202EarlyControlPlan.Logged s2Step202EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 879 254 253 252 251 877 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step202EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step202EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step202EarlyControl_zero
  · exact s2Step202EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step202EarlyControl_flags
  · exact s2Step202EarlyControl_fit
  · exact s2Step202EarlyControl_history
  · exact s2Step202EarlyControl_sigma
  · exact s2Step202EarlyControl_branch

private theorem s2Step202EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step202EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 879 254 253 252 251 877 47 s2Step202EarlyControlLog=some s2Step202EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step202EarlyControlPlan s2Step202EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 879 254 253 252 251 877 47 s2Step202EarlyControl_logged

private def s2Step202EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679],768⟩

private def s2Step202EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794],770⟩

private def s2Step202EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168],769⟩

private def s2Step202EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩

private def s2Step202FrontBank : WindowBank := ⟨s2Step202EntryFRow,s2Step202EntryGRow,s2Step202EntryFvRow,s2Step202EntryGvRow⟩

private def s2Step202Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 816, 814, 768]

private def s2Step202Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 882, 769]

private def s2Step202Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 789, 781, 770]

private def s2Step202Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 822, 771]

private theorem s2Step202Counter_apart : Disjoint s2Step202HeadFvAfter.live s2Step202CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step202HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202Counter_borrowed : s2Step202HeadFvAfter.checkBorrow 4 s2Step202CounterWork=some s2Step202CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step202HeadFvAfter s2Step202CounterDuring s2Step202CounterWork.toFinset s2Step202Counter_bounded s2Step202Counter_apart rfl

private theorem s2Step202Counter_owned : (879::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step202HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step202HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202Counter_checked : compileHmrCounterStepLog s2Step202HeadFvAfter true 879 [772, 773, 774, 775, 776, 777] s2Step202CounterWork=some s2Step202CounterDuring := by
  have owned : ∀q∈879::[772, 773, 774, 775, 776, 777],q∈s2Step202HeadFvAfter.live := fun q hq => s2Step202Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step202Counter_borrowed

private def s2Step202EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step202EntryBank_incomingDistinct : ([s2Step202EntryFRow,s2Step202EntryGRow,s2Step202EntryFvRow,s2Step202EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step202EntryF_Incoming : rowsOwned s2Step202EntryFBefore [s2Step202EntryFRow,s2Step202EntryGRow,s2Step202EntryFvRow,s2Step202EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step202EntryFRow,s2Step202EntryGRow,s2Step202EntryFvRow,s2Step202EntryGvRow] 0 s2Step202EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step202EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step202EntryBank_outgoingOwned : rowsOwned s2Step202EntryGvAfter [s2Step202EntryFOut,s2Step202EntryGOut,s2Step202EntryFvOut,s2Step202EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step202EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step202EntryF_Outgoing : rowsOwned s2Step202EntryGvAfter [s2Step202EntryFOut,s2Step202EntryGOut,s2Step202EntryFvOut,s2Step202EntryGvOut] :=
  hmrRows_owned_drop s2Step202EntryGvAfter [s2Step202EntryFOut,s2Step202EntryGOut,s2Step202EntryFvOut,s2Step202EntryGvOut] 0 s2Step202EntryBank_outgoingOwned

private theorem s2Step202EntryF_distinct : (s2Step202EntryFRow.sign::s2Step202EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step202EntryF_owned : (s2Step202EntryFRow.sign::s2Step202EntryFRow.payload).toFinset⊆s2Step202EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step202EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202EntryF_reserved : s2Step202EntryFBefore.reserve s2Step202EntryFFresh.toFinset=some s2Step202EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step202EntryFFresh,arenaWires]
  · norm_num [s2Step202EntryFBefore,s2Step202EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step202EntryFAfter,s2Step202EntryFBefore,s2Step202EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step202EntryF_checked : planRowResizeLog s2Step202EntryFBefore s2Step202EntryFRow 169 s2Step202EntryFFresh=
    some (s2Step202EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 816],768⟩,growRow 768 s2Step202EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step202EntryFBefore s2Step202EntryFAfter s2Step202EntryFRow 169 s2Step202EntryFFresh
    s2Step202EntryF_distinct s2Step202EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step202EntryF_reserved
  have rowEq : WindowRow.mk (s2Step202EntryFRow.payload++s2Step202EntryFFresh) s2Step202EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 816],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step202EntryFvBefore : Arena := s2Step202EntryFAfter

private theorem s2Step202EntryFv_Incoming : rowsOwned s2Step202EntryFvBefore [s2Step202EntryFvRow,s2Step202EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step202EntryFRow,s2Step202EntryGRow,s2Step202EntryFvRow,s2Step202EntryGvRow] 2 s2Step202EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step202EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step202EntryFv_Outgoing : rowsOwned s2Step202EntryGvAfter [s2Step202EntryFvOut,s2Step202EntryGvOut] :=
  hmrRows_owned_drop s2Step202EntryGvAfter [s2Step202EntryFOut,s2Step202EntryGOut,s2Step202EntryFvOut,s2Step202EntryGvOut] 2 s2Step202EntryBank_outgoingOwned

private theorem s2Step202EntryFv_distinct : (s2Step202EntryFvRow.sign::s2Step202EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step202EntryFv_owned : (s2Step202EntryFvRow.sign::s2Step202EntryFvRow.payload).toFinset⊆s2Step202EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step202EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202EntryFv_reserved : s2Step202EntryFvBefore.reserve s2Step202EntryFvFresh.toFinset=some s2Step202EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step202EntryFvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step202EntryFvBefore,s2Step202EntryFAfter,s2Step202EntryFvFresh,arenaWires]
  · ext q
    simp only [s2Step202EntryFvAfter,s2Step202EntryFvBefore,s2Step202EntryFAfter,s2Step202EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step202EntryFv_checked : planRowResizeLog s2Step202EntryFvBefore s2Step202EntryFvRow 117 s2Step202EntryFvFresh=
    some (s2Step202EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 789],770⟩,growRow 770 s2Step202EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step202EntryFvBefore s2Step202EntryFvAfter s2Step202EntryFvRow 117 s2Step202EntryFvFresh
    s2Step202EntryFv_distinct s2Step202EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step202EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step202EntryFvRow.payload++s2Step202EntryFvFresh) s2Step202EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step202EntryGAfter : Arena := s2Step202EntryFAfter

private def s2Step202EntryGBefore : Arena := s2Step202EntryFAfter

private theorem s2Step202EntryG_Incoming : rowsOwned s2Step202EntryGBefore [s2Step202EntryGRow,s2Step202EntryFvRow,s2Step202EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step202EntryFRow,s2Step202EntryGRow,s2Step202EntryFvRow,s2Step202EntryGvRow] 1 s2Step202EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step202EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step202EntryG_Outgoing : rowsOwned s2Step202EntryGvAfter [s2Step202EntryGOut,s2Step202EntryFvOut,s2Step202EntryGvOut] :=
  hmrRows_owned_drop s2Step202EntryGvAfter [s2Step202EntryFOut,s2Step202EntryGOut,s2Step202EntryFvOut,s2Step202EntryGvOut] 1 s2Step202EntryBank_outgoingOwned

private theorem s2Step202EntryG_distinct : (s2Step202EntryGRow.sign::s2Step202EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step202EntryG_owned : (s2Step202EntryGRow.sign::s2Step202EntryGRow.payload).toFinset⊆s2Step202EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step202EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202EntryG_reserved : s2Step202EntryGBefore.reserve s2Step202EntryGFresh.toFinset=some s2Step202EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step202EntryGFresh,arenaWires]
  · norm_num [s2Step202EntryGBefore,s2Step202EntryFAfter,s2Step202EntryGFresh,arenaWires]
  · simp only [s2Step202EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step202EntryG_checked : planRowResizeLog s2Step202EntryGBefore s2Step202EntryGRow 169 s2Step202EntryGFresh=
    some (s2Step202EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168],769⟩,growRow 769 s2Step202EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step202EntryGBefore s2Step202EntryGAfter s2Step202EntryGRow 169 s2Step202EntryGFresh
    s2Step202EntryG_distinct s2Step202EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step202EntryG_reserved
  have rowEq : WindowRow.mk (s2Step202EntryGRow.payload++s2Step202EntryGFresh) s2Step202EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step202EntryGvBefore : Arena := s2Step202EntryFvAfter

private theorem s2Step202EntryGv_Incoming : rowsOwned s2Step202EntryGvBefore [s2Step202EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step202EntryFRow,s2Step202EntryGRow,s2Step202EntryFvRow,s2Step202EntryGvRow] 3 s2Step202EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step202EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step202EntryGv_Outgoing : rowsOwned s2Step202EntryGvAfter [s2Step202EntryGvOut] :=
  hmrRows_owned_drop s2Step202EntryGvAfter [s2Step202EntryFOut,s2Step202EntryGOut,s2Step202EntryFvOut,s2Step202EntryGvOut] 3 s2Step202EntryBank_outgoingOwned

private theorem s2Step202EntryGv_distinct : (s2Step202EntryGvRow.sign::s2Step202EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step202EntryGv_owned : (s2Step202EntryGvRow.sign::s2Step202EntryGvRow.payload).toFinset⊆s2Step202EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step202EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202EntryGv_reserved : s2Step202EntryGvBefore.reserve s2Step202EntryGvFresh.toFinset=some s2Step202EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step202EntryGvFresh,arenaWires]
  · norm_num [s2Step202EntryGvBefore,s2Step202EntryFvAfter,s2Step202EntryGvFresh,arenaWires]
  · simp only [s2Step202EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step202EntryGv_checked : planRowResizeLog s2Step202EntryGvBefore s2Step202EntryGvRow 117 s2Step202EntryGvFresh=
    some (s2Step202EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩,growRow 771 s2Step202EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step202EntryGvBefore s2Step202EntryGvAfter s2Step202EntryGvRow 117 s2Step202EntryGvFresh
    s2Step202EntryGv_distinct s2Step202EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step202EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step202EntryGvRow.payload++s2Step202EntryGvFresh) s2Step202EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step202EntryBank_rows : planWindowRowsLog s2Step202EntryFBefore [(s2Step202EntryFRow,169),(s2Step202EntryGRow,169),(s2Step202EntryFvRow,117),(s2Step202EntryGvRow,117)] [s2Step202EntryFFresh,s2Step202EntryGFresh,s2Step202EntryFvFresh,s2Step202EntryGvFresh]=
    some (s2Step202EntryGvAfter,[s2Step202EntryFOut,s2Step202EntryGOut,s2Step202EntryFvOut,s2Step202EntryGvOut],(growRow 768 s2Step202EntryFFresh ++ (growRow 769 s2Step202EntryGFresh ++ (growRow 770 s2Step202EntryFvFresh ++ (growRow 771 s2Step202EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step202EntryGvAfter [] []=some (s2Step202EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step202EntryGvBefore s2Step202EntryGvAfter s2Step202EntryGvAfter
    s2Step202EntryGvRow s2Step202EntryGvOut 117 s2Step202EntryGvFresh [] [] []
    (growRow 771 s2Step202EntryGvFresh) ([]) s2Step202EntryGv_Incoming s2Step202EntryGv_checked h4 s2Step202EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step202EntryFvBefore s2Step202EntryFvAfter s2Step202EntryGvAfter
    s2Step202EntryFvRow s2Step202EntryFvOut 117 s2Step202EntryFvFresh [(s2Step202EntryGvRow,117)] [s2Step202EntryGvFresh] [s2Step202EntryGvOut]
    (growRow 770 s2Step202EntryFvFresh) ((growRow 771 s2Step202EntryGvFresh ++ [])) s2Step202EntryFv_Incoming s2Step202EntryFv_checked h3 s2Step202EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step202EntryGBefore s2Step202EntryGAfter s2Step202EntryGvAfter
    s2Step202EntryGRow s2Step202EntryGOut 169 s2Step202EntryGFresh [(s2Step202EntryFvRow,117),(s2Step202EntryGvRow,117)] [s2Step202EntryFvFresh,s2Step202EntryGvFresh] [s2Step202EntryFvOut,s2Step202EntryGvOut]
    (growRow 769 s2Step202EntryGFresh) ((growRow 770 s2Step202EntryFvFresh ++ (growRow 771 s2Step202EntryGvFresh ++ []))) s2Step202EntryG_Incoming s2Step202EntryG_checked h2 s2Step202EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step202EntryFBefore s2Step202EntryFAfter s2Step202EntryGvAfter
    s2Step202EntryFRow s2Step202EntryFOut 169 s2Step202EntryFFresh [(s2Step202EntryGRow,169),(s2Step202EntryFvRow,117),(s2Step202EntryGvRow,117)] [s2Step202EntryGFresh,s2Step202EntryFvFresh,s2Step202EntryGvFresh] [s2Step202EntryGOut,s2Step202EntryFvOut,s2Step202EntryGvOut]
    (growRow 768 s2Step202EntryFFresh) ((growRow 769 s2Step202EntryGFresh ++ (growRow 770 s2Step202EntryFvFresh ++ (growRow 771 s2Step202EntryGvFresh ++ [])))) s2Step202EntryF_Incoming s2Step202EntryF_checked h1 s2Step202EntryF_Outgoing
  exact h0

private theorem s2Step202EntryBank_checked : compileHmrBankResizeLog .entry s2Step202EntryFBefore ⟨s2Step202EntryFRow,s2Step202EntryGRow,s2Step202EntryFvRow,s2Step202EntryGvRow⟩ ⟨169,169,117,117⟩ [s2Step202EntryFFresh,s2Step202EntryGFresh,s2Step202EntryFvFresh,s2Step202EntryGvFresh]=
    some (s2Step202EntryGvAfter,⟨s2Step202EntryFOut,s2Step202EntryGOut,s2Step202EntryFvOut,s2Step202EntryGvOut⟩,(growRow 768 s2Step202EntryFFresh ++ (growRow 769 s2Step202EntryGFresh ++ (growRow 770 s2Step202EntryFvFresh ++ (growRow 771 s2Step202EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step202EntryBank_rows]
  rfl

private def s2Step202ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202ExitFBefore : Arena := s2Step202ExitGAfter

private def s2Step202ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 816, 814],768⟩

private def s2Step202ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 789, 781],770⟩

private def s2Step202ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 882],769⟩

private def s2Step202ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 822],771⟩

private theorem s2Step202ExitBank_incomingDistinct : ([s2Step202ExitGRow,s2Step202ExitFRow,s2Step202ExitFvRow,s2Step202ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step202ExitF_Incoming : rowsOwned s2Step202ExitFBefore [s2Step202ExitFRow,s2Step202ExitFvRow,s2Step202ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step202ExitGRow,s2Step202ExitFRow,s2Step202ExitFvRow,s2Step202ExitGvRow] 1 s2Step202ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step202ExitFBefore (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step202ExitBank_outgoingOwned : rowsOwned s2Step202ExitGvAfter [s2Step202ExitGOut,s2Step202ExitFOut,s2Step202ExitFvOut,s2Step202ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step202ExitGvAfter (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step202ExitF_Outgoing : rowsOwned s2Step202ExitGvAfter [s2Step202ExitFOut,s2Step202ExitFvOut,s2Step202ExitGvOut] :=
  hmrRows_owned_drop s2Step202ExitGvAfter [s2Step202ExitGOut,s2Step202ExitFOut,s2Step202ExitFvOut,s2Step202ExitGvOut] 1 s2Step202ExitBank_outgoingOwned

private theorem s2Step202ExitF_distinct : (s2Step202ExitFRow.sign::s2Step202ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step202ExitF_owned : (s2Step202ExitFRow.sign::s2Step202ExitFRow.payload).toFinset⊆s2Step202ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step202ExitFBefore (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202ExitF_retired : s2Step202ExitFBefore.retireSet s2Step202ExitFExtra.toFinset=s2Step202ExitFAfter := by
  unfold Arena.retireSet s2Step202ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step202ExitFBefore,s2Step202ExitGAfter,s2Step202ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step202ExitF_checked : planRowResizeLog s2Step202ExitFBefore s2Step202ExitFRow 168 []=
    some (s2Step202ExitFAfter,s2Step202ExitFOut,shrinkRow 768 s2Step202ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step202ExitFBefore s2Step202ExitFRow 168 s2Step202ExitF_distinct s2Step202ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step202ExitFRow.payload.take 168) s2Step202ExitFRow.sign=s2Step202ExitFOut := by decide +kernel
  have hi : s2Step202ExitFRow.payload.drop 168=s2Step202ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step202ExitF_retired] at result
  exact result

private def s2Step202ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202ExitFvBefore : Arena := s2Step202ExitFAfter

private theorem s2Step202ExitFv_Incoming : rowsOwned s2Step202ExitFvBefore [s2Step202ExitFvRow,s2Step202ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step202ExitGRow,s2Step202ExitFRow,s2Step202ExitFvRow,s2Step202ExitGvRow] 2 s2Step202ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step202ExitFvBefore (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step202ExitFv_Outgoing : rowsOwned s2Step202ExitGvAfter [s2Step202ExitFvOut,s2Step202ExitGvOut] :=
  hmrRows_owned_drop s2Step202ExitGvAfter [s2Step202ExitGOut,s2Step202ExitFOut,s2Step202ExitFvOut,s2Step202ExitGvOut] 2 s2Step202ExitBank_outgoingOwned

private theorem s2Step202ExitFv_distinct : (s2Step202ExitFvRow.sign::s2Step202ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step202ExitFv_owned : (s2Step202ExitFvRow.sign::s2Step202ExitFvRow.payload).toFinset⊆s2Step202ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step202ExitFvBefore (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202ExitFv_retired : s2Step202ExitFvBefore.retireSet s2Step202ExitFvExtra.toFinset=s2Step202ExitFvAfter := by
  unfold Arena.retireSet s2Step202ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step202ExitFvBefore,s2Step202ExitFAfter,s2Step202ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step202ExitFv_checked : planRowResizeLog s2Step202ExitFvBefore s2Step202ExitFvRow 116 []=
    some (s2Step202ExitFvAfter,s2Step202ExitFvOut,shrinkRow 770 s2Step202ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step202ExitFvBefore s2Step202ExitFvRow 116 s2Step202ExitFv_distinct s2Step202ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step202ExitFvRow.payload.take 116) s2Step202ExitFvRow.sign=s2Step202ExitFvOut := by decide +kernel
  have hi : s2Step202ExitFvRow.payload.drop 116=s2Step202ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step202ExitFv_retired] at result
  exact result

private def s2Step202ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step202ExitG_Incoming : rowsOwned s2Step202ExitGBefore [s2Step202ExitGRow,s2Step202ExitFRow,s2Step202ExitFvRow,s2Step202ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step202ExitGRow,s2Step202ExitFRow,s2Step202ExitFvRow,s2Step202ExitGvRow] 0 s2Step202ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step202ExitGBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step202ExitG_Outgoing : rowsOwned s2Step202ExitGvAfter [s2Step202ExitGOut,s2Step202ExitFOut,s2Step202ExitFvOut,s2Step202ExitGvOut] :=
  hmrRows_owned_drop s2Step202ExitGvAfter [s2Step202ExitGOut,s2Step202ExitFOut,s2Step202ExitFvOut,s2Step202ExitGvOut] 0 s2Step202ExitBank_outgoingOwned

private theorem s2Step202ExitG_distinct : (s2Step202ExitGRow.sign::s2Step202ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step202ExitG_owned : (s2Step202ExitGRow.sign::s2Step202ExitGRow.payload).toFinset⊆s2Step202ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step202ExitGBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202ExitG_retired : s2Step202ExitGBefore.retireSet s2Step202ExitGExtra.toFinset=s2Step202ExitGAfter := by
  unfold Arena.retireSet s2Step202ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step202ExitGBefore,s2Step202ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step202ExitG_checked : planRowResizeLog s2Step202ExitGBefore s2Step202ExitGRow 168 []=
    some (s2Step202ExitGAfter,s2Step202ExitGOut,shrinkRow 769 s2Step202ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step202ExitGBefore s2Step202ExitGRow 168 s2Step202ExitG_distinct s2Step202ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step202ExitGRow.payload.take 168) s2Step202ExitGRow.sign=s2Step202ExitGOut := by decide +kernel
  have hi : s2Step202ExitGRow.payload.drop 168=s2Step202ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step202ExitG_retired] at result
  exact result

private def s2Step202ExitGvBefore : Arena := s2Step202ExitFvAfter

private theorem s2Step202ExitGv_Incoming : rowsOwned s2Step202ExitGvBefore [s2Step202ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step202ExitGRow,s2Step202ExitFRow,s2Step202ExitFvRow,s2Step202ExitGvRow] 3 s2Step202ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step202ExitGvBefore (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step202ExitGv_Outgoing : rowsOwned s2Step202ExitGvAfter [s2Step202ExitGvOut] :=
  hmrRows_owned_drop s2Step202ExitGvAfter [s2Step202ExitGOut,s2Step202ExitFOut,s2Step202ExitFvOut,s2Step202ExitGvOut] 3 s2Step202ExitBank_outgoingOwned

private theorem s2Step202ExitGv_distinct : (s2Step202ExitGvRow.sign::s2Step202ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step202ExitGv_owned : (s2Step202ExitGvRow.sign::s2Step202ExitGvRow.payload).toFinset⊆s2Step202ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step202ExitGvBefore (fun q => (0≤q ∧ q<168) ∨ (169≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202ExitGv_retired : s2Step202ExitGvBefore.retireSet s2Step202ExitGvExtra.toFinset=s2Step202ExitGvAfter := by
  unfold Arena.retireSet s2Step202ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step202ExitGvBefore,s2Step202ExitFvAfter,s2Step202ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step202ExitGv_checked : planRowResizeLog s2Step202ExitGvBefore s2Step202ExitGvRow 117 []=
    some (s2Step202ExitGvAfter,s2Step202ExitGvOut,shrinkRow 771 s2Step202ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step202ExitGvBefore s2Step202ExitGvRow 117 s2Step202ExitGv_distinct s2Step202ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step202ExitGvRow.payload.take 117) s2Step202ExitGvRow.sign=s2Step202ExitGvOut := by decide +kernel
  have hi : s2Step202ExitGvRow.payload.drop 117=s2Step202ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step202ExitGv_retired] at result
  exact result

private theorem s2Step202ExitBank_rows : planWindowRowsLog s2Step202ExitGBefore [(s2Step202ExitGRow,168),(s2Step202ExitFRow,168),(s2Step202ExitFvRow,116),(s2Step202ExitGvRow,117)] [[],[],[],[]]=
    some (s2Step202ExitGvAfter,[s2Step202ExitGOut,s2Step202ExitFOut,s2Step202ExitFvOut,s2Step202ExitGvOut],(shrinkRow 769 s2Step202ExitGExtra ++ (shrinkRow 768 s2Step202ExitFExtra ++ (shrinkRow 770 s2Step202ExitFvExtra ++ (shrinkRow 771 s2Step202ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step202ExitGvAfter [] []=some (s2Step202ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step202ExitGvBefore s2Step202ExitGvAfter s2Step202ExitGvAfter
    s2Step202ExitGvRow s2Step202ExitGvOut 117 [] [] [] []
    (shrinkRow 771 s2Step202ExitGvExtra) ([]) s2Step202ExitGv_Incoming s2Step202ExitGv_checked h4 s2Step202ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step202ExitFvBefore s2Step202ExitFvAfter s2Step202ExitGvAfter
    s2Step202ExitFvRow s2Step202ExitFvOut 116 [] [(s2Step202ExitGvRow,117)] [[]] [s2Step202ExitGvOut]
    (shrinkRow 770 s2Step202ExitFvExtra) ((shrinkRow 771 s2Step202ExitGvExtra ++ [])) s2Step202ExitFv_Incoming s2Step202ExitFv_checked h3 s2Step202ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step202ExitFBefore s2Step202ExitFAfter s2Step202ExitGvAfter
    s2Step202ExitFRow s2Step202ExitFOut 168 [] [(s2Step202ExitFvRow,116),(s2Step202ExitGvRow,117)] [[],[]] [s2Step202ExitFvOut,s2Step202ExitGvOut]
    (shrinkRow 768 s2Step202ExitFExtra) ((shrinkRow 770 s2Step202ExitFvExtra ++ (shrinkRow 771 s2Step202ExitGvExtra ++ []))) s2Step202ExitF_Incoming s2Step202ExitF_checked h2 s2Step202ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step202ExitGBefore s2Step202ExitGAfter s2Step202ExitGvAfter
    s2Step202ExitGRow s2Step202ExitGOut 168 [] [(s2Step202ExitFRow,168),(s2Step202ExitFvRow,116),(s2Step202ExitGvRow,117)] [[],[],[]] [s2Step202ExitFOut,s2Step202ExitFvOut,s2Step202ExitGvOut]
    (shrinkRow 769 s2Step202ExitGExtra) ((shrinkRow 768 s2Step202ExitFExtra ++ (shrinkRow 770 s2Step202ExitFvExtra ++ (shrinkRow 771 s2Step202ExitGvExtra ++ [])))) s2Step202ExitG_Incoming s2Step202ExitG_checked h1 s2Step202ExitG_Outgoing
  exact h0

private theorem s2Step202ExitBank_checked : compileHmrBankResizeLog .exit s2Step202ExitGBefore ⟨s2Step202ExitFRow,s2Step202ExitGRow,s2Step202ExitFvRow,s2Step202ExitGvRow⟩ ⟨168,168,116,117⟩ [[],[],[],[]]=
    some (s2Step202ExitGvAfter,⟨s2Step202ExitFOut,s2Step202ExitGOut,s2Step202ExitFvOut,s2Step202ExitGvOut⟩,(shrinkRow 769 s2Step202ExitGExtra ++ (shrinkRow 768 s2Step202ExitFExtra ++ (shrinkRow 770 s2Step202ExitFvExtra ++ (shrinkRow 771 s2Step202ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step202ExitBank_rows]
  rfl

private theorem s2Step202Add0_apart : Disjoint s2Step202Add0Arena.live s2Step202Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step202Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202Add0_card : s2Step202Add0Arena.live.card=893 := by
  decide +kernel

private theorem s2Step202Add0_borrowed : s2Step202Add0Arena.checkBorrow (hmrHybridCount s2Step202Add0Arena s2Step202Add0B.length) s2Step202Add0Work=some s2Step202Add0During := by
  have len : s2Step202Add0Work.length=hmrHybridCount s2Step202Add0Arena s2Step202Add0B.length := by
    rw [hmrHybridCount,s2Step202Add0_card]
    decide +kernel
  have nd : s2Step202Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step202Add0Arena s2Step202Add0During s2Step202Add0Work.toFinset s2Step202Add0_bounded s2Step202Add0_apart rfl

private theorem s2Step202Add0_distinct : (826::877::842::(s2Step202Add0A++s2Step202Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step202Add0_owned : (826::877::842::(s2Step202Add0A++s2Step202Add0B)).toFinset⊆s2Step202Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step202Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202Add0_checked : compileHmrHybridCinLog s2Step202Add0Arena 877 826 842 s2Step202Add0A s2Step202Add0B s2Step202Add0Work=some s2Step202Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step202Add0Arena s2Step202Add0During 877 826 842 s2Step202Add0A s2Step202Add0B s2Step202Add0Work
    (by decide +kernel) (by decide +kernel) s2Step202Add0_distinct
    (fun q hq => s2Step202Add0_owned (List.mem_toFinset.mpr hq)) s2Step202Add0_borrowed

private theorem s2Step202Add1_apart : Disjoint s2Step202Add1Arena.live s2Step202Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step202Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202Add1_card : s2Step202Add1Arena.live.card=893 := by
  decide +kernel

private theorem s2Step202Add1_borrowed : s2Step202Add1Arena.checkBorrow (hmrHybridCount s2Step202Add1Arena s2Step202Add1B.length) s2Step202Add1Work=some s2Step202Add1During := by
  have len : s2Step202Add1Work.length=hmrHybridCount s2Step202Add1Arena s2Step202Add1B.length := by
    rw [hmrHybridCount,s2Step202Add1_card]
    decide +kernel
  have nd : s2Step202Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step202Add1Arena s2Step202Add1During s2Step202Add1Work.toFinset s2Step202Add1_bounded s2Step202Add1_apart rfl

private theorem s2Step202Add1_distinct : (826::877::842::(s2Step202Add1A++s2Step202Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step202Add1_owned : (826::877::842::(s2Step202Add1A++s2Step202Add1B)).toFinset⊆s2Step202Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step202Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202Add1_checked : compileHmrHybridCinLog s2Step202Add1Arena 877 826 842 s2Step202Add1A s2Step202Add1B s2Step202Add1Work=some s2Step202Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step202Add1Arena s2Step202Add1During 877 826 842 s2Step202Add1A s2Step202Add1B s2Step202Add1Work
    (by decide +kernel) (by decide +kernel) s2Step202Add1_distinct
    (fun q hq => s2Step202Add1_owned (List.mem_toFinset.mpr hq)) s2Step202Add1_borrowed

private theorem s2Step202F4_apart : Disjoint (s2Step202Add0A++s2Step202Add0B).toFinset (s2Step202Add1A++s2Step202Add1B).toFinset := by
  have nd : ((s2Step202Add0A++s2Step202Add0B)++(s2Step202Add1A++s2Step202Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step202F4_carry : s2Step202F4FlagArena.checkBorrow 1 [842]=some s2Step202Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step202F4FlagArena,s2Step202HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step202F4FlagArena,s2Step202HeadFvAfter,s2Step202Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step202F4_distinct : (879::877::826::842::((s2Step202Add0A++s2Step202Add1A)++(s2Step202Add0B++s2Step202Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step202F4_flag : s2Step202HeadFvAfter.checkBorrow 1 [826]=some s2Step202F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step202HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step202F4_owned : (879::877::((s2Step202Add0A++s2Step202Add1A)++(s2Step202Add0B++s2Step202Add1B))).toFinset⊆s2Step202HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step202HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202F4_checked : compileHmrHybridF4Log s2Step202HeadFvAfter 879 877 s2Step202Add0A s2Step202Add0B s2Step202Add1A s2Step202Add1B [826] [842] s2Step202Add0Work s2Step202Add1Work=some s2Step202F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step202HeadFvAfter s2Step202F4FlagArena s2Step202Add0Arena s2Step202Add0During s2Step202Add1During 879 877
    s2Step202Add0A s2Step202Add0B s2Step202Add1A s2Step202Add1B [826] [842] s2Step202Add0Work s2Step202Add1Work
    (fun q hq => s2Step202F4_owned (List.mem_toFinset.mpr hq)) s2Step202F4_flag s2Step202F4_carry
    s2Step202F4_distinct s2Step202F4_apart s2Step202Add0_checked s2Step202Add1_checked

private theorem s2Step202Front_branch : s2Step202FrontSigmaArena.checkBorrow 1 [877]=some s2Step202HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step202FrontSigmaArena,s2Step202EntryGvAfter,s2Step202EntryFvAfter,arenaWires]
  · ext q
    simp only [s2Step202FrontSigmaArena,s2Step202EntryGvAfter,s2Step202EntryFvAfter,s2Step202HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step202Front_entry : HmrFrontEntryValid s2Step202EntryFBefore s2Step202FrontBank 169 117 ⟨168,168,116,117⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step202FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step202EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step202EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<788) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step202FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step202Front_sigma : s2Step202EntryGvAfter.checkBorrow 1 [879]=some s2Step202FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step202EntryGvAfter,s2Step202EntryFvAfter,arenaWires]
  · rfl

private def s2Step202HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202HeadFBefore : Arena := s2Step202HeadGAfter

private def s2Step202HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 816],768⟩

private def s2Step202HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 789],770⟩

private def s2Step202HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168],769⟩

private def s2Step202HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836],771⟩

private theorem s2Step202HeadBank_incomingDistinct : ([s2Step202HeadGRow,s2Step202HeadFRow,s2Step202HeadGvRow,s2Step202HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step202HeadF_Incoming : rowsOwned s2Step202HeadFBefore [s2Step202HeadFRow,s2Step202HeadGvRow,s2Step202HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step202HeadGRow,s2Step202HeadFRow,s2Step202HeadGvRow,s2Step202HeadFvRow] 1 s2Step202HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step202HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step202HeadBank_outgoingOwned : rowsOwned s2Step202HeadFvAfter [s2Step202HeadGOut,s2Step202HeadFOut,s2Step202HeadGvOut,s2Step202HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step202HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step202HeadF_Outgoing : rowsOwned s2Step202HeadFvAfter [s2Step202HeadFOut,s2Step202HeadGvOut,s2Step202HeadFvOut] :=
  hmrRows_owned_drop s2Step202HeadFvAfter [s2Step202HeadGOut,s2Step202HeadFOut,s2Step202HeadGvOut,s2Step202HeadFvOut] 1 s2Step202HeadBank_outgoingOwned

private theorem s2Step202HeadF_distinct : (s2Step202HeadFRow.sign::s2Step202HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step202HeadF_owned : (s2Step202HeadFRow.sign::s2Step202HeadFRow.payload).toFinset⊆s2Step202HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step202HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202HeadF_reserved : s2Step202HeadFBefore.reserve s2Step202HeadFFresh.toFinset=some s2Step202HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step202HeadFFresh,arenaWires]
  · norm_num [s2Step202HeadFBefore,s2Step202HeadGAfter,s2Step202HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step202HeadFAfter,s2Step202HeadFBefore,s2Step202HeadGAfter,s2Step202HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step202HeadF_checked : planRowResizeLog s2Step202HeadFBefore s2Step202HeadFRow 170 s2Step202HeadFFresh=
    some (s2Step202HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 816, 814],768⟩,growRow 768 s2Step202HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step202HeadFBefore s2Step202HeadFAfter s2Step202HeadFRow 170 s2Step202HeadFFresh
    s2Step202HeadF_distinct s2Step202HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step202HeadF_reserved
  have rowEq : WindowRow.mk (s2Step202HeadFRow.payload++s2Step202HeadFFresh) s2Step202HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 816, 814],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step202HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step202HeadFvBefore : Arena := s2Step202HeadGvAfter

private theorem s2Step202HeadFv_Incoming : rowsOwned s2Step202HeadFvBefore [s2Step202HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step202HeadGRow,s2Step202HeadFRow,s2Step202HeadGvRow,s2Step202HeadFvRow] 3 s2Step202HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step202HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step202HeadFv_Outgoing : rowsOwned s2Step202HeadFvAfter [s2Step202HeadFvOut] :=
  hmrRows_owned_drop s2Step202HeadFvAfter [s2Step202HeadGOut,s2Step202HeadFOut,s2Step202HeadGvOut,s2Step202HeadFvOut] 3 s2Step202HeadBank_outgoingOwned

private theorem s2Step202HeadFv_distinct : (s2Step202HeadFvRow.sign::s2Step202HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step202HeadFv_owned : (s2Step202HeadFvRow.sign::s2Step202HeadFvRow.payload).toFinset⊆s2Step202HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step202HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202HeadFv_reserved : s2Step202HeadFvBefore.reserve s2Step202HeadFvFresh.toFinset=some s2Step202HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step202HeadFvFresh,arenaWires]
  · norm_num [s2Step202HeadFvBefore,s2Step202HeadGvAfter,s2Step202HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step202HeadFvAfter,s2Step202HeadFvBefore,s2Step202HeadGvAfter,s2Step202HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step202HeadFv_checked : planRowResizeLog s2Step202HeadFvBefore s2Step202HeadFvRow 118 s2Step202HeadFvFresh=
    some (s2Step202HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 789, 781],770⟩,growRow 770 s2Step202HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step202HeadFvBefore s2Step202HeadFvAfter s2Step202HeadFvRow 118 s2Step202HeadFvFresh
    s2Step202HeadFv_distinct s2Step202HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step202HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step202HeadFvRow.payload++s2Step202HeadFvFresh) s2Step202HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 841, 844, 783, 796, 815, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 789, 781],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step202HeadG_Incoming : rowsOwned s2Step202HeadGBefore [s2Step202HeadGRow,s2Step202HeadFRow,s2Step202HeadGvRow,s2Step202HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step202HeadGRow,s2Step202HeadFRow,s2Step202HeadGvRow,s2Step202HeadFvRow] 0 s2Step202HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step202HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step202HeadG_Outgoing : rowsOwned s2Step202HeadFvAfter [s2Step202HeadGOut,s2Step202HeadFOut,s2Step202HeadGvOut,s2Step202HeadFvOut] :=
  hmrRows_owned_drop s2Step202HeadFvAfter [s2Step202HeadGOut,s2Step202HeadFOut,s2Step202HeadGvOut,s2Step202HeadFvOut] 0 s2Step202HeadBank_outgoingOwned

private theorem s2Step202HeadG_distinct : (s2Step202HeadGRow.sign::s2Step202HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step202HeadG_owned : (s2Step202HeadGRow.sign::s2Step202HeadGRow.payload).toFinset⊆s2Step202HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step202HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202HeadG_reserved : s2Step202HeadGBefore.reserve s2Step202HeadGFresh.toFinset=some s2Step202HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step202HeadGFresh,arenaWires]
  · norm_num [s2Step202HeadGBefore,s2Step202HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step202HeadGAfter,s2Step202HeadGBefore,s2Step202HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step202HeadG_checked : planRowResizeLog s2Step202HeadGBefore s2Step202HeadGRow 170 s2Step202HeadGFresh=
    some (s2Step202HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 882],769⟩,growRow 769 s2Step202HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step202HeadGBefore s2Step202HeadGAfter s2Step202HeadGRow 170 s2Step202HeadGFresh
    s2Step202HeadG_distinct s2Step202HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step202HeadG_reserved
  have rowEq : WindowRow.mk (s2Step202HeadGRow.payload++s2Step202HeadGFresh) s2Step202HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 882],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step202HeadGvBefore : Arena := s2Step202HeadFAfter

private theorem s2Step202HeadGv_Incoming : rowsOwned s2Step202HeadGvBefore [s2Step202HeadGvRow,s2Step202HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step202HeadGRow,s2Step202HeadFRow,s2Step202HeadGvRow,s2Step202HeadFvRow] 2 s2Step202HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step202HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step202HeadGv_Outgoing : rowsOwned s2Step202HeadFvAfter [s2Step202HeadGvOut,s2Step202HeadFvOut] :=
  hmrRows_owned_drop s2Step202HeadFvAfter [s2Step202HeadGOut,s2Step202HeadFOut,s2Step202HeadGvOut,s2Step202HeadFvOut] 2 s2Step202HeadBank_outgoingOwned

private theorem s2Step202HeadGv_distinct : (s2Step202HeadGvRow.sign::s2Step202HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step202HeadGv_owned : (s2Step202HeadGvRow.sign::s2Step202HeadGvRow.payload).toFinset⊆s2Step202HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step202HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step202HeadGv_reserved : s2Step202HeadGvBefore.reserve s2Step202HeadGvFresh.toFinset=some s2Step202HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step202HeadGvFresh,arenaWires]
  · norm_num [s2Step202HeadGvBefore,s2Step202HeadFAfter,s2Step202HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step202HeadGvAfter,s2Step202HeadGvBefore,s2Step202HeadFAfter,s2Step202HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step202HeadGv_checked : planRowResizeLog s2Step202HeadGvBefore s2Step202HeadGvRow 118 s2Step202HeadGvFresh=
    some (s2Step202HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 822],771⟩,growRow 771 s2Step202HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step202HeadGvBefore s2Step202HeadGvAfter s2Step202HeadGvRow 118 s2Step202HeadGvFresh
    s2Step202HeadGv_distinct s2Step202HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step202HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step202HeadGvRow.payload++s2Step202HeadGvFresh) s2Step202HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 845, 779, 786, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 822],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step202HeadBank_rows : planWindowRowsLog s2Step202HeadGBefore [(s2Step202HeadGRow,170),(s2Step202HeadFRow,170),(s2Step202HeadGvRow,118),(s2Step202HeadFvRow,118)] [s2Step202HeadGFresh,s2Step202HeadFFresh,s2Step202HeadGvFresh,s2Step202HeadFvFresh]=
    some (s2Step202HeadFvAfter,[s2Step202HeadGOut,s2Step202HeadFOut,s2Step202HeadGvOut,s2Step202HeadFvOut],(growRow 769 s2Step202HeadGFresh ++ (growRow 768 s2Step202HeadFFresh ++ (growRow 771 s2Step202HeadGvFresh ++ (growRow 770 s2Step202HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step202HeadFvAfter [] []=some (s2Step202HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step202HeadFvBefore s2Step202HeadFvAfter s2Step202HeadFvAfter
    s2Step202HeadFvRow s2Step202HeadFvOut 118 s2Step202HeadFvFresh [] [] []
    (growRow 770 s2Step202HeadFvFresh) ([]) s2Step202HeadFv_Incoming s2Step202HeadFv_checked h4 s2Step202HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step202HeadGvBefore s2Step202HeadGvAfter s2Step202HeadFvAfter
    s2Step202HeadGvRow s2Step202HeadGvOut 118 s2Step202HeadGvFresh [(s2Step202HeadFvRow,118)] [s2Step202HeadFvFresh] [s2Step202HeadFvOut]
    (growRow 771 s2Step202HeadGvFresh) ((growRow 770 s2Step202HeadFvFresh ++ [])) s2Step202HeadGv_Incoming s2Step202HeadGv_checked h3 s2Step202HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step202HeadFBefore s2Step202HeadFAfter s2Step202HeadFvAfter
    s2Step202HeadFRow s2Step202HeadFOut 170 s2Step202HeadFFresh [(s2Step202HeadGvRow,118),(s2Step202HeadFvRow,118)] [s2Step202HeadGvFresh,s2Step202HeadFvFresh] [s2Step202HeadGvOut,s2Step202HeadFvOut]
    (growRow 768 s2Step202HeadFFresh) ((growRow 771 s2Step202HeadGvFresh ++ (growRow 770 s2Step202HeadFvFresh ++ []))) s2Step202HeadF_Incoming s2Step202HeadF_checked h2 s2Step202HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step202HeadGBefore s2Step202HeadGAfter s2Step202HeadFvAfter
    s2Step202HeadGRow s2Step202HeadGOut 170 s2Step202HeadGFresh [(s2Step202HeadFRow,170),(s2Step202HeadGvRow,118),(s2Step202HeadFvRow,118)] [s2Step202HeadFFresh,s2Step202HeadGvFresh,s2Step202HeadFvFresh] [s2Step202HeadFOut,s2Step202HeadGvOut,s2Step202HeadFvOut]
    (growRow 769 s2Step202HeadGFresh) ((growRow 768 s2Step202HeadFFresh ++ (growRow 771 s2Step202HeadGvFresh ++ (growRow 770 s2Step202HeadFvFresh ++ [])))) s2Step202HeadG_Incoming s2Step202HeadG_checked h1 s2Step202HeadG_Outgoing
  exact h0

private theorem s2Step202HeadBank_checked : compileHmrBankResizeLog .headroom s2Step202HeadGBefore ⟨s2Step202HeadFRow,s2Step202HeadGRow,s2Step202HeadFvRow,s2Step202HeadGvRow⟩ ⟨170,170,118,118⟩ [s2Step202HeadGFresh,s2Step202HeadFFresh,s2Step202HeadGvFresh,s2Step202HeadFvFresh]=
    some (s2Step202HeadFvAfter,⟨s2Step202HeadFOut,s2Step202HeadGOut,s2Step202HeadFvOut,s2Step202HeadGvOut⟩,(growRow 769 s2Step202HeadGFresh ++ (growRow 768 s2Step202HeadFFresh ++ (growRow 771 s2Step202HeadGvFresh ++ (growRow 770 s2Step202HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step202HeadBank_rows]
  rfl

private theorem s2Step202Front_checked : compileHmrSourceFrontLog s2Step202EntryFBefore s2Step202FrontBank 169 117 ⟨168,168,116,117⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step202FrontLog=some s2Step202FrontPlan := by
  have pairEq : s2Step202FrontPair=⟨s2Step202HeadFRow,s2Step202HeadGRow,s2Step202HeadFvRow,s2Step202HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step202FrontHead=⟨s2Step202ExitFRow,s2Step202ExitGRow,s2Step202ExitFvRow,s2Step202ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step202Add0A=s2Step202FrontHead.f.wires := by decide +kernel
  have gEq : s2Step202Add0B=s2Step202FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step202Add1A=s2Step202FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step202Add1B=s2Step202FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step202EntryFBefore s2Step202FrontBank 169 117 ⟨168,168,116,117⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step202FrontLog s2Step202FrontPlan
  · exact s2Step202Front_entry
  · exact s2Step202EntryBank_checked
  · exact s2Step202Front_sigma
  · rfl
  · exact s2Step202Front_branch
  · rfl
  · simpa only [s2Step202FrontPlan,pairEq] using s2Step202HeadBank_checked
  · simpa only [s2Step202FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step202F4_checked
  · exact s2Step202Counter_checked
  · rfl
  · simpa only [s2Step202FrontPlan,headEq] using s2Step202ExitBank_checked

private theorem s2Step202Complete_explicit_checked : compileHmrEarlyStepLog s2Step202EntryFBefore s2Step202FrontBank 169 117 ⟨168,168,116,117⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step202CompleteLog=some s2Step202CompletePlan := by
  let Q := s2Step202EarlyControlPlan
  have hq := s2Step202EarlyControl_plan_checked
  have fv1 : s2Step202CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step202CompleteOut.fv.payload[2]?.getD s2Step202CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step202CompleteOut.fv.payload[3]?.getD s2Step202CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step202CompleteOut.fv.payload[4]?.getD s2Step202CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step202EntryFBefore s2Step202EarlyControlArena s2Step202FrontBank 169 117 ⟨168,168,116,117⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step202CompleteLog s2Step202FrontPlan Q
    s2Step202Front_checked s2Step202Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step202Complete_owned s2Step202Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step202EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 879 s2Step202CompleteOut.fv.second (s2Step202CompleteOut.fv.payload[2]?.getD s2Step202CompleteOut.fv.sign) (s2Step202CompleteOut.fv.payload[3]?.getD s2Step202CompleteOut.fv.sign) (s2Step202CompleteOut.fv.payload[4]?.getD s2Step202CompleteOut.fv.sign) 877 47 s2Step202EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep202Arena : Arena := s2Step202EntryFBefore
def s2PrivateStep202Bank : WindowBank := s2Step202FrontBank
def s2PrivateStep202Spec : HmrSourceWalkStepLog := ⟨169,117,⟨168,168,116,117⟩,47,.early s2Step202CompleteLog⟩
def s2PrivateStep202Plan : HmrSourceStepPlan := .early s2Step202CompletePlan
theorem s2PrivateStep202_source : s2PrivateStep202Spec=s2ObservedLogs192[10] := rfl
theorem s2PrivateStep202_checked : compileHmrSourceStepLog s2PrivateStep202Arena s2PrivateStep202Bank
    s2PrivateStep202Spec.fgWidth s2PrivateStep202Spec.vWidth s2PrivateStep202Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 202 s2PrivateStep202Spec.need none s2PrivateStep202Spec.log=some s2PrivateStep202Plan := by
  change compileHmrSourceStepLog s2Step202EntryFBefore s2Step202FrontBank 169 117 ⟨168,168,116,117⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 202 47 none (.early s2Step202CompleteLog)=some (.early s2Step202CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 202<498)]
  rw [s2Step202Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
