(set-info :smt-lib-version 2.6)
(set-logic QF_BV)
(set-info :source |
Generated by: Alexey Vishnyakov, Andrey Fedotov, Daniil Kuts, Alexander Novikov, Darya Parygina, Eli Kobrin, Vlada Logunova, Pavel Belecky, Shamil Kurmangaleev
Generated on: 2021-02-19
Generator: Sydr: Cutting Edge Dynamic Symbolic Execution https://arxiv.org/abs/2011.09269
           Triton framework inside https://triton.quarkslab.com/
Application: Dynamic symbolic execution
Target solver: Yices 2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun file_elf_input_7400 () (_ BitVec 8))
(declare-fun file_elf_input_7401 () (_ BitVec 8))
(declare-fun file_elf_input_7402 () (_ BitVec 8))
(declare-fun file_elf_input_7403 () (_ BitVec 8))
(declare-fun file_elf_input_7404 () (_ BitVec 8))
(declare-fun file_elf_input_7405 () (_ BitVec 8))
(declare-fun file_elf_input_7406 () (_ BitVec 8))
(declare-fun file_elf_input_7407 () (_ BitVec 8))
(define-fun ref!12212 () (_ BitVec 8) file_elf_input_7400) ; Byte reference
(define-fun ref!12213 () (_ BitVec 8) file_elf_input_7401) ; Byte reference
(define-fun ref!12214 () (_ BitVec 8) file_elf_input_7402) ; Byte reference
(define-fun ref!12215 () (_ BitVec 8) file_elf_input_7403) ; Byte reference
(define-fun ref!12216 () (_ BitVec 8) file_elf_input_7404) ; Byte reference
(define-fun ref!12217 () (_ BitVec 8) file_elf_input_7405) ; Byte reference
(define-fun ref!12218 () (_ BitVec 8) file_elf_input_7406) ; Byte reference
(define-fun ref!12219 () (_ BitVec 8) file_elf_input_7407) ; Byte reference
(define-fun ref!25614 () (_ BitVec 8) ref!12219) ; Byte reference - MOVSQ operation - 0x7fede351857b: rep movsq qword ptr [rdi], qword ptr [rsi]
(define-fun ref!25615 () (_ BitVec 8) ref!12218) ; Byte reference - MOVSQ operation - 0x7fede351857b: rep movsq qword ptr [rdi], qword ptr [rsi]
(define-fun ref!25616 () (_ BitVec 8) ref!12217) ; Byte reference - MOVSQ operation - 0x7fede351857b: rep movsq qword ptr [rdi], qword ptr [rsi]
(define-fun ref!25617 () (_ BitVec 8) ref!12216) ; Byte reference - MOVSQ operation - 0x7fede351857b: rep movsq qword ptr [rdi], qword ptr [rsi]
(define-fun ref!25618 () (_ BitVec 8) ref!12215) ; Byte reference - MOVSQ operation - 0x7fede351857b: rep movsq qword ptr [rdi], qword ptr [rsi]
(define-fun ref!25619 () (_ BitVec 8) ref!12214) ; Byte reference - MOVSQ operation - 0x7fede351857b: rep movsq qword ptr [rdi], qword ptr [rsi]
(define-fun ref!25620 () (_ BitVec 8) ref!12213) ; Byte reference - MOVSQ operation - 0x7fede351857b: rep movsq qword ptr [rdi], qword ptr [rsi]
(define-fun ref!25621 () (_ BitVec 8) ref!12212) ; Byte reference - MOVSQ operation - 0x7fede351857b: rep movsq qword ptr [rdi], qword ptr [rsi]
(define-fun ref!30466 () (_ BitVec 8) ref!25614) ; Byte reference - MOV operation - 0x7fede05d4574: mov qword ptr [rbx + 0x30], rax
(define-fun ref!30467 () (_ BitVec 8) ref!25615) ; Byte reference - MOV operation - 0x7fede05d4574: mov qword ptr [rbx + 0x30], rax
(define-fun ref!30468 () (_ BitVec 8) ref!25616) ; Byte reference - MOV operation - 0x7fede05d4574: mov qword ptr [rbx + 0x30], rax
(define-fun ref!30469 () (_ BitVec 8) ref!25617) ; Byte reference - MOV operation - 0x7fede05d4574: mov qword ptr [rbx + 0x30], rax
(define-fun ref!30470 () (_ BitVec 8) ref!25618) ; Byte reference - MOV operation - 0x7fede05d4574: mov qword ptr [rbx + 0x30], rax
(define-fun ref!30471 () (_ BitVec 8) ref!25619) ; Byte reference - MOV operation - 0x7fede05d4574: mov qword ptr [rbx + 0x30], rax
(define-fun ref!30472 () (_ BitVec 8) ref!25620) ; Byte reference - MOV operation - 0x7fede05d4574: mov qword ptr [rbx + 0x30], rax
(define-fun ref!30473 () (_ BitVec 8) ref!25621) ; Byte reference - MOV operation - 0x7fede05d4574: mov qword ptr [rbx + 0x30], rax
(define-fun ref!98759 () (_ BitVec 8) ref!30466) ; Byte reference - MOV operation - 0x7fede359f9bd: mov qword ptr [rsp + 0x40], r8
(define-fun ref!98760 () (_ BitVec 8) ref!30467) ; Byte reference - MOV operation - 0x7fede359f9bd: mov qword ptr [rsp + 0x40], r8
(define-fun ref!98761 () (_ BitVec 8) ref!30468) ; Byte reference - MOV operation - 0x7fede359f9bd: mov qword ptr [rsp + 0x40], r8
(define-fun ref!98762 () (_ BitVec 8) ref!30469) ; Byte reference - MOV operation - 0x7fede359f9bd: mov qword ptr [rsp + 0x40], r8
(define-fun ref!98763 () (_ BitVec 8) ref!30470) ; Byte reference - MOV operation - 0x7fede359f9bd: mov qword ptr [rsp + 0x40], r8
(define-fun ref!98764 () (_ BitVec 8) ref!30471) ; Byte reference - MOV operation - 0x7fede359f9bd: mov qword ptr [rsp + 0x40], r8
(define-fun ref!98765 () (_ BitVec 8) ref!30472) ; Byte reference - MOV operation - 0x7fede359f9bd: mov qword ptr [rsp + 0x40], r8
(define-fun ref!98766 () (_ BitVec 8) ref!30473) ; Byte reference - MOV operation - 0x7fede359f9bd: mov qword ptr [rsp + 0x40], r8
(define-fun ref!99161 () (_ BitVec 8) ref!98759) ; Byte reference - MOV operation - 0x7fede34d7680: mov qword ptr [rbp - 0x520], rax
(define-fun ref!99162 () (_ BitVec 8) ref!98760) ; Byte reference - MOV operation - 0x7fede34d7680: mov qword ptr [rbp - 0x520], rax
(define-fun ref!99163 () (_ BitVec 8) ref!98761) ; Byte reference - MOV operation - 0x7fede34d7680: mov qword ptr [rbp - 0x520], rax
(define-fun ref!99164 () (_ BitVec 8) ref!98762) ; Byte reference - MOV operation - 0x7fede34d7680: mov qword ptr [rbp - 0x520], rax
(define-fun ref!99165 () (_ BitVec 8) ref!98763) ; Byte reference - MOV operation - 0x7fede34d7680: mov qword ptr [rbp - 0x520], rax
(define-fun ref!99166 () (_ BitVec 8) ref!98764) ; Byte reference - MOV operation - 0x7fede34d7680: mov qword ptr [rbp - 0x520], rax
(define-fun ref!99167 () (_ BitVec 8) ref!98765) ; Byte reference - MOV operation - 0x7fede34d7680: mov qword ptr [rbp - 0x520], rax
(define-fun ref!99168 () (_ BitVec 8) ref!98766) ; Byte reference - MOV operation - 0x7fede34d7680: mov qword ptr [rbp - 0x520], rax
(define-fun ref!99174 () (_ BitVec 64) (concat (concat (concat (concat (concat (concat (concat ref!99161 ref!99162) ref!99163) ref!99164) ref!99165) ref!99166) ref!99167) ref!99168)) ; MOV operation - 0x7fede34d7116: mov rdi, qword ptr [rbp - 0x520]
(define-fun ref!99176 () (_ BitVec 64) ref!99174) ; MOV operation - 0x7fede34d3760: mov rax, rdi
(define-fun ref!99179 () (_ BitVec 64) ((_ extract 127 64) (bvmul ((_ zero_extend 64) ref!99176) ((_ zero_extend 64) (_ bv14757395258967641293 64))))) ; MUL operation - 0x7fede34d3767: mul rcx
(define-fun ref!99183 () (_ BitVec 64) (bvlshr ref!99179 (bvand ((_ zero_extend 56) (_ bv3 8)) (_ bv63 64)))) ; SHR operation - 0x7fede34d376a: shr rdx, 3
(define-fun ref!99190 () (_ BitVec 64) (bvadd ref!99183 (bvmul ref!99183 (_ bv4 64)))) ; LEA operation - 0x7fede34d376e: lea rax, [rdx + rdx*4]
(define-fun ref!99192 () (_ BitVec 64) (bvadd ref!99190 ref!99190)) ; ADD operation - 0x7fede34d3772: add rax, rax
(define-fun ref!99200 () (_ BitVec 64) (bvsub ref!99174 ref!99192)) ; SUB operation - 0x7fede34d3775: sub rdi, rax
(define-fun ref!99208 () (_ BitVec 64) (bvand ref!99183 ref!99183)) ; TEST operation - 0x7fede34d3778: test rdx, rdx
(define-fun ref!99213 () (_ BitVec 1) (ite (= ref!99208 (_ bv0 64)) (_ bv1 1) (_ bv0 1))) ; Zero flag - 0x7fede34d3778: test rdx, rdx
(define-fun ref!99219 () (_ BitVec 64) ref!99183) ; MOV operation - 0x7fede34d3780: mov rdi, rdx
(define-fun ref!99224 () (_ BitVec 64) ref!99219) ; MOV operation - 0x7fede34d3760: mov rax, rdi
(define-fun ref!99235 () (_ BitVec 64) ((_ extract 127 64) (bvmul ((_ zero_extend 64) ref!99224) ((_ zero_extend 64) (_ bv14757395258967641293 64))))) ; MUL operation - 0x7fede34d3767: mul rcx
(define-fun ref!99239 () (_ BitVec 64) (bvlshr ref!99235 (bvand ((_ zero_extend 56) (_ bv3 8)) (_ bv63 64)))) ; SHR operation - 0x7fede34d376a: shr rdx, 3
(define-fun ref!99246 () (_ BitVec 64) (bvadd ref!99239 (bvmul ref!99239 (_ bv4 64)))) ; LEA operation - 0x7fede34d376e: lea rax, [rdx + rdx*4]
(define-fun ref!99248 () (_ BitVec 64) (bvadd ref!99246 ref!99246)) ; ADD operation - 0x7fede34d3772: add rax, rax
(define-fun ref!99256 () (_ BitVec 64) (bvsub ref!99219 ref!99248)) ; SUB operation - 0x7fede34d3775: sub rdi, rax
(define-fun ref!99264 () (_ BitVec 64) (bvand ref!99239 ref!99239)) ; TEST operation - 0x7fede34d3778: test rdx, rdx
(define-fun ref!99269 () (_ BitVec 1) (ite (= ref!99264 (_ bv0 64)) (_ bv1 1) (_ bv0 1))) ; Zero flag - 0x7fede34d3778: test rdx, rdx
(assert (bvuge (bvadd (_ bv140659698757440 64) ref!99200) (_ bv140659698757440 64)))
(assert (bvule (bvadd (_ bv140659698757440 64) ref!99200) (_ bv140659698757539 64)))
(assert (= ref!99213 (_ bv0 1)))
(assert (bvuge (bvadd (_ bv140659698757440 64) ref!99256) (_ bv140659698757440 64)))
(assert (bvule (bvadd (_ bv140659698757440 64) ref!99256) (_ bv140659698757539 64)))
(assert (= ref!99269 (_ bv0 1)))
(minimize  file_elf_input_7400 )
(check-sat)
(get-objectives)
(exit)
