from pathlib import Path

from brownie import accounts, interface
from eth_utils import is_checksum_address
import click



def main():
    dev = accounts.load(click.prompt("Account", type=click.Choice(accounts.load())))
    arb_claim = interface.ITokenDistributor('0x67a24CE4321aB3aF51c2D0a4801c3E111D88C9d9')
    arb_claim.claim({'from': dev})
