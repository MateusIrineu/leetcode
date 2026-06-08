#Definition for singly-linked list.

class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next


class Solution:
    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        numero_str_l1: str = ""
        ponteiro = l1
        while ponteiro:
            numero_str_l1 = str(ponteiro.val) + numero_str_l1
            ponteiro = ponteiro.next
        numero_int_l1 = int(numero_str_l1) if numero_str_l1 else 0

        numero_str_l2: str = ""
        ponteiro = l2
        while ponteiro:
            numero_str_l2 = str(ponteiro.val) + numero_str_l2
            ponteiro = ponteiro.next
        numero_int_l2 = int(numero_str_l2) if numero_str_l2 else 0

        resultado = numero_int_l1 + numero_int_l2

        if resultado == 0:
            return ListNode(0)

        fake_node = ListNode(0)
        ponteiro_resposta = fake_node

        while (resultado > 0):
            resto = resultado % 10
            ponteiro_resposta.next = ListNode(resto)
            ponteiro_resposta = ponteiro_resposta.next
            resultado = resultado // 10

        return fake_node.next