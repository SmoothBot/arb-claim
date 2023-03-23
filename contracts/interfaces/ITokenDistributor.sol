// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.7;
pragma experimental ABIEncoderV2;

interface ITokenDistributor {
  function claim (  ) external;
  function claimAndDelegate ( address delegatee, uint256 expiry, uint8 v, bytes32 r, bytes32 s ) external;
  function claimPeriodEnd (  ) external view returns ( uint256 );
  function claimPeriodStart (  ) external view returns ( uint256 );
  function claimableTokens ( address ) external view returns ( uint256 );
  function owner (  ) external view returns ( address );
  function renounceOwnership (  ) external;
//   function setRecipients ( address[] _recipients, uint256[] _claimableAmount ) external;
  function setSweepReciever ( address _sweepReceiver ) external;
  function sweep (  ) external;
  function sweepReceiver (  ) external view returns ( address );
  function token (  ) external view returns ( address );
  function totalClaimable (  ) external view returns ( uint256 );
  function transferOwnership ( address newOwner ) external;
  function withdraw ( uint256 amount ) external;
}
