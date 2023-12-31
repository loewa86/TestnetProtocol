# Solidity API

## DLL

### NULL_NODE_ID

```solidity
uint256 NULL_NODE_ID
```

### Node

```solidity
struct Node {
  uint256 next;
  uint256 prev;
}
```

### SpottedData

```solidity
struct SpottedData {
  mapping(uint256 => struct DLL.Node) dll;
}
```

### isEmpty

```solidity
function isEmpty(struct DLL.SpottedData self) public view returns (bool)
```

### contains

```solidity
function contains(struct DLL.SpottedData self, uint256 _curr) public view returns (bool)
```

### getNext

```solidity
function getNext(struct DLL.SpottedData self, uint256 _curr) public view returns (uint256)
```

### getPrev

```solidity
function getPrev(struct DLL.SpottedData self, uint256 _curr) public view returns (uint256)
```

### getStart

```solidity
function getStart(struct DLL.SpottedData self) public view returns (uint256)
```

### getEnd

```solidity
function getEnd(struct DLL.SpottedData self) public view returns (uint256)
```

### insert

```solidity
function insert(struct DLL.SpottedData self, uint256 _prev, uint256 _curr, uint256 _next) public
```

_Inserts a new node between _prev and _next. When inserting a node already existing in 
  the list it will be automatically removed from the old position._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| self | struct DLL.SpottedData |  |
| _prev | uint256 | the node which _new will be inserted after |
| _curr | uint256 | the id of the new node being inserted |
| _next | uint256 | the node which _new will be inserted before |

### remove

```solidity
function remove(struct DLL.SpottedData self, uint256 _curr) public
```

## IParametersManager

### getMaxTotalWorkers

```solidity
function getMaxTotalWorkers() external view returns (uint256)
```

### getVoteQuorum

```solidity
function getVoteQuorum() external view returns (uint256)
```

### get_MAX_UPDATE_ITERATIONS

```solidity
function get_MAX_UPDATE_ITERATIONS() external view returns (uint256)
```

### get_MAX_CONTRACT_STORED_BATCHES

```solidity
function get_MAX_CONTRACT_STORED_BATCHES() external view returns (uint256)
```

### get_MAX_SUCCEEDING_NOVOTES

```solidity
function get_MAX_SUCCEEDING_NOVOTES() external view returns (uint256)
```

### get_NOVOTE_REGISTRATION_WAIT_DURATION

```solidity
function get_NOVOTE_REGISTRATION_WAIT_DURATION() external view returns (uint256)
```

### getStakeManager

```solidity
function getStakeManager() external view returns (address)
```

### getRepManager

```solidity
function getRepManager() external view returns (address)
```

### getAddressManager

```solidity
function getAddressManager() external view returns (address)
```

### getRewardManager

```solidity
function getRewardManager() external view returns (address)
```

### getArchivingSystem

```solidity
function getArchivingSystem() external view returns (address)
```

### getSpottingSystem

```solidity
function getSpottingSystem() external view returns (address)
```

### getComplianceSystem

```solidity
function getComplianceSystem() external view returns (address)
```

### getIndexingSystem

```solidity
function getIndexingSystem() external view returns (address)
```

### getsFuelSystem

```solidity
function getsFuelSystem() external view returns (address)
```

### getExordeToken

```solidity
function getExordeToken() external view returns (address)
```

### get_SPOT_DATA_BATCH_SIZE

```solidity
function get_SPOT_DATA_BATCH_SIZE() external view returns (uint256)
```

### get_SPOT_MIN_STAKE

```solidity
function get_SPOT_MIN_STAKE() external view returns (uint256)
```

### get_SPOT_MIN_CONSENSUS_WORKER_COUNT

```solidity
function get_SPOT_MIN_CONSENSUS_WORKER_COUNT() external view returns (uint256)
```

### get_SPOT_MAX_CONSENSUS_WORKER_COUNT

```solidity
function get_SPOT_MAX_CONSENSUS_WORKER_COUNT() external view returns (uint256)
```

### get_SPOT_COMMIT_ROUND_DURATION

```solidity
function get_SPOT_COMMIT_ROUND_DURATION() external view returns (uint256)
```

### get_SPOT_REVEAL_ROUND_DURATION

```solidity
function get_SPOT_REVEAL_ROUND_DURATION() external view returns (uint256)
```

### get_SPOT_MIN_REP_SpotData

```solidity
function get_SPOT_MIN_REP_SpotData() external view returns (uint256)
```

### get_SPOT_MIN_REWARD_SpotData

```solidity
function get_SPOT_MIN_REWARD_SpotData() external view returns (uint256)
```

### get_SPOT_MIN_REP_DataValidation

```solidity
function get_SPOT_MIN_REP_DataValidation() external view returns (uint256)
```

### get_SPOT_MIN_REWARD_DataValidation

```solidity
function get_SPOT_MIN_REWARD_DataValidation() external view returns (uint256)
```

### get_SPOT_INTER_ALLOCATION_DURATION

```solidity
function get_SPOT_INTER_ALLOCATION_DURATION() external view returns (uint256)
```

### get_SPOT_TOGGLE_ENABLED

```solidity
function get_SPOT_TOGGLE_ENABLED() external view returns (bool)
```

### get_SPOT_TIMEFRAME_DURATION

```solidity
function get_SPOT_TIMEFRAME_DURATION() external view returns (uint256)
```

### get_SPOT_GLOBAL_MAX_SPOT_PER_PERIOD

```solidity
function get_SPOT_GLOBAL_MAX_SPOT_PER_PERIOD() external view returns (uint256)
```

### get_SPOT_MAX_SPOT_PER_USER_PER_PERIOD

```solidity
function get_SPOT_MAX_SPOT_PER_USER_PER_PERIOD() external view returns (uint256)
```

### get_SPOT_NB_TIMEFRAMES

```solidity
function get_SPOT_NB_TIMEFRAMES() external view returns (uint256)
```

## IStakeManager

### ProxyStakeAllocate

```solidity
function ProxyStakeAllocate(uint256 _StakeAllocation, address _stakeholder) external returns (bool)
```

### ProxyStakeDeallocate

```solidity
function ProxyStakeDeallocate(uint256 _StakeToDeallocate, address _stakeholder) external returns (bool)
```

### AvailableStakedAmountOf

```solidity
function AvailableStakedAmountOf(address _stakeholder) external view returns (uint256)
```

### AllocatedStakedAmountOf

```solidity
function AllocatedStakedAmountOf(address _stakeholder) external view returns (uint256)
```

## IRepManager

### mintReputationForWork

```solidity
function mintReputationForWork(uint256 _amount, address _beneficiary, bytes32) external returns (bool)
```

### burnReputationForWork

```solidity
function burnReputationForWork(uint256 _amount, address _beneficiary, bytes32) external returns (bool)
```

## IRewardManager

### ProxyAddReward

```solidity
function ProxyAddReward(uint256 _RewardsAllocation, address user_) external returns (bool)
```

## IAddressManager

### isMasterOf

```solidity
function isMasterOf(address _master, address _address) external returns (bool)
```

### isSubWorkerOf

```solidity
function isSubWorkerOf(address _master, address _address) external returns (bool)
```

### AreMasterSubLinked

```solidity
function AreMasterSubLinked(address _master, address _address) external returns (bool)
```

### getMasterSubs

```solidity
function getMasterSubs(address _master) external view returns (address)
```

### getMaster

```solidity
function getMaster(address _worker) external view returns (address)
```

### FetchHighestMaster

```solidity
function FetchHighestMaster(address _worker) external view returns (address)
```

## IFollowingSystem

### Ping

```solidity
function Ping(uint256 CheckedBatchId) external
```

### TriggerUpdate

```solidity
function TriggerUpdate(uint256 iter) external
```

## DataSpotting

### _SpotSubmitted

```solidity
event _SpotSubmitted(uint256 DataID, string file_hash, string URL_domain, address sender)
```

### _SpotCheckCommitted

```solidity
event _SpotCheckCommitted(uint256 DataID, uint256 numTokens, address voter)
```

### _SpotCheckRevealed

```solidity
event _SpotCheckRevealed(uint256 DataID, uint256 numTokens, uint256 votesFor, uint256 votesAgainst, uint256 choice, address voter)
```

### _BatchValidated

```solidity
event _BatchValidated(uint256 DataID, string file_hash, bool isVotePassed)
```

### _WorkAllocated

```solidity
event _WorkAllocated(uint256 batchID, address worker)
```

### _WorkerRegistered

```solidity
event _WorkerRegistered(address worker, uint256 timestamp)
```

### _WorkerUnregistered

```solidity
event _WorkerUnregistered(address worker, uint256 timestamp)
```

### _StakeAllocated

```solidity
event _StakeAllocated(uint256 numTokens, address voter)
```

### _VotingRightsWithdrawn

```solidity
event _VotingRightsWithdrawn(uint256 numTokens, address voter)
```

### _TokensRescued

```solidity
event _TokensRescued(uint256 DataID, address voter)
```

### _DataBatchDeleted

```solidity
event _DataBatchDeleted(uint256 batchID)
```

### BytesFailure

```solidity
event BytesFailure(bytes bytesFailure)
```

### TimeframeCounter

```solidity
struct TimeframeCounter {
  uint256 timestamp;
  uint256 counter;
}
```

### DataStatus

```solidity
enum DataStatus {
  TBD,
  APPROVED,
  REJECTED,
  FLAGGED
}
```

### WorkerState

```solidity
struct WorkerState {
  uint256 allocated_work_batch;
  uint256 succeeding_novote_count;
  uint256 last_interaction_date;
  bool registered;
  bool unregistration_request;
  uint256 registration_date;
  uint256 allocated_batch_counter;
  uint256 majority_counter;
  uint256 minority_counter;
}
```

### BatchMetadata

```solidity
struct BatchMetadata {
  uint256 start_idx;
  uint256 counter;
  uint256 uncommited_workers;
  uint256 unrevealed_workers;
  bool complete;
  bool checked;
  bool allocated_to_work;
  uint256 commitEndDate;
  uint256 revealEndDate;
  uint256 votesFor;
  uint256 votesAgainst;
  string batchIPFSfile;
  uint256 item_count;
  enum DataSpotting.DataStatus status;
}
```

### SpottedData

```solidity
struct SpottedData {
  string ipfs_hash;
  address author;
  uint256 timestamp;
  uint256 item_count;
  string URL_domain;
  string extra;
  enum DataSpotting.DataStatus status;
}
```

### LastAllocationTime

```solidity
uint256 LastAllocationTime
```

### NB_TIMEFRAMES

```solidity
uint256 NB_TIMEFRAMES
```

### GlobalSpotFlowManager

```solidity
struct DataSpotting.TimeframeCounter[15] GlobalSpotFlowManager
```

### ItemFlowManager

```solidity
struct DataSpotting.TimeframeCounter[15] ItemFlowManager
```

### UserChecksCommits

```solidity
mapping(address => mapping(uint256 => bool)) UserChecksCommits
```

### UserChecksReveals

```solidity
mapping(address => mapping(uint256 => bool)) UserChecksReveals
```

### UserVotes

```solidity
mapping(uint256 => mapping(address => uint256)) UserVotes
```

### UserNewFiles

```solidity
mapping(uint256 => mapping(address => string)) UserNewFiles
```

### UserBatchCounts

```solidity
mapping(uint256 => mapping(address => uint256)) UserBatchCounts
```

### UserBatchFrom

```solidity
mapping(uint256 => mapping(address => string)) UserBatchFrom
```

### UserSubmissions

```solidity
mapping(address => uint256[]) UserSubmissions
```

### dllMap

```solidity
mapping(address => struct DLL.SpottedData) dllMap
```

### store

```solidity
mapping(bytes32 => uint256) store
```

### SpotsMapping

```solidity
mapping(uint256 => struct DataSpotting.SpottedData) SpotsMapping
```

### DataBatch

```solidity
mapping(uint256 => struct DataSpotting.BatchMetadata) DataBatch
```

### WorkersState

```solidity
mapping(address => struct DataSpotting.WorkerState) WorkersState
```

### WorkersSpotFlowManager

```solidity
mapping(address => struct DataSpotting.TimeframeCounter[15]) WorkersSpotFlowManager
```

### SystemStakedTokenBalance

```solidity
mapping(address => uint256) SystemStakedTokenBalance
```

### WorkersPerBatch

```solidity
mapping(uint256 => address[]) WorkersPerBatch
```

### availableWorkers

```solidity
address[] availableWorkers
```

### busyWorkers

```solidity
address[] busyWorkers
```

### toUnregisterWorkers

```solidity
address[] toUnregisterWorkers
```

### isAvailableWorker

```solidity
mapping(address => bool) isAvailableWorker
```

### isBusyWorker

```solidity
mapping(address => bool) isBusyWorker
```

### isToUnregisterWorker

```solidity
mapping(address => bool) isToUnregisterWorker
```

### availableWorkersIndex

```solidity
mapping(address => uint256) availableWorkersIndex
```

### busyWorkersIndex

```solidity
mapping(address => uint256) busyWorkersIndex
```

### toUnregisterWorkersIndex

```solidity
mapping(address => uint256) toUnregisterWorkersIndex
```

### LastRandomSeed

```solidity
uint256 LastRandomSeed
```

### DataNonce

```solidity
uint256 DataNonce
```

### BatchDeletionCursor

```solidity
uint256 BatchDeletionCursor
```

### LastBatchCounter

```solidity
uint256 LastBatchCounter
```

### BatchCheckingCursor

```solidity
uint256 BatchCheckingCursor
```

### AllocatedBatchCursor

```solidity
uint256 AllocatedBatchCursor
```

### AllTxsCounter

```solidity
uint256 AllTxsCounter
```

### AllItemCounter

```solidity
uint256 AllItemCounter
```

### AcceptedBatchsCounter

```solidity
uint256 AcceptedBatchsCounter
```

### RejectedBatchsCounter

```solidity
uint256 RejectedBatchsCounter
```

### NotCommitedCounter

```solidity
uint256 NotCommitedCounter
```

### NotRevealedCounter

```solidity
uint256 NotRevealedCounter
```

### InstantSpotRewards

```solidity
bool InstantSpotRewards
```

### InstantRevealRewards

```solidity
bool InstantRevealRewards
```

### InstantSpotRewardsDivider

```solidity
uint256 InstantSpotRewardsDivider
```

### InstantRevealRewardsDivider

```solidity
uint256 InstantRevealRewardsDivider
```

### MaxPendingDataBatchCount

```solidity
uint256 MaxPendingDataBatchCount
```

### SPOT_FILE_SIZE

```solidity
uint256 SPOT_FILE_SIZE
```

### GAS_LEFT_LIMIT

```solidity
uint256 GAS_LEFT_LIMIT
```

### STAKING_REQUIREMENT_TOGGLE_ENABLED

```solidity
bool STAKING_REQUIREMENT_TOGGLE_ENABLED
```

### TRIGGER_WITH_SPOTDATA_TOGGLE_ENABLED

```solidity
bool TRIGGER_WITH_SPOTDATA_TOGGLE_ENABLED
```

### STRICT_RANDOMNESS_REQUIREMENT

```solidity
bool STRICT_RANDOMNESS_REQUIREMENT
```

### VALIDATE_ON_LAST_REVEAL

```solidity
bool VALIDATE_ON_LAST_REVEAL
```

### FORCE_VALIDATE_BATCH_FILE

```solidity
bool FORCE_VALIDATE_BATCH_FILE
```

### token

```solidity
contract IERC20 token
```

### Parameters

```solidity
contract IParametersManager Parameters
```

### constructor

```solidity
constructor(address EXDT_token_) public
```

_Initializer. Can only be called once._

### destroyContract

```solidity
function destroyContract() public
```

_Destroy Contract, important to release storage space if critical_

### updateParametersManager

```solidity
function updateParametersManager(address addr) public
```

Updates Parameters Manager

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| addr | address | address of the Parameter Contract |

### toggleRequiredStaking

```solidity
function toggleRequiredStaking(bool toggle_) public
```

Enable or disable Required Staking for participation

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| toggle_ | bool | boolean |

### toggleTriggerSpotData

```solidity
function toggleTriggerSpotData(bool toggle_) public
```

Enable or disable Triggering Updates when Spotting Data

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| toggle_ | bool | boolean |

### toggleStrictRandomness

```solidity
function toggleStrictRandomness(bool toggle_) public
```

Enable or disable Strict Randomness

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| toggle_ | bool | boolean |

### toggleValidateLastReveal

```solidity
function toggleValidateLastReveal(bool toggle_) public
```

Enable or disable Automatic Batch Validation when last to reveal

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| toggle_ | bool | boolean |

### toggleForceValidateBatchFile

```solidity
function toggleForceValidateBatchFile(bool toggle_) public
```

Enable or disable Forcing the Validation of a Batch File in some conditions

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| toggle_ | bool | boolean |

### updateInstantSpotRewards

```solidity
function updateInstantSpotRewards(bool state_, uint256 divider_) public
```

Enable or disable instant rewards when SpottingData (Testnet)

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| state_ | bool | boolean |
| divider_ | uint256 | base rewards divider |

### updateInstantRevealRewards

```solidity
function updateInstantRevealRewards(bool state_, uint256 divider_) public
```

Enable or disable instant rewards when Revealing (Testnet)

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| state_ | bool | boolean |
| divider_ | uint256 | base rewards divider |

### updateMaxPendingDataBatch

```solidity
function updateMaxPendingDataBatch(uint256 MaxPendingDataBatchCount_) public
```

update MaxPendingDataBatchCount, limiting the queue of data to validate

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| MaxPendingDataBatchCount_ | uint256 | max queue size |

### updateSpotFileSize

```solidity
function updateSpotFileSize(uint256 file_size_) public
```

update file_size_, the spot atomic file size

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| file_size_ | uint256 | spot atomic file size |

### updateGasLeftLimit

```solidity
function updateGasLeftLimit(uint256 new_limit_) public
```

update Gas Left limit, limiting the validation loops iterations

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| new_limit_ | uint256 | gas limit in wei |

### getAttribute

```solidity
function getAttribute(bytes32 _UUID, string _attrName) public view returns (uint256)
```

getAttribute from UUID and attrName

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _UUID | bytes32 | unique identifier |
| _attrName | string | name of the attribute |

### setAttribute

```solidity
function setAttribute(bytes32 _UUID, string _attrName, uint256 _attrVal) internal
```

setAttribute from UUID , attrName & attrVal

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _UUID | bytes32 | unique identifier |
| _attrName | string | name of the attribute |
| _attrVal | uint256 | value of the attribute |

### _retrieveSFuel

```solidity
function _retrieveSFuel() internal
```

Refill the msg.sender with sFuel. Skale gasless "gas station network" equivalent

### isInAvailableWorkers

```solidity
function isInAvailableWorkers(address _worker) public view returns (bool)
```

Checks if Worker is Available

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _worker | address | worker address |

### isInBusyWorkers

```solidity
function isInBusyWorkers(address _worker) public view returns (bool)
```

Checks if Worker is Busy

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _worker | address | worker address |

### IsInLogoffList

```solidity
function IsInLogoffList(address _worker) public view returns (bool)
```

Checks if Worker in the "to log off" list

### REMOVED_WORKER_INDEX_VALUE

```solidity
uint256 REMOVED_WORKER_INDEX_VALUE
```

### PopFromAvailableWorkers

```solidity
function PopFromAvailableWorkers(address _worker) internal
```

Pop _worker from the Busy workers

### PopFromBusyWorkers

```solidity
function PopFromBusyWorkers(address _worker) internal
```

Pop worker from the Busy workers

### PopFromLogoffList

```solidity
function PopFromLogoffList(address _worker) internal
```

### PushInAvailableWorkers

```solidity
function PushInAvailableWorkers(address _worker) internal
```

### PushInBusyWorkers

```solidity
function PushInBusyWorkers(address _worker) internal
```

### isWorkerAllocatedToBatch

```solidity
function isWorkerAllocatedToBatch(uint256 _DataBatchId, address _worker) public view returns (bool)
```

### SelectAddressForUser

```solidity
function SelectAddressForUser(address _worker, uint256 _TokensAmountToAllocate) public view returns (address)
```

### RegisterWorker

```solidity
function RegisterWorker() public
```

### UnregisterWorker

```solidity
function UnregisterWorker() public
```

### processLogoffRequests

```solidity
function processLogoffRequests(uint256 n_iteration) internal
```

### deleteData

```solidity
function deleteData(uint256 _DataId) public
```

Delete Spotted Data with ID _DataId

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataId | uint256 | index of the data to delete |

### deleteDataBatch

```solidity
function deleteDataBatch(uint256 _BatchId) public
```

Delete DataBatch with ID _BatchId

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _BatchId | uint256 | index of the batch to delete |

### deleteOldData

```solidity
function deleteOldData() internal
```

Delete Data in a rolling window

### TriggerUpdate

```solidity
function TriggerUpdate(uint256 iteration_count) public
```

Trigger potential Data Batches Validations & Work Allocations

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| iteration_count | uint256 | max number of iterations |

### TriggerAllocations

```solidity
function TriggerAllocations(uint256 iteration_count) public
```

Trigger at most iteration_count Work Allocations (N workers on a Batch)

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| iteration_count | uint256 | max number of iterations |

### TriggerValidation

```solidity
function TriggerValidation(uint256 iteration_count) public
```

Trigger at most iteration_count Ended DataBatch validations

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| iteration_count | uint256 | max number of iterations |

### AreStringsEqual

```solidity
function AreStringsEqual(string _a, string _b) public pure returns (bool)
```

Checks if two strings are equal

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _a | string | string |
| _b | string | string |

### ValidateDataBatch

```solidity
function ValidateDataBatch(uint256 _DataBatchId) internal
```

Trigger the validation of DataBatch

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId | uint256 | Integer identifier associated with target SpottedData |

### AllocateWork

```solidity
function AllocateWork() internal
```

Allocate last data batch to be checked by K out N currently available workers.

### IsNewWorkAvailable

```solidity
function IsNewWorkAvailable(address user_) public view returns (bool)
```

To know if new work is available for worker's address user_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| user_ | address | user |

### GetCurrentWork

```solidity
function GetCurrentWork(address user_) public view returns (uint256)
```

Get newest work for user

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| user_ | address | user |

### updateGlobalSpotFlow

```solidity
function updateGlobalSpotFlow() public
```

Update the global sliding counter of spotted data, measuring the spots per TIMEFRAME (hour)

### getGlobalPeriodSpotCount

```solidity
function getGlobalPeriodSpotCount() public view returns (uint256)
```

Count the total spots per TIMEFRAME (hour)

### updateItemCount

```solidity
function updateItemCount() public
```

Update the global sliding counter of validated data, measuring the URL per TIMEFRAME (hour)

### getPeriodItemCount

```solidity
function getPeriodItemCount() public view returns (uint256)
```

Count the total spots per TIMEFRAME (hour)

### updateUserSpotFlow

```solidity
function updateUserSpotFlow(address user_) public
```

Update the total spots per TIMEFRAME (hour) per USER

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| user_ | address | user |

### getUserPeriodSpotCount

```solidity
function getUserPeriodSpotCount(address user_) public view returns (uint256)
```

Count the total spots per TIMEFRAME (hour) per USER

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| user_ | address | user |

### SpotData

```solidity
function SpotData(string[] file_hashs_, string[] URL_domains_, uint256[] item_counts_, string extra_) public returns (uint256 Dataid_)
```

Submit new data to the protocol, in the stream, which will be added to the latest batch
            file_hashs_, URL_domains_ & item_counts_ must be of same length

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| file_hashs_ | string[] | array of IPFS hashes, json format |
| URL_domains_ | string[] | array of URL top domain per file (for statistics purpose) |
| item_counts_ | uint256[] | array of size (in number of json items) |
| extra_ | string | extra information (for indexing / archival purpose) |

### commitSpotCheck

```solidity
function commitSpotCheck(uint256 _DataBatchId, bytes32 _encryptedHash, bytes32 _encryptedVote, uint256 _BatchCount, string _From) public
```

Commits spot-check-vote on a DataBatch

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId | uint256 | DataBatch ID |
| _encryptedHash | bytes32 | encrypted hash of the submitted IPFS file (json format) |
| _encryptedVote | bytes32 | encrypted hash of the submitted IPFS vote |
| _BatchCount | uint256 | Batch Count in number of items (in the aggregated IPFS hash) |
| _From | string | extra information (for indexing / archival purpose) |

### revealSpotCheck

```solidity
function revealSpotCheck(uint256 _DataBatchId, string _clearIPFSHash, uint256 _clearVote, uint256 _salt) public
```

Reveals spot-check-vote on a DataBatch

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId | uint256 | DataBatch ID |
| _clearIPFSHash | string | clear hash of the submitted IPFS file (json format) |
| _clearVote | uint256 | clear hash of the submitted IPFS vote |
| _salt | uint256 | arbitraty integer used to hash the previous commit & verify the reveal |

### requestAllocatedStake

```solidity
function requestAllocatedStake(uint256 _numTokens, address user_) internal
```

Loads _numTokens ERC20 tokens into the voting contract for one-to-one voting rights

_Assumes that msg.sender has approved voting contract to spend on their behalf_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _numTokens | uint256 | The number of votingTokens desired in exchange for ERC20 tokens |
| user_ | address | The user address |

### withdrawVotingRights

```solidity
function withdrawVotingRights(uint256 _numTokens, address user_) public
```

Withdraw _numTokens ERC20 tokens from the voting contract, revoking these voting rights

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _numTokens | uint256 | The number of ERC20 tokens desired in exchange for voting rights |
| user_ | address | The user address |

### getSystemTokenBalance

```solidity
function getSystemTokenBalance(address user_) public view returns (uint256 tokens)
```

get Locked Token for the current Contract (WorkSystem)

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| user_ | address | The user address |

### getAcceptedBatchesCount

```solidity
function getAcceptedBatchesCount() public view returns (uint256 count)
```

Get Total Accepted Batches

### getRejectedBatchesCount

```solidity
function getRejectedBatchesCount() public view returns (uint256 count)
```

Get Total Rejected Batches

### rescueTokens

```solidity
function rescueTokens(uint256 _DataBatchId) public
```

_Unlocks tokens locked in unrevealed spot-check-vote where SpottedData has ended_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId | uint256 | Integer identifier associated with the target SpottedData |

### rescueTokensInMultipleDatas

```solidity
function rescueTokensInMultipleDatas(uint256[] _DataBatchIDs) public
```

_Unlocks tokens locked in unrevealed spot-check-votes where Datas have ended_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchIDs | uint256[] | Array of integer identifiers associated with the target Datas |

### getIPFShashesForBatch

```solidity
function getIPFShashesForBatch(uint256 _DataBatchId) public view returns (string[])
```

get all IPFS hashes, input of the batch

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId | uint256 | ID of the batch |

### getMultiBatchIPFShashes

```solidity
function getMultiBatchIPFShashes(uint256 _DataBatchId_a, uint256 _DataBatchId_b) public view returns (string[])
```

get all IPFS hashes, input of batchs, between batch indices A and B (a < B)

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId_a | uint256 | ID of the starting batch |
| _DataBatchId_b | uint256 | ID of the ending batch (included) |

### getBatchCountForBatch

```solidity
function getBatchCountForBatch(uint256 _DataBatchId_a, uint256 _DataBatchId_b) public view returns (uint256 AverageURLCount, uint256[] batchCounts)
```

get all item counts for all batches between batch indices A and B (a < B)

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId_a | uint256 | ID of the starting batch |
| _DataBatchId_b | uint256 | ID of the ending batch (included) |

### getDomainsForBatch

```solidity
function getDomainsForBatch(uint256 _DataBatchId) public view returns (string[])
```

get top domain URL for a given batch

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId | uint256 | ID of the batch |

### getFromsForBatch

```solidity
function getFromsForBatch(uint256 _DataBatchId) public view returns (string[])
```

get the From information for a given batch

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId | uint256 | ID of the batch |

### getVotesForBatch

```solidity
function getVotesForBatch(uint256 _DataBatchId) public view returns (uint256[])
```

get all Votes on a given batch

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId | uint256 | ID of the batch |

### getSubmittedFilesForBatch

```solidity
function getSubmittedFilesForBatch(uint256 _DataBatchId) public view returns (string[])
```

get all IPFS files submitted (during commit/reveal) on a given batch

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId | uint256 | ID of the batch |

### getActiveWorkersCount

```solidity
function getActiveWorkersCount() public view returns (uint256 numWorkers)
```

Get all current workers

### getAvailableWorkersCount

```solidity
function getAvailableWorkersCount() public view returns (uint256 numWorkers)
```

Get all available (idle) workers

### getBusyWorkersCount

```solidity
function getBusyWorkersCount() public view returns (uint256 numWorkers)
```

Get all busy workers

### validPosition

```solidity
function validPosition(uint256 _prevID, uint256 _nextID, address _voter, uint256 _numTokens) public view returns (bool APPROVED)
```

_Compares previous and next SpottedData's committed tokens for sorting purposes_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _prevID | uint256 | Integer identifier associated with previous SpottedData in sorted order |
| _nextID | uint256 | Integer identifier associated with next SpottedData in sorted order |
| _voter | address | Address of user to check DLL position for |
| _numTokens | uint256 | The number of tokens to be committed towards the SpottedData (used for sorting) |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| APPROVED | bool | Boolean indication of if the specified position maintains the sort |

### isPassed

```solidity
function isPassed(uint256 _DataBatchId) public view returns (bool passed)
```

Determines if proposal has passed

_Check if votesFor out of totalSpotChecks exceeds votesQuorum (requires DataEnded)_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId | uint256 | Integer identifier associated with target SpottedData |

### getNumPassingTokens

```solidity
function getNumPassingTokens(address _voter, uint256 _DataBatchId, uint256 _salt) public view returns (uint256 correctSpotChecks)
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _voter | address |  |
| _DataBatchId | uint256 | Integer identifier associated with target SpottedData |
| _salt | uint256 | Arbitrarily chosen integer used to generate secretHash |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| correctSpotChecks | uint256 | Number of tokens voted for winning option |

### DataEnded

```solidity
function DataEnded(uint256 _DataBatchId) public view returns (bool ended)
```

Determines if SpottedData is over

_Checks isExpired for specified SpottedData's revealEndDate_

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| ended | bool | Boolean indication of whether Dataing period is over |

### getUserDatas

```solidity
function getUserDatas(address user) public view returns (uint256[] user_Datas)
```

Get User Submitted Data (Spots)

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| user_Datas | uint256[] | the array of Data Spotted/Submitted by the user |

### getLastDataId

```solidity
function getLastDataId() public view returns (uint256 DataId)
```

get Last Data Id

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| DataId | uint256 |  |

### getLastBatchId

```solidity
function getLastBatchId() public view returns (uint256 LastBatchId)
```

get Last Batch Id

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| LastBatchId | uint256 |  |

### getLastCheckedBatchId

```solidity
function getLastCheckedBatchId() public view returns (uint256 LastCheckedBatchId)
```

get Last Checked Batch Id

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| LastCheckedBatchId | uint256 |  |

### getLastAllocatedBatchId

```solidity
function getLastAllocatedBatchId() public view returns (uint256 LastAllocatedBatchId)
```

getLastAllocatedBatchId

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| LastAllocatedBatchId | uint256 |  |

### getBatchByID

```solidity
function getBatchByID(uint256 _DataBatchId) public view returns (struct DataSpotting.BatchMetadata batch)
```

get DataBatch By ID

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| batch | struct DataSpotting.BatchMetadata | as BatchMetadata struct |

### getBatchIPFSFileByID

```solidity
function getBatchIPFSFileByID(uint256 _DataBatchId) public view returns (string batch)
```

get Output Batch IPFS File By ID

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| batch | string | IPFS File |

### getBatchsFilesByID

```solidity
function getBatchsFilesByID(uint256 _DataBatchId_a, uint256 _DataBatchId_b) public view returns (string[])
```

get all Output Batch IPFS Files (hashes),between batch indices A and B (a < B)

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId_a | uint256 | ID of the starting batch |
| _DataBatchId_b | uint256 | ID of the ending batch (included) |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | string[] | array of Batch File ID between index A and B (excluded), example getBatchsFilesByID(0,10) -> 0,9 |

### getDataByID

```solidity
function getDataByID(uint256 _DataId) public view returns (struct DataSpotting.SpottedData data)
```

get Data By ID

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| data | struct DataSpotting.SpottedData | as SpottedData struct |

### getTxCounter

```solidity
function getTxCounter() public view returns (uint256 Counter)
```

getCounter

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| Counter | uint256 | of all "accepted transactions" |

### getItemCounter

```solidity
function getItemCounter() public view returns (uint256 Counter)
```

getCounter

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| Counter | uint256 | of the last Dataed a user started |

### DataCommitEndDate

```solidity
function DataCommitEndDate(uint256 _DataBatchId) public view returns (uint256 commitEndDate)
```

Determines DataCommitEndDate

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| commitEndDate | uint256 | indication of whether Dataing period is over |

### DataRevealEndDate

```solidity
function DataRevealEndDate(uint256 _DataBatchId) public view returns (uint256 revealEndDate)
```

Determines DataRevealEndDate

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| revealEndDate | uint256 | indication of whether Dataing period is over |

### commitPeriodActive

```solidity
function commitPeriodActive(uint256 _DataBatchId) public view returns (bool active)
```

Checks if the commit period is still active for the specified SpottedData

_Checks isExpired for the specified SpottedData's commitEndDate_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId | uint256 | Integer identifier associated with target SpottedData |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| active | bool | Boolean indication of isCommitPeriodActive for target SpottedData |

### commitPeriodOver

```solidity
function commitPeriodOver(uint256 _DataBatchId) public view returns (bool active)
```

Checks if the commit period is over

_Checks isExpired for the specified SpottedData's commitEndDate_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId | uint256 | Integer identifier associated with target SpottedData |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| active | bool | Boolean indication of isCommitPeriodActive for target SpottedData |

### remainingCommitDuration

```solidity
function remainingCommitDuration(uint256 _DataBatchId) public view returns (uint256 remainingTime)
```

Checks if the commit period is still active for the specified SpottedData

_Checks isExpired for the specified SpottedData's commitEndDate_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId | uint256 | Integer identifier associated with target SpottedData |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| remainingTime | uint256 | Integer |

### revealPeriodActive

```solidity
function revealPeriodActive(uint256 _DataBatchId) public view returns (bool active)
```

Checks if the reveal period is still active for the specified SpottedData

_Checks isExpired for the specified SpottedData's revealEndDate_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId | uint256 | Integer identifier associated with target SpottedData |

### revealPeriodOver

```solidity
function revealPeriodOver(uint256 _DataBatchId) public view returns (bool active)
```

Checks if the reveal period is over

_Checks isExpired for the specified SpottedData's revealEndDate_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId | uint256 | Integer identifier associated with target SpottedData |

### remainingRevealDuration

```solidity
function remainingRevealDuration(uint256 _DataBatchId) public view returns (uint256 remainingTime)
```

Checks if the commit period is still active for the specified SpottedData

_Checks isExpired for the specified SpottedData's commitEndDate_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId | uint256 | Integer identifier associated with target SpottedData |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| remainingTime | uint256 | Integer indication of isCommitPeriodActive for target SpottedData |

### didCommit

```solidity
function didCommit(address _voter, uint256 _DataBatchId) public view returns (bool committed)
```

_Checks if user has committed for specified SpottedData_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _voter | address | Address of user to check against |
| _DataBatchId | uint256 | Integer identifier associated with target SpottedData |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| committed | bool | Boolean indication of whether user has committed |

### didReveal

```solidity
function didReveal(address _voter, uint256 _DataBatchId) public view returns (bool revealed)
```

_Checks if user has revealed for specified SpottedData_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _voter | address | Address of user to check against |
| _DataBatchId | uint256 | Integer identifier associated with target SpottedData |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| revealed | bool | Boolean indication of whether user has revealed |

### DataExists

```solidity
function DataExists(uint256 _DataBatchId) public view returns (bool exists)
```

_Checks if a SpottedData exists_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _DataBatchId | uint256 | The DataID whose existance is to be evaluated. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| exists | bool | Boolean Indicates whether a SpottedData exists for the provided DataID |

### AmIRegistered

```solidity
function AmIRegistered() public view returns (bool passed)
```

### isWorkerRegistered

```solidity
function isWorkerRegistered(address _worker) public view returns (bool passed)
```

### getCommitVoteHash

```solidity
function getCommitVoteHash(address _voter, uint256 _DataBatchId) public view returns (bytes32 commitHash)
```

_Gets the bytes32 commitHash property of target SpottedData_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _voter | address | Address of user to check against |
| _DataBatchId | uint256 | Integer identifier associated with target SpottedData |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| commitHash | bytes32 | Bytes32 hash property attached to target SpottedData |

### getCommitIPFSHash

```solidity
function getCommitIPFSHash(address _voter, uint256 _DataBatchId) public view returns (bytes32 commitHash)
```

_Gets the bytes32 commitHash property of target SpottedData_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _voter | address | Address of user to check against |
| _DataBatchId | uint256 | Integer identifier associated with target SpottedData |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| commitHash | bytes32 | Bytes32 hash property attached to target SpottedData |

### getEncryptedHash

```solidity
function getEncryptedHash(uint256 _clearVote, uint256 _salt) public pure returns (bytes32 keccak256hash)
```

_Gets the bytes32 commitHash property of target SpottedData_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _clearVote | uint256 | vote Option |
| _salt | uint256 | is the salt |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| keccak256hash | bytes32 | Bytes32 hash property attached to target SpottedData |

### getEncryptedStringHash

```solidity
function getEncryptedStringHash(string _hash, uint256 _salt) public pure returns (bytes32 keccak256hash)
```

_Gets the bytes32 commitHash property of target FormattedData_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _hash | string | ipfs hash of aggregated data in a string |
| _salt | uint256 | is the salt |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| keccak256hash | bytes32 | Bytes32 hash property attached to target FormattedData |

### getNumTokens

```solidity
function getNumTokens(address _voter, uint256 _DataBatchId) public view returns (uint256 numTokens)
```

_Wrapper for getAttribute with attrName="numTokens"_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _voter | address | Address of user to check against |
| _DataBatchId | uint256 | Integer identifier associated with target SpottedData |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| numTokens | uint256 | Number of tokens committed to SpottedData in sorted SpottedData-linked-list |

### getLastNode

```solidity
function getLastNode(address _voter) public view returns (uint256 DataID)
```

_Gets top element of sorted SpottedData-linked-list_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _voter | address | Address of user to check against |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| DataID | uint256 | Integer identifier to SpottedData with maximum number of tokens committed to it |

### getLockedTokens

```solidity
function getLockedTokens(address _voter) public view returns (uint256 numTokens)
```

_Gets the numTokens property of getLastNode_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _voter | address | Address of user to check against |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| numTokens | uint256 | Maximum number of tokens committed in SpottedData specified |

### getInsertPointForNumTokens

```solidity
function getInsertPointForNumTokens(address _voter, uint256 _numTokens, uint256 _DataBatchId) public view returns (uint256 prevNode)
```

### isExpired

```solidity
function isExpired(uint256 _terminationDate) public view returns (bool expired)
```

_Checks if an expiration date has been reached_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _terminationDate | uint256 | Integer timestamp of date to compare current timestamp with |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| expired | bool | Boolean indication of whether the terminationDate has passed |

### attrUUID

```solidity
function attrUUID(address user_, uint256 _DataBatchId) public pure returns (bytes32 UUID)
```

_Generates an identifier which associates a user and a SpottedData together_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| user_ | address |  |
| _DataBatchId | uint256 | Integer identifier associated with target SpottedData |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| UUID | bytes32 | Hash which is deterministic from user_ and _DataBatchId |

## RandomAllocator

### getSeed

```solidity
function getSeed() public view returns (bytes32 addr)
```

Get Native RNG Seed endpoint from SKALE chain

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| addr | bytes32 | bytes32 seed output |

### getRandom

```solidity
function getRandom() public view returns (uint256)
```

get Random Integer out of native seed

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | uint256 | randomly generated integer |

### generateIntegers

```solidity
function generateIntegers(uint256 _k, uint256 N_range) public view returns (uint256[])
```

generate _k integers from 0 to N

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _k | uint256 | integer |
| N_range | uint256 | integer |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | uint256[] | randomly generated integers array of size _k |

### random_selection

```solidity
function random_selection(uint256 k, uint256 N) public view returns (uint256[])
```

_Select k unique integer out of the N range (0,1,2,...,N)_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| k | uint256 | integer |
| N | uint256 | integer |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | uint256[] | array of selected random integers |

## IStakeManager

### ProxyStakeAllocate

```solidity
function ProxyStakeAllocate(uint256 _StakeAllocation, address _stakeholder) external returns (bool)
```

### ProxyStakeDeallocate

```solidity
function ProxyStakeDeallocate(uint256 _StakeToDeallocate, address _stakeholder) external returns (bool)
```

## IRepManager

### mintReputationForWork

```solidity
function mintReputationForWork(uint256 _amount, address _beneficiary, bytes32) external returns (bool)
```

### burnReputationForWork

```solidity
function burnReputationForWork(uint256 _amount, address _beneficiary, bytes32) external returns (bool)
```

## IRewardManager

### ProxyAddReward

```solidity
function ProxyAddReward(uint256 _RewardsAllocation, address _user) external returns (bool)
```

## IAddressManager

### isSenderMasterOf

```solidity
function isSenderMasterOf(address _address) external returns (bool)
```

### isSenderSubOf

```solidity
function isSenderSubOf(address _master) external returns (bool)
```

### isSubAddress

```solidity
function isSubAddress(address _master, address _address) external returns (bool)
```

### addAddress

```solidity
function addAddress(address _address) external
```

### removeAddress

```solidity
function removeAddress(address _address) external
```

## IFormattingSystem

### DataStatus

```solidity
enum DataStatus {
  TBD,
  APPROVED,
  REJECTED,
  FLAGGED
}
```

### BatchMetadata

```solidity
struct BatchMetadata {
  uint256 start_idx;
  uint256 counter;
  uint256 uncommited_workers;
  uint256 unrevealed_workers;
  uint256 item_count;
  bool complete;
  bool checked;
  bool allocated_to_work;
  uint256 commitEndDate;
  uint256 revealEndDate;
  uint256 votesFor;
  uint256 votesAgainst;
  string batchIPFSfile;
  enum IFormattingSystem.DataStatus status;
}
```

### FormattedData

```solidity
struct FormattedData {
  string ipfs_hash;
  address author;
  uint256 timestamp;
  enum IFormattingSystem.DataStatus status;
}
```

### getIPFShashesForBatch

```solidity
function getIPFShashesForBatch(uint256 _DataBatchId) external returns (string[])
```

### getDomainsForBatch

```solidity
function getDomainsForBatch(uint256 _DataBatchId) external returns (string[])
```

### getLastBatchId

```solidity
function getLastBatchId() external returns (uint256 LastBatchId)
```

### getLastCheckedBatchId

```solidity
function getLastCheckedBatchId() external returns (uint256 LastCheckedBatchId)
```

### getBatchByID

```solidity
function getBatchByID(uint256 _DataBatchId) external returns (struct IFormattingSystem.BatchMetadata batch)
```

### DataExists

```solidity
function DataExists(uint256 _DataBatchId) external returns (bool exists)
```

## DataArchive

### _DataArchive

```solidity
event _DataArchive(uint256 DataID, string file_hash, address sender)
```

### _WorkAllocated

```solidity
event _WorkAllocated(uint256 batchID, address worker)
```

### _WorkerRegistered

```solidity
event _WorkerRegistered(address worker, uint256 timestamp)
```

### _WorkerUnregistered

```solidity
event _WorkerUnregistered(address worker, uint256 timestamp)
```

### _VotingRightsGranted

```solidity
event _VotingRightsGranted(uint256 numTokens, address voter)
```

### _VotingRightsWithdrawn

```solidity
event _VotingRightsWithdrawn(uint256 numTokens, address voter)
```

### _TokensRescued

```solidity
event _TokensRescued(uint256 DataID, address voter)
```

### DataStatus

```solidity
enum DataStatus {
  TBD,
  APPROVED,
  REJECTED,
  FLAGGED
}
```

### ArchiveData

```solidity
struct ArchiveData {
  string ipfs_hash;
  address author;
  uint256 timestamp;
  enum DataArchive.DataStatus status;
}
```

### INITIAL_Data_NONCE

```solidity
uint256 INITIAL_Data_NONCE
```

### CollectedFormatBatchs

```solidity
mapping(uint256 => bool) CollectedFormatBatchs
```

### DataNonce

```solidity
uint256 DataNonce
```

### ArchiveMapping

```solidity
mapping(uint256 => struct DataArchive.ArchiveData) ArchiveMapping
```

### FormatStakedTokenBalance

```solidity
mapping(address => uint256) FormatStakedTokenBalance
```

### MasterWorkers

```solidity
mapping(address => address[]) MasterWorkers
```

### availableWorkers

```solidity
address[] availableWorkers
```

### busyWorkers

```solidity
address[] busyWorkers
```

### WorkersPerBatch

```solidity
mapping(uint256 => address[]) WorkersPerBatch
```

### sFuel

```solidity
address sFuel
```

### LastBatchCounter

```solidity
uint256 LastBatchCounter
```

### BatchCheckingCursor

```solidity
uint256 BatchCheckingCursor
```

### AllocatedBatchCursor

```solidity
uint256 AllocatedBatchCursor
```

### AllTxsCounter

```solidity
uint256 AllTxsCounter
```

### token

```solidity
contract IERC20 token
```

### StakeManager

```solidity
contract IStakeManager StakeManager
```

### RepManager

```solidity
contract IRepManager RepManager
```

### RewardManager

```solidity
contract IRewardManager RewardManager
```

### AddressManager

```solidity
contract IAddressManager AddressManager
```

### FormattingSystem

```solidity
contract IFormattingSystem FormattingSystem
```

### constructor

```solidity
constructor(address EXDT_token, address _FormattingSystem) public
```

_Initializer. Can only be called once._

### updateStakeManager

```solidity
function updateStakeManager(address addr) public
```

### updateRepManager

```solidity
function updateRepManager(address addr) public
```

### updateRewardManager

```solidity
function updateRewardManager(address addr) public
```

### updatePreviousSystem

```solidity
function updatePreviousSystem(address addr) public
```

### updateAddressManager

```solidity
function updateAddressManager(address addr) public
```

### _retrieveSFuel

```solidity
function _retrieveSFuel() internal
```

### topUpSFuel

```solidity
modifier topUpSFuel()
```

### isInAvailableWorkers

```solidity
function isInAvailableWorkers(address _worker) internal view returns (bool)
```

### isInBusyWorkers

```solidity
function isInBusyWorkers(address _worker) internal view returns (bool)
```

### PopFromAvailableWorkers

```solidity
function PopFromAvailableWorkers(address _worker) internal
```

### PopFromBusyWorkers

```solidity
function PopFromBusyWorkers(address _worker) internal
```

### Ping

```solidity
function Ping(uint256 CheckedBatchId) public returns (bool)
```

### deleteMapping

```solidity
function deleteMapping(uint256 _CheckedBatchId) public
```

### deleteData

```solidity
function deleteData(uint256 _DataId) public
```

### AreStringsEqual

```solidity
function AreStringsEqual(string _a, string _b) public pure returns (bool)
```

### BytesFailure

```solidity
event BytesFailure(bytes bytesFailure)
```

### getDataById

```solidity
function getDataById(uint256 _DataID) public view returns (struct DataArchive.ArchiveData data)
```

getLastDataId
    @return data of the id _DataID

### getFileById

```solidity
function getFileById(uint256 _DataID) public view returns (string ipfs_hash)
```

getLastDataId
    @return ipfs_hash of the last Dataed a user started

### getLastDataId

```solidity
function getLastDataId() public view returns (uint256 DataId)
```

getLastDataId
    @return DataId of the last Dataed a user started

### getTxCounter

```solidity
function getTxCounter() public view returns (uint256 Counter)
```

getCounter
    @return Counter of the last Dataed a user started

### DataExists

```solidity
function DataExists(uint256 _DataId) public view returns (bool exists)
```

_Checks if a FormattedData exists
    @param _DataId The DataID whose existance is to be evaluated.
    @return exists Boolean Indicates whether a FormattedData exists for the provided DataID_

### getBlockTimestamp

```solidity
function getBlockTimestamp() public view returns (uint256 blocktimestamp)
```

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| blocktimestamp | uint256 | block.timestamp |

### attrUUID

```solidity
function attrUUID(address _user, uint256 _DataBatchId) public pure returns (bytes32 UUID)
```

_Generates an identifier which associates a user and a FormattedData together
    @param _DataBatchId Integer identifier associated with target FormattedData
    @return UUID Hash which is deterministic from _user and _DataBatchId_

## AttributeStore4

### ArchiveData

```solidity
struct ArchiveData {
  mapping(bytes32 => uint256) store;
}
```

### getAttribute

```solidity
function getAttribute(struct AttributeStore4.ArchiveData self, bytes32 _UUID, string _attrName) public view returns (uint256)
```

### setAttribute

```solidity
function setAttribute(struct AttributeStore4.ArchiveData self, bytes32 _UUID, string _attrName, uint256 _attrVal) public
```

## DLL4

### NULL_NODE_ID

```solidity
uint256 NULL_NODE_ID
```

### Node

```solidity
struct Node {
  uint256 next;
  uint256 prev;
}
```

### ArchiveData

```solidity
struct ArchiveData {
  mapping(uint256 => struct DLL4.Node) dll;
}
```

### isEmpty

```solidity
function isEmpty(struct DLL4.ArchiveData self) public view returns (bool)
```

### contains

```solidity
function contains(struct DLL4.ArchiveData self, uint256 _curr) public view returns (bool)
```

### getNext

```solidity
function getNext(struct DLL4.ArchiveData self, uint256 _curr) public view returns (uint256)
```

### getPrev

```solidity
function getPrev(struct DLL4.ArchiveData self, uint256 _curr) public view returns (uint256)
```

### getStart

```solidity
function getStart(struct DLL4.ArchiveData self) public view returns (uint256)
```

### getEnd

```solidity
function getEnd(struct DLL4.ArchiveData self) public view returns (uint256)
```

### insert

```solidity
function insert(struct DLL4.ArchiveData self, uint256 _prev, uint256 _curr, uint256 _next) public
```

_Inserts a new node between _prev and _next. When inserting a node already existing in 
  the list it will be automatically removed from the old position.
  @param _prev the node which _new will be inserted after
  @param _curr the id of the new node being inserted
  @param _next the node which _new will be inserted before_

### remove

```solidity
function remove(struct DLL4.ArchiveData self, uint256 _curr) public
```

## IParametersManager

### getMaxTotalWorkers

```solidity
function getMaxTotalWorkers() external view returns (uint256)
```

### getVoteQuorum

```solidity
function getVoteQuorum() external view returns (uint256)
```

### get_MAX_UPDATE_ITERATIONS

```solidity
function get_MAX_UPDATE_ITERATIONS() external view returns (uint256)
```

### get_MAX_CONTRACT_STORED_BATCHES

```solidity
function get_MAX_CONTRACT_STORED_BATCHES() external view returns (uint256)
```

### get_MAX_SUCCEEDING_NOVOTES

```solidity
function get_MAX_SUCCEEDING_NOVOTES() external view returns (uint256)
```

### get_NOVOTE_REGISTRATION_WAIT_DURATION

```solidity
function get_NOVOTE_REGISTRATION_WAIT_DURATION() external view returns (uint256)
```

### getStakeManager

```solidity
function getStakeManager() external view returns (address)
```

### getRepManager

```solidity
function getRepManager() external view returns (address)
```

### getAddressManager

```solidity
function getAddressManager() external view returns (address)
```

### getRewardManager

```solidity
function getRewardManager() external view returns (address)
```

### getArchivingSystem

```solidity
function getArchivingSystem() external view returns (address)
```

### getSpottingSystem

```solidity
function getSpottingSystem() external view returns (address)
```

### getComplianceSystem

```solidity
function getComplianceSystem() external view returns (address)
```

### getIndexingSystem

```solidity
function getIndexingSystem() external view returns (address)
```

### getsFuelSystem

```solidity
function getsFuelSystem() external view returns (address)
```

### getExordeToken

```solidity
function getExordeToken() external view returns (address)
```

### get_ARCHIVING_DATA_BATCH_SIZE

```solidity
function get_ARCHIVING_DATA_BATCH_SIZE() external view returns (uint256)
```

### get_ARCHIVING_MIN_STAKE

```solidity
function get_ARCHIVING_MIN_STAKE() external view returns (uint256)
```

### get_ARCHIVING_MIN_CONSENSUS_WORKER_COUNT

```solidity
function get_ARCHIVING_MIN_CONSENSUS_WORKER_COUNT() external view returns (uint256)
```

### get_ARCHIVING_MAX_CONSENSUS_WORKER_COUNT

```solidity
function get_ARCHIVING_MAX_CONSENSUS_WORKER_COUNT() external view returns (uint256)
```

### get_ARCHIVING_COMMIT_ROUND_DURATION

```solidity
function get_ARCHIVING_COMMIT_ROUND_DURATION() external view returns (uint256)
```

### get_ARCHIVING_REVEAL_ROUND_DURATION

```solidity
function get_ARCHIVING_REVEAL_ROUND_DURATION() external view returns (uint256)
```

### get_ARCHIVING_MIN_REWARD_DataValidation

```solidity
function get_ARCHIVING_MIN_REWARD_DataValidation() external view returns (uint256)
```

### get_ARCHIVING_MIN_REP_DataValidation

```solidity
function get_ARCHIVING_MIN_REP_DataValidation() external view returns (uint256)
```

## IStakeManager

### ProxyStakeAllocate

```solidity
function ProxyStakeAllocate(uint256 _StakeAllocation, address _stakeholder) external returns (bool)
```

### ProxyStakeDeallocate

```solidity
function ProxyStakeDeallocate(uint256 _StakeToDeallocate, address _stakeholder) external returns (bool)
```

## IRepManager

### mintReputationForWork

```solidity
function mintReputationForWork(uint256 _amount, address _beneficiary, bytes32) external returns (bool)
```

### burnReputationForWork

```solidity
function burnReputationForWork(uint256 _amount, address _beneficiary, bytes32) external returns (bool)
```

## IRewardManager

### ProxyAddReward

```solidity
function ProxyAddReward(uint256 _RewardsAllocation, address _user) external returns (bool)
```

## IAddressManager

### isMasterOf

```solidity
function isMasterOf(address _master, address _address) external returns (bool)
```

### isSubWorkerOf

```solidity
function isSubWorkerOf(address _master, address _address) external returns (bool)
```

### AreMasterSubLinked

```solidity
function AreMasterSubLinked(address _master, address _address) external returns (bool)
```

### getMasterSubs

```solidity
function getMasterSubs(address _master) external view returns (address)
```

### getMaster

```solidity
function getMaster(address _worker) external view returns (address)
```

### FetchHighestMaster

```solidity
function FetchHighestMaster(address _worker) external view returns (address)
```

## IPreviousSystem

### DataStatus

```solidity
enum DataStatus {
  TBD,
  APPROVED,
  REJECTED,
  FLAGGED
}
```

### BatchMetadata

```solidity
struct BatchMetadata {
  uint256 start_idx;
  uint256 counter;
  uint256 uncommited_workers;
  uint256 unrevealed_workers;
  bool complete;
  bool checked;
  bool allocated_to_work;
  uint256 commitEndDate;
  uint256 revealEndDate;
  uint256 votesFor;
  uint256 votesAgainst;
  string batchIPFSfile;
  uint256 item_count;
  enum IPreviousSystem.DataStatus status;
}
```

### SpottedData

```solidity
struct SpottedData {
  string ipfs_hash;
  address author;
  uint256 timestamp;
  uint256 item_count;
  string URL_domain;
  string extra;
  enum IPreviousSystem.DataStatus status;
}
```

### getBatchByID

```solidity
function getBatchByID(uint256 _DataBatchId) external returns (struct IPreviousSystem.BatchMetadata batch)
```

### DataExists

```solidity
function DataExists(uint256 _DataBatchId) external returns (bool exists)
```

## IArchivingSystem

### Ping

```solidity
function Ping(uint256 CheckedBatchId) external returns (bool)
```

## DataArchiving

### _ArchiveSubmitted

```solidity
event _ArchiveSubmitted(uint256 DataID, string file_hash, address sender)
```

### _ArchiveCheckCommitted

```solidity
event _ArchiveCheckCommitted(uint256 DataID, uint256 numTokens, address voter)
```

### _ArchiveCheckRevealed

```solidity
event _ArchiveCheckRevealed(uint256 DataID, uint256 numTokens, uint256 votesFor, uint256 votesAgainst, uint256 choice, address voter)
```

### _ArchiveAccepted

```solidity
event _ArchiveAccepted(string hash, address creator)
```

### _WorkAllocated

```solidity
event _WorkAllocated(uint256 batchID, address worker)
```

### _WorkerRegistered

```solidity
event _WorkerRegistered(address worker, uint256 timestamp)
```

### _WorkerUnregistered

```solidity
event _WorkerUnregistered(address worker, uint256 timestamp)
```

### _StakeAllocated

```solidity
event _StakeAllocated(uint256 numTokens, address voter)
```

### _VotingRightsWithdrawn

```solidity
event _VotingRightsWithdrawn(uint256 numTokens, address voter)
```

### _TokensRescued

```solidity
event _TokensRescued(uint256 DataID, address voter)
```

### _DataBatchDeleted

```solidity
event _DataBatchDeleted(uint256 batchID)
```

### DataStatus

```solidity
enum DataStatus {
  TBD,
  APPROVED,
  REJECTED,
  FLAGGED
}
```

### WorkerState

```solidity
struct WorkerState {
  address worker_address;
  uint256 allocated_work_batch;
  bool has_completed_work;
  uint256 succeeding_novote_count;
  uint256 last_interaction_date;
  bool registered;
  bool unregistration_request;
  uint256 registration_date;
  uint256 majority_counter;
  uint256 minority_counter;
}
```

### BatchMetadata

```solidity
struct BatchMetadata {
  uint256 start_idx;
  uint256 counter;
  uint256 uncommited_workers;
  uint256 unrevealed_workers;
  uint256 item_count;
  bool complete;
  bool checked;
  bool allocated_to_work;
  uint256 commitEndDate;
  uint256 revealEndDate;
  uint256 votesFor;
  uint256 votesAgainst;
  string batchIPFSfile;
  enum DataArchiving.DataStatus status;
}
```

### ArchiveData

```solidity
struct ArchiveData {
  string ipfs_hash;
  address author;
  uint256 timestamp;
  enum DataArchiving.DataStatus status;
}
```

### UserChecksCommits

```solidity
mapping(address => mapping(uint256 => bool)) UserChecksCommits
```

### UserChecksReveals

```solidity
mapping(address => mapping(uint256 => bool)) UserChecksReveals
```

### UserVotes

```solidity
mapping(uint256 => mapping(address => uint256)) UserVotes
```

### UserNewFiles

```solidity
mapping(uint256 => mapping(address => string)) UserNewFiles
```

### UserBatchCounts

```solidity
mapping(uint256 => mapping(address => uint256)) UserBatchCounts
```

### UserBatchFrom

```solidity
mapping(uint256 => mapping(address => string)) UserBatchFrom
```

### UserSubmittedStatus

```solidity
mapping(uint256 => mapping(address => string)) UserSubmittedStatus
```

### dllMap

```solidity
mapping(address => struct DLL4.ArchiveData) dllMap
```

### store

```solidity
struct AttributeStore4.ArchiveData store
```

### ArchivesMapping

```solidity
mapping(uint256 => struct DataArchiving.ArchiveData) ArchivesMapping
```

### DataBatch

```solidity
mapping(uint256 => struct DataArchiving.BatchMetadata) DataBatch
```

### WorkersState

```solidity
mapping(address => struct DataArchiving.WorkerState) WorkersState
```

### SystemStakedTokenBalance

```solidity
mapping(address => uint256) SystemStakedTokenBalance
```

### MasterWorkers

```solidity
mapping(address => address[]) MasterWorkers
```

### WorkersPerBatch

```solidity
mapping(uint256 => address[]) WorkersPerBatch
```

### CollectedSpotBatchs

```solidity
mapping(uint256 => bool) CollectedSpotBatchs
```

### availableWorkers

```solidity
address[] availableWorkers
```

### busyWorkers

```solidity
address[] busyWorkers
```

### toUnregisterWorkers

```solidity
address[] toUnregisterWorkers
```

### LastRandomSeed

```solidity
uint256 LastRandomSeed
```

### sFuel

```solidity
address sFuel
```

### DataNonce

```solidity
uint256 DataNonce
```

### BatchDeletionCursor

```solidity
uint256 BatchDeletionCursor
```

### LastBatchCounter

```solidity
uint256 LastBatchCounter
```

### BatchCheckingCursor

```solidity
uint256 BatchCheckingCursor
```

### AllocatedBatchCursor

```solidity
uint256 AllocatedBatchCursor
```

### AllTxsCounter

```solidity
uint256 AllTxsCounter
```

### AcceptedBatchsCounter

```solidity
uint256 AcceptedBatchsCounter
```

### RejectedBatchsCounter

```solidity
uint256 RejectedBatchsCounter
```

### NotCommitedCounter

```solidity
uint256 NotCommitedCounter
```

### NotRevealedCounter

```solidity
uint256 NotRevealedCounter
```

### token

```solidity
contract IERC20 token
```

### Parameters

```solidity
contract IParametersManager Parameters
```

### constructor

```solidity
constructor(address EXDT_token_) public
```

_Initializer. Can only be called once._

### destroyContract

```solidity
function destroyContract() public
```

### updateParametersManager

```solidity
function updateParametersManager(address addr) public
```

### updateBatchCheckingCursor

```solidity
function updateBatchCheckingCursor(uint256 BatchCheckingCursor_) public
```

### updateAllocatedBatchCursor

```solidity
function updateAllocatedBatchCursor(uint256 AllocatedBatchCursor_) public
```

### deleteCollectedSpotBatch

```solidity
function deleteCollectedSpotBatch(uint256 _BatchId) public
```

### deleteData

```solidity
function deleteData(uint256 _DataId) public
```

### deleteDataBatch

```solidity
function deleteDataBatch(uint256 _BatchId) public
```

### deleteOldData

```solidity
function deleteOldData() internal
```

### updatesFuelFaucet

```solidity
function updatesFuelFaucet(address _sFuel) public
```

### _retrieveSFuel

```solidity
function _retrieveSFuel() internal
```

### topUpSFuel

```solidity
modifier topUpSFuel()
```

### isInAvailableWorkers

```solidity
function isInAvailableWorkers(address _worker) internal view returns (bool)
```

### isInBusyWorkers

```solidity
function isInBusyWorkers(address _worker) internal view returns (bool)
```

### PopFromAvailableWorkers

```solidity
function PopFromAvailableWorkers(address _worker) internal
```

### PopFromBusyWorkers

```solidity
function PopFromBusyWorkers(address _worker) internal
```

### isWorkerAllocatedToBatch

```solidity
function isWorkerAllocatedToBatch(uint256 _DataBatchId, address _worker) public view returns (bool)
```

### RegisterWorker

```solidity
function RegisterWorker() public
```

### UnregisterWorker

```solidity
function UnregisterWorker() public
```

### processLogoffRequests

```solidity
function processLogoffRequests() internal
```

### Ping

```solidity
function Ping(uint256 CheckedBatchId) public
```

### TriggerUpdate

```solidity
function TriggerUpdate() public
```

### AreStringsEqual

```solidity
function AreStringsEqual(string _a, string _b) public pure returns (bool)
```

### BytesFailure

```solidity
event BytesFailure(bytes bytesFailure)
```

### ValidateDataBatch

```solidity
function ValidateDataBatch(uint256 _DataBatchId) public
```

Trigger the validation of a ArchiveData hash; if the ArchiveData has ended. If the requirements are APPROVED, 
    the CheckedData will be added to the APPROVED list of SpotCheckings
    @param _DataBatchId Integer identifier associated with target ArchiveData

### AllocateWork

```solidity
function AllocateWork() public
```

### IsNewWorkAvailable

```solidity
function IsNewWorkAvailable(address user_) public view returns (bool)
```

### GetCurrentWork

```solidity
function GetCurrentWork(address user_) public view returns (uint256)
```

### commitArchiveCheck

```solidity
function commitArchiveCheck(uint256 _DataBatchId, bytes32 _secretIPFSHash, uint256 _BatchCount, string _From, string _Status) public
```

Commits archive-check-vote using hash of choice and secret salt to conceal archive-check-vote until reveal
    @param _DataBatchId Integer identifier associated with target ArchiveData
    @param _secretIPFSHash ArchiveCheck HASH encrypted
    // @ _prevDataID The ID of the ArchiveData that the user has voted the maximum number of tokens in which is still less than or equal to numTokens

### revealArchiveCheck

```solidity
function revealArchiveCheck(uint256 _DataBatchId, uint256 _voteOption, string _clearIPFSHash, uint256 _salt) public
```

Reveals archive-check-vote with choice and secret salt used in generating commitHash to attribute committed tokens
    @param _DataBatchId Integer identifier associated with target ArchiveData
    @param _voteOption ArchiveCheck choice used to generate commitHash for associated ArchiveData
    @param _clearIPFSHash ArchiveCheck HASH in clear
    @param _salt Secret number used to generate commitHash for associated ArchiveData

### requestAllocatedStake

```solidity
function requestAllocatedStake(uint256 _numTokens, address _user) internal
```

Loads _numTokens ERC20 tokens into the voting contract for one-to-one voting rights
    @dev Assumes that msg.sender has approved voting contract to spend on their behalf
    @param _numTokens The number of votingTokens desired in exchange for ERC20 tokens

### withdrawVotingRights

```solidity
function withdrawVotingRights(uint256 _numTokens) public
```

Withdraw _numTokens ERC20 tokens from the voting contract, revoking these voting rights
    @param _numTokens The number of ERC20 tokens desired in exchange for voting rights

### getMySystemTokenBalance

```solidity
function getMySystemTokenBalance() public view returns (uint256 tokens)
```

### getSystemTokenBalance

```solidity
function getSystemTokenBalance(address _user) public view returns (uint256 tokens)
```

### getAcceptedBatchesCount

```solidity
function getAcceptedBatchesCount() public view returns (uint256 count)
```

### getRejectedBatchesCount

```solidity
function getRejectedBatchesCount() public view returns (uint256 count)
```

### rescueTokens

```solidity
function rescueTokens(uint256 _DataBatchId) public
```

_Unlocks tokens locked in unrevealed archive-check-vote where ArchiveData has ended
    @param _DataBatchId Integer identifier associated with the target ArchiveData_

### rescueTokensInMultipleDatas

```solidity
function rescueTokensInMultipleDatas(uint256[] _DataBatchIDs) public
```

_Unlocks tokens locked in unrevealed archive-check-votes where Datas have ended
    @param _DataBatchIDs Array of integer identifiers associated with the target Datas_

### getIPFShashesForBatch

```solidity
function getIPFShashesForBatch(uint256 _DataBatchId) public view returns (string[])
```

### getStatusForBatch

```solidity
function getStatusForBatch(uint256 _DataBatchId) public view returns (string[])
```

### getFromsForBatch

```solidity
function getFromsForBatch(uint256 _DataBatchId) public view returns (string[])
```

### getVotesForBatch

```solidity
function getVotesForBatch(uint256 _DataBatchId) public view returns (uint256[])
```

### getSubmittedFilesForBatch

```solidity
function getSubmittedFilesForBatch(uint256 _DataBatchId) public view returns (string[])
```

### getActiveWorkersCount

```solidity
function getActiveWorkersCount() public view returns (uint256 numWorkers)
```

### getAvailableWorkersCount

```solidity
function getAvailableWorkersCount() public view returns (uint256 numWorkers)
```

### getBusyWorkersCount

```solidity
function getBusyWorkersCount() public view returns (uint256 numWorkers)
```

### validPosition

```solidity
function validPosition(uint256 _prevID, uint256 _nextID, address _voter, uint256 _numTokens) public view returns (bool APPROVED)
```

_Compares previous and next ArchiveData's committed tokens for sorting purposes
    @param _prevID Integer identifier associated with previous ArchiveData in sorted order
    @param _nextID Integer identifier associated with next ArchiveData in sorted order
    @param _voter Address of user to check DLL position for
    @param _numTokens The number of tokens to be committed towards the ArchiveData (used for sorting)
    @return APPROVED Boolean indication of if the specified position maintains the sort_

### getNumPassingTokens

```solidity
function getNumPassingTokens(address _voter, uint256 _DataBatchId, uint256 _salt) public view returns (uint256 correctArchiveChecks)
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _voter | address |  |
| _DataBatchId | uint256 | Integer identifier associated with target ArchiveData
     @param _salt Arbitrarily chosen integer used to generate secretHash
     @return correctArchiveChecks Number of tokens voted for winning option |
| _salt | uint256 |  |

### getTotalNumberOfArchiveChecks

```solidity
function getTotalNumberOfArchiveChecks(uint256 _DataBatchId) public view returns (uint256 vc)
```

Trigger the validation of a ArchiveData hash; if the ArchiveData has ended. If the requirements are APPROVED, 
    the ArchiveChecking will be added to the APPROVED list of ArchiveCheckings
    @param _DataBatchId Integer identifier associated with target ArchiveData

### isPassed

```solidity
function isPassed(uint256 _DataBatchId) public view returns (bool passed)
```

Determines if proposal has passed
    @dev Check if votesFor out of totalArchiveChecks exceeds votesQuorum (requires DataEnded)
    @param _DataBatchId Integer identifier associated with target ArchiveData

### DataEnded

```solidity
function DataEnded(uint256 _DataBatchId) public view returns (bool ended)
```

Determines if ArchiveData is over
    @dev Checks isExpired for specified ArchiveData's revealEndDate
    @return ended Boolean indication of whether Dataing period is over

### getLastDataId

```solidity
function getLastDataId() public view returns (uint256 DataId)
```

getLastDataId
    @return DataId of the last Dataed a user started

### getLastBatchId

```solidity
function getLastBatchId() public view returns (uint256 LastBatchId)
```

getLastBatchId
    @return LastBatchId of the last Dataed a user started

### getLastCheckedBatchId

```solidity
function getLastCheckedBatchId() public view returns (uint256 LastCheckedBatchId)
```

getLastBachDataId
    @return LastCheckedBatchId of the last Dataed a user started

### getLastAllocatedBatchId

```solidity
function getLastAllocatedBatchId() public view returns (uint256 LastAllocatedBatchId)
```

getLastAllocatedBatchId
    @return LastAllocatedBatchId of the last Dataed a user started

### getTxCounter

```solidity
function getTxCounter() public view returns (uint256 Counter)
```

getCounter
    @return Counter of the last Dataed a user started

### DataCommitEndDate

```solidity
function DataCommitEndDate(uint256 _DataBatchId) public view returns (uint256 commitEndDate)
```

Determines DataCommitEndDate
    @return commitEndDate indication of whether Dataing period is over

### DataRevealEndDate

```solidity
function DataRevealEndDate(uint256 _DataBatchId) public view returns (uint256 revealEndDate)
```

Determines DataRevealEndDate
    @return revealEndDate indication of whether Dataing period is over

### commitPeriodActive

```solidity
function commitPeriodActive(uint256 _DataBatchId) public view returns (bool active)
```

Checks if the commit period is still active for the specified SpottedData
    @dev Checks isExpired for the specified SpottedData's commitEndDate
    @param _DataBatchId Integer identifier associated with target SpottedData
    @return active Boolean indication of isCommitPeriodActive for target SpottedData

### revealPeriodActive

```solidity
function revealPeriodActive(uint256 _DataBatchId) public view returns (bool active)
```

Checks if the reveal period is still active for the specified ArchiveData
    @dev Checks isExpired for the specified ArchiveData's revealEndDate
    @param _DataBatchId Integer identifier associated with target ArchiveData

### didCommit

```solidity
function didCommit(address _voter, uint256 _DataBatchId) public view returns (bool committed)
```

_Checks if user has committed for specified ArchiveData
    @param _voter Address of user to check against
    @param _DataBatchId Integer identifier associated with target ArchiveData
    @return committed Boolean indication of whether user has committed_

### didReveal

```solidity
function didReveal(address _voter, uint256 _DataBatchId) public view returns (bool revealed)
```

_Checks if user has revealed for specified ArchiveData
    @param _voter Address of user to check against
    @param _DataBatchId Integer identifier associated with target ArchiveData
    @return revealed Boolean indication of whether user has revealed_

### DataExists

```solidity
function DataExists(uint256 _DataBatchId) public view returns (bool exists)
```

_Checks if a ArchiveData exists
    @param _DataBatchId The DataID whose existance is to be evaluated.
    @return exists Boolean Indicates whether a ArchiveData exists for the provided DataID_

### AmIRegistered

```solidity
function AmIRegistered() public view returns (bool passed)
```

### isWorkerRegistered

```solidity
function isWorkerRegistered(address _worker) public view returns (bool passed)
```

### getBatchByID

```solidity
function getBatchByID(uint256 _DataBatchId) public view returns (struct DataArchiving.BatchMetadata batch)
```

getLastBachDataId
    @return batch of the last Dataed a user started

### getBatchIPFSFileByID

```solidity
function getBatchIPFSFileByID(uint256 _DataBatchId) public view returns (string batch)
```

getLastBachDataId
    @return batch of the last Dataed a user started

### getAcceptedBatchFilesRange

```solidity
function getAcceptedBatchFilesRange(uint256 _DataBatchId_start, uint256 _DataBatchId_end) public view returns (string[] batch)
```

### getAcceptedBatchFileFrom

```solidity
function getAcceptedBatchFileFrom(uint256 _DataBatchId_start) public view returns (string[] batch)
```

### getDataByID

```solidity
function getDataByID(uint256 _DataId) public view returns (struct DataArchiving.ArchiveData data)
```

getLastBachDataId
    @return data of the last Dataed a user started

### getCommitVoteHash

```solidity
function getCommitVoteHash(address _voter, uint256 _DataBatchId) public view returns (bytes32 commitHash)
```

_Gets the bytes32 commitHash property of target SpottedData
    @param _voter Address of user to check against
    @param _DataBatchId Integer identifier associated with target SpottedData
    @return commitHash Bytes32 hash property attached to target SpottedData_

### getCommitIPFSHash

```solidity
function getCommitIPFSHash(address _voter, uint256 _DataBatchId) public view returns (bytes32 commitHash)
```

_Gets the bytes32 commitHash property of target SpottedData
    @param _voter Address of user to check against
    @param _DataBatchId Integer identifier associated with target SpottedData
    @return commitHash Bytes32 hash property attached to target SpottedData_

### getEncryptedStringHash

```solidity
function getEncryptedStringHash(string _hash, uint256 _salt) public pure returns (bytes32 keccak256hash)
```

_Gets the bytes32 commitHash property of target ArchiveData
    @param _hash ipfs hash of aggregated data in a string
    @param _salt is the salt
    @return keccak256hash Bytes32 hash property attached to target ArchiveData_

### getNumTokens

```solidity
function getNumTokens(address _voter, uint256 _DataBatchId) public view returns (uint256 numTokens)
```

_Wrapper for getAttribute with attrName="numTokens"
    @param _voter Address of user to check against
    @param _DataBatchId Integer identifier associated with target ArchiveData
    @return numTokens Number of tokens committed to ArchiveData in sorted ArchiveData-linked-list_

### getLastNode

```solidity
function getLastNode(address _voter) public view returns (uint256 DataID)
```

_Gets top element of sorted ArchiveData-linked-list
    @param _voter Address of user to check against
    @return DataID Integer identifier to ArchiveData with maximum number of tokens committed to it_

### getLockedTokens

```solidity
function getLockedTokens(address _voter) public view returns (uint256 numTokens)
```

_Gets the numTokens property of getLastNode
    @param _voter Address of user to check against
    @return numTokens Maximum number of tokens committed in ArchiveData specified_

### getInsertPointForNumTokens

```solidity
function getInsertPointForNumTokens(address _voter, uint256 _numTokens, uint256 _DataBatchId) public view returns (uint256 prevNode)
```

### isExpired

```solidity
function isExpired(uint256 _terminationDate) public view returns (bool expired)
```

_Checks if an expiration date has been reached
    @param _terminationDate Integer timestamp of date to compare current timestamp with
    @return expired Boolean indication of whether the terminationDate has passed_

### attrUUID

```solidity
function attrUUID(address _user, uint256 _DataBatchId) public pure returns (bytes32 UUID)
```

_Generates an identifier which associates a user and a ArchiveData together
    @param _DataBatchId Integer identifier associated with target ArchiveData
    @return UUID Hash which is deterministic from _user and _DataBatchId_

## AttributeStore2

### ComplianceData

```solidity
struct ComplianceData {
  mapping(bytes32 => uint256) store;
}
```

### getAttribute

```solidity
function getAttribute(struct AttributeStore2.ComplianceData self, bytes32 _UUID, string _attrName) public view returns (uint256)
```

### setAttribute

```solidity
function setAttribute(struct AttributeStore2.ComplianceData self, bytes32 _UUID, string _attrName, uint256 _attrVal) public
```

## DLL2

### NULL_NODE_ID

```solidity
uint256 NULL_NODE_ID
```

### Node

```solidity
struct Node {
  uint256 next;
  uint256 prev;
}
```

### ComplianceData

```solidity
struct ComplianceData {
  mapping(uint256 => struct DLL2.Node) dll;
}
```

### isEmpty

```solidity
function isEmpty(struct DLL2.ComplianceData self) public view returns (bool)
```

### contains

```solidity
function contains(struct DLL2.ComplianceData self, uint256 _curr) public view returns (bool)
```

### getNext

```solidity
function getNext(struct DLL2.ComplianceData self, uint256 _curr) public view returns (uint256)
```

### getPrev

```solidity
function getPrev(struct DLL2.ComplianceData self, uint256 _curr) public view returns (uint256)
```

### getStart

```solidity
function getStart(struct DLL2.ComplianceData self) public view returns (uint256)
```

### getEnd

```solidity
function getEnd(struct DLL2.ComplianceData self) public view returns (uint256)
```

### insert

```solidity
function insert(struct DLL2.ComplianceData self, uint256 _prev, uint256 _curr, uint256 _next) public
```

_Inserts a new node between _prev and _next. When inserting a node already existing in 
  the list it will be automatically removed from the old position.
  @param _prev the node which _new will be inserted after
  @param _curr the id of the new node being inserted
  @param _next the node which _new will be inserted before_

### remove

```solidity
function remove(struct DLL2.ComplianceData self, uint256 _curr) public
```

## IParametersManager

### getMaxTotalWorkers

```solidity
function getMaxTotalWorkers() external view returns (uint256)
```

### getVoteQuorum

```solidity
function getVoteQuorum() external view returns (uint256)
```

### get_MAX_UPDATE_ITERATIONS

```solidity
function get_MAX_UPDATE_ITERATIONS() external view returns (uint256)
```

### get_MAX_CONTRACT_STORED_BATCHES

```solidity
function get_MAX_CONTRACT_STORED_BATCHES() external view returns (uint256)
```

### get_MAX_SUCCEEDING_NOVOTES

```solidity
function get_MAX_SUCCEEDING_NOVOTES() external view returns (uint256)
```

### get_NOVOTE_REGISTRATION_WAIT_DURATION

```solidity
function get_NOVOTE_REGISTRATION_WAIT_DURATION() external view returns (uint256)
```

### getStakeManager

```solidity
function getStakeManager() external view returns (address)
```

### getRepManager

```solidity
function getRepManager() external view returns (address)
```

### getAddressManager

```solidity
function getAddressManager() external view returns (address)
```

### getRewardManager

```solidity
function getRewardManager() external view returns (address)
```

### getArchivingSystem

```solidity
function getArchivingSystem() external view returns (address)
```

### getSpottingSystem

```solidity
function getSpottingSystem() external view returns (address)
```

### getComplianceSystem

```solidity
function getComplianceSystem() external view returns (address)
```

### getIndexingSystem

```solidity
function getIndexingSystem() external view returns (address)
```

### getsFuelSystem

```solidity
function getsFuelSystem() external view returns (address)
```

### getExordeToken

```solidity
function getExordeToken() external view returns (address)
```

### get_COMPLIANCE_DATA_BATCH_SIZE

```solidity
function get_COMPLIANCE_DATA_BATCH_SIZE() external view returns (uint256)
```

### get_COMPLIANCE_MIN_STAKE

```solidity
function get_COMPLIANCE_MIN_STAKE() external view returns (uint256)
```

### get_COMPLIANCE_MIN_CONSENSUS_WORKER_COUNT

```solidity
function get_COMPLIANCE_MIN_CONSENSUS_WORKER_COUNT() external view returns (uint256)
```

### get_COMPLIANCE_MAX_CONSENSUS_WORKER_COUNT

```solidity
function get_COMPLIANCE_MAX_CONSENSUS_WORKER_COUNT() external view returns (uint256)
```

### get_COMPLIANCE_COMMIT_ROUND_DURATION

```solidity
function get_COMPLIANCE_COMMIT_ROUND_DURATION() external view returns (uint256)
```

### get_COMPLIANCE_REVEAL_ROUND_DURATION

```solidity
function get_COMPLIANCE_REVEAL_ROUND_DURATION() external view returns (uint256)
```

### get_COMPLIANCE_MIN_REWARD_DataValidation

```solidity
function get_COMPLIANCE_MIN_REWARD_DataValidation() external view returns (uint256)
```

### get_COMPLIANCE_MIN_REP_DataValidation

```solidity
function get_COMPLIANCE_MIN_REP_DataValidation() external view returns (uint256)
```

## IStakeManager

### ProxyStakeAllocate

```solidity
function ProxyStakeAllocate(uint256 _StakeAllocation, address _stakeholder) external returns (bool)
```

### ProxyStakeDeallocate

```solidity
function ProxyStakeDeallocate(uint256 _StakeToDeallocate, address _stakeholder) external returns (bool)
```

### AvailableStakedAmountOf

```solidity
function AvailableStakedAmountOf(address _stakeholder) external view returns (uint256)
```

### AllocatedStakedAmountOf

```solidity
function AllocatedStakedAmountOf(address _stakeholder) external view returns (uint256)
```

## IRepManager

### mintReputationForWork

```solidity
function mintReputationForWork(uint256 _amount, address _beneficiary, bytes32) external returns (bool)
```

### burnReputationForWork

```solidity
function burnReputationForWork(uint256 _amount, address _beneficiary, bytes32) external returns (bool)
```

## IRewardManager

### ProxyAddReward

```solidity
function ProxyAddReward(uint256 _RewardsAllocation, address _user) external returns (bool)
```

## IAddressManager

### isMasterOf

```solidity
function isMasterOf(address _master, address _address) external returns (bool)
```

### isSubWorkerOf

```solidity
function isSubWorkerOf(address _master, address _address) external returns (bool)
```

### AreMasterSubLinked

```solidity
function AreMasterSubLinked(address _master, address _address) external returns (bool)
```

### getMasterSubs

```solidity
function getMasterSubs(address _master) external view returns (address)
```

### getMaster

```solidity
function getMaster(address _worker) external view returns (address)
```

### FetchHighestMaster

```solidity
function FetchHighestMaster(address _worker) external view returns (address)
```

## ISpottingSystem

### DataStatus

```solidity
enum DataStatus {
  TBD,
  APPROVED,
  REJECTED,
  FLAGGED
}
```

### BatchMetadata

```solidity
struct BatchMetadata {
  uint256 start_idx;
  uint256 counter;
  uint256 uncommited_workers;
  uint256 unrevealed_workers;
  bool complete;
  bool checked;
  bool allocated_to_work;
  uint256 commitEndDate;
  uint256 revealEndDate;
  uint256 votesFor;
  uint256 votesAgainst;
  string batchIPFSfile;
  uint256 item_count;
  enum ISpottingSystem.DataStatus status;
}
```

### SpottedData

```solidity
struct SpottedData {
  string ipfs_hash;
  address author;
  uint256 timestamp;
  uint256 item_count;
  string URL_domain;
  string extra;
  enum ISpottingSystem.DataStatus status;
}
```

### getBatchByID

```solidity
function getBatchByID(uint256 _DataBatchId) external returns (struct ISpottingSystem.BatchMetadata batch)
```

### DataExists

```solidity
function DataExists(uint256 _DataBatchId) external returns (bool exists)
```

## IArchivingSystem

### Ping

```solidity
function Ping(uint256 CheckedBatchId) external returns (bool)
```

## IIndexingSystem

### Ping

```solidity
function Ping(uint256 CheckedBatchId) external returns (bool)
```

## DataCompliance

### _ComplianceSubmitted

```solidity
event _ComplianceSubmitted(uint256 DataID, string file_hash, address sender)
```

### _ComplianceCheckCommitted

```solidity
event _ComplianceCheckCommitted(uint256 DataID, uint256 numTokens, address voter)
```

### _ComplianceCheckRevealed

```solidity
event _ComplianceCheckRevealed(uint256 DataID, uint256 numTokens, uint256 votesFor, uint256 votesAgainst, uint256 choice, address voter)
```

### _ComplianceAccepted

```solidity
event _ComplianceAccepted(string hash, address creator)
```

### _WorkAllocated

```solidity
event _WorkAllocated(uint256 batchID, address worker)
```

### _WorkerRegistered

```solidity
event _WorkerRegistered(address worker, uint256 timestamp)
```

### _WorkerUnregistered

```solidity
event _WorkerUnregistered(address worker, uint256 timestamp)
```

### _StakeAllocated

```solidity
event _StakeAllocated(uint256 numTokens, address voter)
```

### _VotingRightsWithdrawn

```solidity
event _VotingRightsWithdrawn(uint256 numTokens, address voter)
```

### _TokensRescued

```solidity
event _TokensRescued(uint256 DataID, address voter)
```

### _DataBatchDeleted

```solidity
event _DataBatchDeleted(uint256 batchID)
```

### DataStatus

```solidity
enum DataStatus {
  TBD,
  APPROVED,
  REJECTED,
  FLAGGED
}
```

### WorkerState

```solidity
struct WorkerState {
  uint256 allocated_work_batch;
  bool has_completed_work;
  uint256 succeeding_novote_count;
  uint256 last_interaction_date;
  bool registered;
  bool unregistration_request;
  uint256 registration_date;
  uint256 majority_counter;
  uint256 minority_counter;
}
```

### BatchMetadata

```solidity
struct BatchMetadata {
  uint256 start_idx;
  uint256 counter;
  uint256 uncommited_workers;
  uint256 unrevealed_workers;
  uint256 item_count;
  bool complete;
  bool checked;
  bool allocated_to_work;
  uint256 commitEndDate;
  uint256 revealEndDate;
  uint256 votesFor;
  uint256 votesAgainst;
  string batchIPFSfile;
  enum DataCompliance.DataStatus status;
}
```

### ComplianceData

```solidity
struct ComplianceData {
  string ipfs_hash;
  address author;
  uint256 timestamp;
  enum DataCompliance.DataStatus status;
}
```

### UserChecksCommits

```solidity
mapping(address => mapping(uint256 => bool)) UserChecksCommits
```

### UserChecksReveals

```solidity
mapping(address => mapping(uint256 => bool)) UserChecksReveals
```

### UserVotes

```solidity
mapping(uint256 => mapping(address => uint256)) UserVotes
```

### UserNewFiles

```solidity
mapping(uint256 => mapping(address => string)) UserNewFiles
```

### UserBatchCounts

```solidity
mapping(uint256 => mapping(address => uint256)) UserBatchCounts
```

### UserBatchFrom

```solidity
mapping(uint256 => mapping(address => string)) UserBatchFrom
```

### UserSubmittedStatus

```solidity
mapping(uint256 => mapping(address => string)) UserSubmittedStatus
```

### dllMap

```solidity
mapping(address => struct DLL2.ComplianceData) dllMap
```

### store

```solidity
struct AttributeStore2.ComplianceData store
```

### CompliancesMapping

```solidity
mapping(uint256 => struct DataCompliance.ComplianceData) CompliancesMapping
```

### DataBatch

```solidity
mapping(uint256 => struct DataCompliance.BatchMetadata) DataBatch
```

### WorkersState

```solidity
mapping(address => struct DataCompliance.WorkerState) WorkersState
```

### SystemStakedTokenBalance

```solidity
mapping(address => uint256) SystemStakedTokenBalance
```

### MasterWorkers

```solidity
mapping(address => address[]) MasterWorkers
```

### WorkersPerBatch

```solidity
mapping(uint256 => address[]) WorkersPerBatch
```

### CollectedSpotBatchs

```solidity
mapping(uint256 => bool) CollectedSpotBatchs
```

### availableWorkers

```solidity
address[] availableWorkers
```

### busyWorkers

```solidity
address[] busyWorkers
```

### toUnregisterWorkers

```solidity
address[] toUnregisterWorkers
```

### LastRandomSeed

```solidity
uint256 LastRandomSeed
```

### sFuel

```solidity
address sFuel
```

### DataNonce

```solidity
uint256 DataNonce
```

### BatchDeletionCursor

```solidity
uint256 BatchDeletionCursor
```

### LastBatchCounter

```solidity
uint256 LastBatchCounter
```

### BatchCheckingCursor

```solidity
uint256 BatchCheckingCursor
```

### AllocatedBatchCursor

```solidity
uint256 AllocatedBatchCursor
```

### AllTxsCounter

```solidity
uint256 AllTxsCounter
```

### AcceptedBatchsCounter

```solidity
uint256 AcceptedBatchsCounter
```

### RejectedBatchsCounter

```solidity
uint256 RejectedBatchsCounter
```

### NotCommitedCounter

```solidity
uint256 NotCommitedCounter
```

### NotRevealedCounter

```solidity
uint256 NotRevealedCounter
```

### token

```solidity
contract IERC20 token
```

### Parameters

```solidity
contract IParametersManager Parameters
```

### constructor

```solidity
constructor(address EXDT_token_) public
```

_Initializer. Can only be called once._

### destroyContract

```solidity
function destroyContract() public
```

### updateParametersManager

```solidity
function updateParametersManager(address addr) public
```

### updateBatchCheckingCursor

```solidity
function updateBatchCheckingCursor(uint256 BatchCheckingCursor_) public
```

### updateAllocatedBatchCursor

```solidity
function updateAllocatedBatchCursor(uint256 AllocatedBatchCursor_) public
```

### deleteCollectedSpotBatch

```solidity
function deleteCollectedSpotBatch(uint256 _BatchId) public
```

### deleteData

```solidity
function deleteData(uint256 _DataId) public
```

### deleteDataBatch

```solidity
function deleteDataBatch(uint256 _BatchId) public
```

### deleteOldData

```solidity
function deleteOldData() internal
```

### updatesFuelFaucet

```solidity
function updatesFuelFaucet(address _sFuel) public
```

### _retrieveSFuel

```solidity
function _retrieveSFuel() internal
```

### topUpSFuel

```solidity
modifier topUpSFuel()
```

### isInAvailableWorkers

```solidity
function isInAvailableWorkers(address _worker) internal view returns (bool)
```

### isInBusyWorkers

```solidity
function isInBusyWorkers(address _worker) internal view returns (bool)
```

### PopFromAvailableWorkers

```solidity
function PopFromAvailableWorkers(address _worker) internal
```

### PopFromBusyWorkers

```solidity
function PopFromBusyWorkers(address _worker) internal
```

### isWorkerAllocatedToBatch

```solidity
function isWorkerAllocatedToBatch(uint256 _DataBatchId, address _worker) public view returns (bool)
```

### RegisterWorker

```solidity
function RegisterWorker() public
```

### UnregisterWorker

```solidity
function UnregisterWorker() public
```

### processLogoffRequests

```solidity
function processLogoffRequests() internal
```

### Ping

```solidity
function Ping(uint256 CheckedBatchId) public
```

### TriggerUpdate

```solidity
function TriggerUpdate() public
```

### AreStringsEqual

```solidity
function AreStringsEqual(string _a, string _b) public pure returns (bool)
```

### BytesFailure

```solidity
event BytesFailure(bytes bytesFailure)
```

### ValidateDataBatch

```solidity
function ValidateDataBatch(uint256 _DataBatchId) public
```

Trigger the validation of a ComplianceData hash; if the ComplianceData has ended. If the requirements are APPROVED, 
    the CheckedData will be added to the APPROVED list of SpotCheckings
    @param _DataBatchId Integer identifier associated with target ComplianceData

### AllocateWork

```solidity
function AllocateWork() public
```

### IsNewWorkAvailable

```solidity
function IsNewWorkAvailable(address user_) public view returns (bool)
```

### GetCurrentWork

```solidity
function GetCurrentWork(address user_) public view returns (uint256)
```

### commitComplianceCheck

```solidity
function commitComplianceCheck(uint256 _DataBatchId, bytes32 _secretIPFSHash, uint256 _BatchCount, string _From, string _Status) public
```

Commits Compliance-check-vote using hash of choice and secret salt to conceal Compliance-check-vote until reveal
    @param _DataBatchId Integer identifier associated with target ComplianceData
    @param _secretIPFSHash ComplianceCheck HASH encrypted
    // @ _prevDataID The ID of the ComplianceData that the user has voted the maximum number of tokens in which is still less than or equal to numTokens

### revealComplianceCheck

```solidity
function revealComplianceCheck(uint256 _DataBatchId, uint256 _voteOption, string _clearIPFSHash, uint256 _salt) public
```

Reveals Compliance-check-vote with choice and secret salt used in generating commitHash to attribute committed tokens
    @param _DataBatchId Integer identifier associated with target ComplianceData
    @param _voteOption ComplianceCheck choice used to generate commitHash for associated ComplianceData
    @param _clearIPFSHash ComplianceCheck HASH in clear
    @param _salt Secret number used to generate commitHash for associated ComplianceData

### requestAllocatedStake

```solidity
function requestAllocatedStake(uint256 _numTokens, address _user) internal
```

Loads _numTokens ERC20 tokens into the voting contract for one-to-one voting rights
    @dev Assumes that msg.sender has approved voting contract to spend on their behalf
    @param _numTokens The number of votingTokens desired in exchange for ERC20 tokens

### withdrawVotingRights

```solidity
function withdrawVotingRights(uint256 _numTokens) public
```

Withdraw _numTokens ERC20 tokens from the voting contract, revoking these voting rights
    @param _numTokens The number of ERC20 tokens desired in exchange for voting rights

### getMySystemTokenBalance

```solidity
function getMySystemTokenBalance() public view returns (uint256 tokens)
```

### getSystemTokenBalance

```solidity
function getSystemTokenBalance(address _user) public view returns (uint256 tokens)
```

### getAcceptedBatchesCount

```solidity
function getAcceptedBatchesCount() public view returns (uint256 count)
```

### getRejectedBatchesCount

```solidity
function getRejectedBatchesCount() public view returns (uint256 count)
```

### rescueTokens

```solidity
function rescueTokens(uint256 _DataBatchId) public
```

_Unlocks tokens locked in unrevealed Compliance-check-vote where ComplianceData has ended
    @param _DataBatchId Integer identifier associated with the target ComplianceData_

### rescueTokensInMultipleDatas

```solidity
function rescueTokensInMultipleDatas(uint256[] _DataBatchIDs) public
```

_Unlocks tokens locked in unrevealed Compliance-check-votes where Datas have ended
    @param _DataBatchIDs Array of integer identifiers associated with the target Datas_

### getIPFShashesForBatch

```solidity
function getIPFShashesForBatch(uint256 _DataBatchId) public view returns (string[])
```

### getStatusForBatch

```solidity
function getStatusForBatch(uint256 _DataBatchId) public view returns (string[])
```

### getFromsForBatch

```solidity
function getFromsForBatch(uint256 _DataBatchId) public view returns (string[])
```

### getVotesForBatch

```solidity
function getVotesForBatch(uint256 _DataBatchId) public view returns (uint256[])
```

### getSubmittedFilesForBatch

```solidity
function getSubmittedFilesForBatch(uint256 _DataBatchId) public view returns (string[])
```

### getActiveWorkersCount

```solidity
function getActiveWorkersCount() public view returns (uint256 numWorkers)
```

### getAvailableWorkersCount

```solidity
function getAvailableWorkersCount() public view returns (uint256 numWorkers)
```

### getBusyWorkersCount

```solidity
function getBusyWorkersCount() public view returns (uint256 numWorkers)
```

### validPosition

```solidity
function validPosition(uint256 _prevID, uint256 _nextID, address _voter, uint256 _numTokens) public view returns (bool APPROVED)
```

_Compares previous and next ComplianceData's committed tokens for sorting purposes
    @param _prevID Integer identifier associated with previous ComplianceData in sorted order
    @param _nextID Integer identifier associated with next ComplianceData in sorted order
    @param _voter Address of user to check DLL position for
    @param _numTokens The number of tokens to be committed towards the ComplianceData (used for sorting)
    @return APPROVED Boolean indication of if the specified position maintains the sort_

### getNumPassingTokens

```solidity
function getNumPassingTokens(address _voter, uint256 _DataBatchId, uint256 _salt) public view returns (uint256 correctComplianceChecks)
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _voter | address |  |
| _DataBatchId | uint256 | Integer identifier associated with target ComplianceData
     @param _salt Arbitrarily chosen integer used to generate secretHash
     @return correctComplianceChecks Number of tokens voted for winning option |
| _salt | uint256 |  |

### getTotalNumberOfComplianceChecks

```solidity
function getTotalNumberOfComplianceChecks(uint256 _DataBatchId) public view returns (uint256 vc)
```

Trigger the validation of a ComplianceData hash; if the ComplianceData has ended. If the requirements are APPROVED, 
    the ComplianceChecking will be added to the APPROVED list of ComplianceCheckings
    @param _DataBatchId Integer identifier associated with target ComplianceData

### isPassed

```solidity
function isPassed(uint256 _DataBatchId) public view returns (bool passed)
```

Determines if proposal has passed
    @dev Check if votesFor out of totalComplianceChecks exceeds votesQuorum (requires DataEnded)
    @param _DataBatchId Integer identifier associated with target ComplianceData

### DataEnded

```solidity
function DataEnded(uint256 _DataBatchId) public view returns (bool ended)
```

Determines if ComplianceData is over
    @dev Checks isExpired for specified ComplianceData's revealEndDate
    @return ended Boolean indication of whether Dataing period is over

### getLastDataId

```solidity
function getLastDataId() public view returns (uint256 DataId)
```

getLastDataId
    @return DataId of the last Dataed a user started

### getLastBatchId

```solidity
function getLastBatchId() public view returns (uint256 LastBatchId)
```

getLastBatchId
    @return LastBatchId of the last Dataed a user started

### getLastCheckedBatchId

```solidity
function getLastCheckedBatchId() public view returns (uint256 LastCheckedBatchId)
```

getLastBachDataId
    @return LastCheckedBatchId of the last Dataed a user started

### getLastAllocatedBatchId

```solidity
function getLastAllocatedBatchId() public view returns (uint256 LastAllocatedBatchId)
```

getLastAllocatedBatchId
    @return LastAllocatedBatchId of the last Dataed a user started

### getTxCounter

```solidity
function getTxCounter() public view returns (uint256 Counter)
```

getCounter
    @return Counter of the last Dataed a user started

### DataCommitEndDate

```solidity
function DataCommitEndDate(uint256 _DataBatchId) public view returns (uint256 commitEndDate)
```

Determines DataCommitEndDate
    @return commitEndDate indication of whether Dataing period is over

### DataRevealEndDate

```solidity
function DataRevealEndDate(uint256 _DataBatchId) public view returns (uint256 revealEndDate)
```

Determines DataRevealEndDate
    @return revealEndDate indication of whether Dataing period is over

### commitPeriodActive

```solidity
function commitPeriodActive(uint256 _DataBatchId) public view returns (bool active)
```

Checks if the commit period is still active for the specified SpottedData
    @dev Checks isExpired for the specified SpottedData's commitEndDate
    @param _DataBatchId Integer identifier associated with target SpottedData
    @return active Boolean indication of isCommitPeriodActive for target SpottedData

### revealPeriodActive

```solidity
function revealPeriodActive(uint256 _DataBatchId) public view returns (bool active)
```

Checks if the reveal period is still active for the specified ComplianceData
    @dev Checks isExpired for the specified ComplianceData's revealEndDate
    @param _DataBatchId Integer identifier associated with target ComplianceData

### didCommit

```solidity
function didCommit(address _voter, uint256 _DataBatchId) public view returns (bool committed)
```

_Checks if user has committed for specified ComplianceData
    @param _voter Address of user to check against
    @param _DataBatchId Integer identifier associated with target ComplianceData
    @return committed Boolean indication of whether user has committed_

### didReveal

```solidity
function didReveal(address _voter, uint256 _DataBatchId) public view returns (bool revealed)
```

_Checks if user has revealed for specified ComplianceData
    @param _voter Address of user to check against
    @param _DataBatchId Integer identifier associated with target ComplianceData
    @return revealed Boolean indication of whether user has revealed_

### DataExists

```solidity
function DataExists(uint256 _DataBatchId) public view returns (bool exists)
```

_Checks if a ComplianceData exists
    @param _DataBatchId The DataID whose existance is to be evaluated.
    @return exists Boolean Indicates whether a ComplianceData exists for the provided DataID_

### AmIRegistered

```solidity
function AmIRegistered() public view returns (bool passed)
```

### isWorkerRegistered

```solidity
function isWorkerRegistered(address _worker) public view returns (bool passed)
```

### getBatchByID

```solidity
function getBatchByID(uint256 _DataBatchId) public view returns (struct DataCompliance.BatchMetadata batch)
```

getLastBachDataId
    @return batch of the last Dataed a user started

### getBatchIPFSFileByID

```solidity
function getBatchIPFSFileByID(uint256 _DataBatchId) public view returns (string batch)
```

getLastBachDataId
    @return batch of the last Dataed a user started

### getAcceptedBatchFilesRange

```solidity
function getAcceptedBatchFilesRange(uint256 _DataBatchId_start, uint256 _DataBatchId_end) public view returns (string[] batch)
```

### getAcceptedBatchFileFrom

```solidity
function getAcceptedBatchFileFrom(uint256 _DataBatchId_start) public view returns (string[] batch)
```

### getDataByID

```solidity
function getDataByID(uint256 _DataId) public view returns (struct DataCompliance.ComplianceData data)
```

getLastBachDataId
    @return data of the last Dataed a user started

### getCommitVoteHash

```solidity
function getCommitVoteHash(address _voter, uint256 _DataBatchId) public view returns (bytes32 commitHash)
```

_Gets the bytes32 commitHash property of target SpottedData
    @param _voter Address of user to check against
    @param _DataBatchId Integer identifier associated with target SpottedData
    @return commitHash Bytes32 hash property attached to target SpottedData_

### getCommitIPFSHash

```solidity
function getCommitIPFSHash(address _voter, uint256 _DataBatchId) public view returns (bytes32 commitHash)
```

_Gets the bytes32 commitHash property of target SpottedData
    @param _voter Address of user to check against
    @param _DataBatchId Integer identifier associated with target SpottedData
    @return commitHash Bytes32 hash property attached to target SpottedData_

### getEncryptedStringHash

```solidity
function getEncryptedStringHash(string _hash, uint256 _salt) public pure returns (bytes32 keccak256hash)
```

_Gets the bytes32 commitHash property of target ComplianceData
    @param _hash ipfs hash of aggregated data in a string
    @param _salt is the salt
    @return keccak256hash Bytes32 hash property attached to target ComplianceData_

### getNumTokens

```solidity
function getNumTokens(address _voter, uint256 _DataBatchId) public view returns (uint256 numTokens)
```

_Wrapper for getAttribute with attrName="numTokens"
    @param _voter Address of user to check against
    @param _DataBatchId Integer identifier associated with target ComplianceData
    @return numTokens Number of tokens committed to ComplianceData in sorted ComplianceData-linked-list_

### getLastNode

```solidity
function getLastNode(address _voter) public view returns (uint256 DataID)
```

_Gets top element of sorted ComplianceData-linked-list
    @param _voter Address of user to check against
    @return DataID Integer identifier to ComplianceData with maximum number of tokens committed to it_

### getLockedTokens

```solidity
function getLockedTokens(address _voter) public view returns (uint256 numTokens)
```

_Gets the numTokens property of getLastNode
    @param _voter Address of user to check against
    @return numTokens Maximum number of tokens committed in ComplianceData specified_

### getInsertPointForNumTokens

```solidity
function getInsertPointForNumTokens(address _voter, uint256 _numTokens, uint256 _DataBatchId) public view returns (uint256 prevNode)
```

### isExpired

```solidity
function isExpired(uint256 _terminationDate) public view returns (bool expired)
```

_Checks if an expiration date has been reached
    @param _terminationDate Integer timestamp of date to compare current timestamp with
    @return expired Boolean indication of whether the terminationDate has passed_

### attrUUID

```solidity
function attrUUID(address _user, uint256 _DataBatchId) public pure returns (bytes32 UUID)
```

_Generates an identifier which associates a user and a ComplianceData together
    @param _DataBatchId Integer identifier associated with target ComplianceData
    @return UUID Hash which is deterministic from _user and _DataBatchId_

## AttributeStore3

### IndexingData

```solidity
struct IndexingData {
  mapping(bytes32 => uint256) store;
}
```

### getAttribute

```solidity
function getAttribute(struct AttributeStore3.IndexingData self, bytes32 _UUID, string _attrName) public view returns (uint256)
```

### setAttribute

```solidity
function setAttribute(struct AttributeStore3.IndexingData self, bytes32 _UUID, string _attrName, uint256 _attrVal) public
```

## DLL3

### NULL_NODE_ID

```solidity
uint256 NULL_NODE_ID
```

### Node

```solidity
struct Node {
  uint256 next;
  uint256 prev;
}
```

### IndexingData

```solidity
struct IndexingData {
  mapping(uint256 => struct DLL3.Node) dll;
}
```

### isEmpty

```solidity
function isEmpty(struct DLL3.IndexingData self) public view returns (bool)
```

### contains

```solidity
function contains(struct DLL3.IndexingData self, uint256 _curr) public view returns (bool)
```

### getNext

```solidity
function getNext(struct DLL3.IndexingData self, uint256 _curr) public view returns (uint256)
```

### getPrev

```solidity
function getPrev(struct DLL3.IndexingData self, uint256 _curr) public view returns (uint256)
```

### getStart

```solidity
function getStart(struct DLL3.IndexingData self) public view returns (uint256)
```

### getEnd

```solidity
function getEnd(struct DLL3.IndexingData self) public view returns (uint256)
```

### insert

```solidity
function insert(struct DLL3.IndexingData self, uint256 _prev, uint256 _curr, uint256 _next) public
```

_Inserts a new node between _prev and _next. When inserting a node already existing in 
  the list it will be automatically removed from the old position.
  @param _prev the node which _new will be inserted after
  @param _curr the id of the new node being inserted
  @param _next the node which _new will be inserted before_

### remove

```solidity
function remove(struct DLL3.IndexingData self, uint256 _curr) public
```

## IParametersManager

### getMaxTotalWorkers

```solidity
function getMaxTotalWorkers() external view returns (uint256)
```

### getVoteQuorum

```solidity
function getVoteQuorum() external view returns (uint256)
```

### get_MAX_UPDATE_ITERATIONS

```solidity
function get_MAX_UPDATE_ITERATIONS() external view returns (uint256)
```

### get_MAX_CONTRACT_STORED_BATCHES

```solidity
function get_MAX_CONTRACT_STORED_BATCHES() external view returns (uint256)
```

### get_MAX_SUCCEEDING_NOVOTES

```solidity
function get_MAX_SUCCEEDING_NOVOTES() external view returns (uint256)
```

### get_NOVOTE_REGISTRATION_WAIT_DURATION

```solidity
function get_NOVOTE_REGISTRATION_WAIT_DURATION() external view returns (uint256)
```

### getStakeManager

```solidity
function getStakeManager() external view returns (address)
```

### getRepManager

```solidity
function getRepManager() external view returns (address)
```

### getAddressManager

```solidity
function getAddressManager() external view returns (address)
```

### getRewardManager

```solidity
function getRewardManager() external view returns (address)
```

### getArchivingSystem

```solidity
function getArchivingSystem() external view returns (address)
```

### getSpottingSystem

```solidity
function getSpottingSystem() external view returns (address)
```

### getComplianceSystem

```solidity
function getComplianceSystem() external view returns (address)
```

### getIndexingSystem

```solidity
function getIndexingSystem() external view returns (address)
```

### getsFuelSystem

```solidity
function getsFuelSystem() external view returns (address)
```

### getExordeToken

```solidity
function getExordeToken() external view returns (address)
```

### get_INDEXING_DATA_BATCH_SIZE

```solidity
function get_INDEXING_DATA_BATCH_SIZE() external view returns (uint256)
```

### get_INDEXING_MIN_STAKE

```solidity
function get_INDEXING_MIN_STAKE() external view returns (uint256)
```

### get_INDEXING_MIN_CONSENSUS_WORKER_COUNT

```solidity
function get_INDEXING_MIN_CONSENSUS_WORKER_COUNT() external view returns (uint256)
```

### get_INDEXING_MAX_CONSENSUS_WORKER_COUNT

```solidity
function get_INDEXING_MAX_CONSENSUS_WORKER_COUNT() external view returns (uint256)
```

### get_INDEXING_COMMIT_ROUND_DURATION

```solidity
function get_INDEXING_COMMIT_ROUND_DURATION() external view returns (uint256)
```

### get_INDEXING_REVEAL_ROUND_DURATION

```solidity
function get_INDEXING_REVEAL_ROUND_DURATION() external view returns (uint256)
```

### get_INDEXING_MIN_REWARD_DataValidation

```solidity
function get_INDEXING_MIN_REWARD_DataValidation() external view returns (uint256)
```

### get_INDEXING_MIN_REP_DataValidation

```solidity
function get_INDEXING_MIN_REP_DataValidation() external view returns (uint256)
```

## IStakeManager

### ProxyStakeAllocate

```solidity
function ProxyStakeAllocate(uint256 _StakeAllocation, address _stakeholder) external returns (bool)
```

### ProxyStakeDeallocate

```solidity
function ProxyStakeDeallocate(uint256 _StakeToDeallocate, address _stakeholder) external returns (bool)
```

## IRepManager

### mintReputationForWork

```solidity
function mintReputationForWork(uint256 _amount, address _beneficiary, bytes32) external returns (bool)
```

### burnReputationForWork

```solidity
function burnReputationForWork(uint256 _amount, address _beneficiary, bytes32) external returns (bool)
```

## IRewardManager

### ProxyAddReward

```solidity
function ProxyAddReward(uint256 _RewardsAllocation, address _user) external returns (bool)
```

## IAddressManager

### isMasterOf

```solidity
function isMasterOf(address _master, address _address) external returns (bool)
```

### isSubWorkerOf

```solidity
function isSubWorkerOf(address _master, address _address) external returns (bool)
```

### AreMasterSubLinked

```solidity
function AreMasterSubLinked(address _master, address _address) external returns (bool)
```

### getMasterSubs

```solidity
function getMasterSubs(address _master) external view returns (address)
```

### getMaster

```solidity
function getMaster(address _worker) external view returns (address)
```

### FetchHighestMaster

```solidity
function FetchHighestMaster(address _worker) external view returns (address)
```

## IPreviousSystem

### DataStatus

```solidity
enum DataStatus {
  TBD,
  APPROVED,
  REJECTED,
  FLAGGED
}
```

### BatchMetadata

```solidity
struct BatchMetadata {
  uint256 start_idx;
  uint256 counter;
  uint256 uncommited_workers;
  uint256 unrevealed_workers;
  bool complete;
  bool checked;
  bool allocated_to_work;
  uint256 commitEndDate;
  uint256 revealEndDate;
  uint256 votesFor;
  uint256 votesAgainst;
  string batchIPFSfile;
  uint256 item_count;
  enum IPreviousSystem.DataStatus status;
}
```

### SpottedData

```solidity
struct SpottedData {
  string ipfs_hash;
  address author;
  uint256 timestamp;
  uint256 item_count;
  string URL_domain;
  string extra;
  enum IPreviousSystem.DataStatus status;
}
```

### getBatchByID

```solidity
function getBatchByID(uint256 _DataBatchId) external returns (struct IPreviousSystem.BatchMetadata batch)
```

### DataExists

```solidity
function DataExists(uint256 _DataBatchId) external returns (bool exists)
```

## DataIndexing

### _IndexingSubmitted

```solidity
event _IndexingSubmitted(uint256 DataID, string file_hash, address sender)
```

### _IndexingCheckCommitted

```solidity
event _IndexingCheckCommitted(uint256 DataID, uint256 numTokens, address voter)
```

### _IndexingCheckRevealed

```solidity
event _IndexingCheckRevealed(uint256 DataID, uint256 numTokens, uint256 votesFor, uint256 votesAgainst, uint256 choice, address voter)
```

### _IndexingAccepted

```solidity
event _IndexingAccepted(string hash, address creator)
```

### _WorkAllocated

```solidity
event _WorkAllocated(uint256 batchID, address worker)
```

### _WorkerRegistered

```solidity
event _WorkerRegistered(address worker, uint256 timestamp)
```

### _WorkerUnregistered

```solidity
event _WorkerUnregistered(address worker, uint256 timestamp)
```

### _StakeAllocated

```solidity
event _StakeAllocated(uint256 numTokens, address voter)
```

### _VotingRightsWithdrawn

```solidity
event _VotingRightsWithdrawn(uint256 numTokens, address voter)
```

### _TokensRescued

```solidity
event _TokensRescued(uint256 DataID, address voter)
```

### _DataBatchDeleted

```solidity
event _DataBatchDeleted(uint256 batchID)
```

### DataStatus

```solidity
enum DataStatus {
  TBD,
  APPROVED,
  REJECTED,
  FLAGGED
}
```

### WorkerState

```solidity
struct WorkerState {
  address worker_address;
  uint256 allocated_work_batch;
  bool has_completed_work;
  uint256 succeeding_novote_count;
  uint256 last_interaction_date;
  bool registered;
  bool unregistration_request;
  uint256 registration_date;
  uint256 majority_counter;
  uint256 minority_counter;
}
```

### BatchMetadata

```solidity
struct BatchMetadata {
  uint256 start_idx;
  uint256 counter;
  uint256 uncommited_workers;
  uint256 unrevealed_workers;
  uint256 item_count;
  bool complete;
  bool checked;
  bool allocated_to_work;
  uint256 commitEndDate;
  uint256 revealEndDate;
  uint256 votesFor;
  uint256 votesAgainst;
  string batchIPFSfile;
  enum DataIndexing.DataStatus status;
}
```

### IndexingData

```solidity
struct IndexingData {
  string ipfs_hash;
  address author;
  uint256 timestamp;
  enum DataIndexing.DataStatus status;
}
```

### UserChecksCommits

```solidity
mapping(address => mapping(uint256 => bool)) UserChecksCommits
```

### UserChecksReveals

```solidity
mapping(address => mapping(uint256 => bool)) UserChecksReveals
```

### UserVotes

```solidity
mapping(uint256 => mapping(address => uint256)) UserVotes
```

### UserNewFiles

```solidity
mapping(uint256 => mapping(address => string)) UserNewFiles
```

### UserBatchCounts

```solidity
mapping(uint256 => mapping(address => uint256)) UserBatchCounts
```

### UserBatchFrom

```solidity
mapping(uint256 => mapping(address => string)) UserBatchFrom
```

### UserSubmittedStatus

```solidity
mapping(uint256 => mapping(address => string)) UserSubmittedStatus
```

### dllMap

```solidity
mapping(address => struct DLL3.IndexingData) dllMap
```

### store

```solidity
struct AttributeStore3.IndexingData store
```

### IndexingsMapping

```solidity
mapping(uint256 => struct DataIndexing.IndexingData) IndexingsMapping
```

### DataBatch

```solidity
mapping(uint256 => struct DataIndexing.BatchMetadata) DataBatch
```

### WorkersState

```solidity
mapping(address => struct DataIndexing.WorkerState) WorkersState
```

### SystemStakedTokenBalance

```solidity
mapping(address => uint256) SystemStakedTokenBalance
```

### MasterWorkers

```solidity
mapping(address => address[]) MasterWorkers
```

### WorkersPerBatch

```solidity
mapping(uint256 => address[]) WorkersPerBatch
```

### CollectedSpotBatchs

```solidity
mapping(uint256 => bool) CollectedSpotBatchs
```

### availableWorkers

```solidity
address[] availableWorkers
```

### busyWorkers

```solidity
address[] busyWorkers
```

### toUnregisterWorkers

```solidity
address[] toUnregisterWorkers
```

### LastRandomSeed

```solidity
uint256 LastRandomSeed
```

### sFuel

```solidity
address sFuel
```

### DataNonce

```solidity
uint256 DataNonce
```

### BatchDeletionCursor

```solidity
uint256 BatchDeletionCursor
```

### LastBatchCounter

```solidity
uint256 LastBatchCounter
```

### BatchCheckingCursor

```solidity
uint256 BatchCheckingCursor
```

### AllocatedBatchCursor

```solidity
uint256 AllocatedBatchCursor
```

### AllTxsCounter

```solidity
uint256 AllTxsCounter
```

### AcceptedBatchsCounter

```solidity
uint256 AcceptedBatchsCounter
```

### RejectedBatchsCounter

```solidity
uint256 RejectedBatchsCounter
```

### NotCommitedCounter

```solidity
uint256 NotCommitedCounter
```

### NotRevealedCounter

```solidity
uint256 NotRevealedCounter
```

### token

```solidity
contract IERC20 token
```

### Parameters

```solidity
contract IParametersManager Parameters
```

### constructor

```solidity
constructor(address EXDT_token_) public
```

_Initializer. Can only be called once._

### destroyContract

```solidity
function destroyContract() public
```

### updateParametersManager

```solidity
function updateParametersManager(address addr) public
```

### updateBatchCheckingCursor

```solidity
function updateBatchCheckingCursor(uint256 BatchCheckingCursor_) public
```

### updateAllocatedBatchCursor

```solidity
function updateAllocatedBatchCursor(uint256 AllocatedBatchCursor_) public
```

### deleteCollectedSpotBatch

```solidity
function deleteCollectedSpotBatch(uint256 _BatchId) public
```

### deleteData

```solidity
function deleteData(uint256 _DataId) public
```

### deleteDataBatch

```solidity
function deleteDataBatch(uint256 _BatchId) public
```

### deleteOldData

```solidity
function deleteOldData() internal
```

### updatesFuelFaucet

```solidity
function updatesFuelFaucet(address _sFuel) public
```

### _retrieveSFuel

```solidity
function _retrieveSFuel() internal
```

### topUpSFuel

```solidity
modifier topUpSFuel()
```

### isInAvailableWorkers

```solidity
function isInAvailableWorkers(address _worker) internal view returns (bool)
```

### isInBusyWorkers

```solidity
function isInBusyWorkers(address _worker) internal view returns (bool)
```

### PopFromAvailableWorkers

```solidity
function PopFromAvailableWorkers(address _worker) internal
```

### PopFromBusyWorkers

```solidity
function PopFromBusyWorkers(address _worker) internal
```

### isWorkerAllocatedToBatch

```solidity
function isWorkerAllocatedToBatch(uint256 _DataBatchId, address _worker) public view returns (bool)
```

### RegisterWorker

```solidity
function RegisterWorker() public
```

### UnregisterWorker

```solidity
function UnregisterWorker() public
```

### processLogoffRequests

```solidity
function processLogoffRequests() internal
```

### Ping

```solidity
function Ping(uint256 CheckedBatchId) public
```

### TriggerUpdate

```solidity
function TriggerUpdate() public
```

### AreStringsEqual

```solidity
function AreStringsEqual(string _a, string _b) public pure returns (bool)
```

### BytesFailure

```solidity
event BytesFailure(bytes bytesFailure)
```

### ValidateDataBatch

```solidity
function ValidateDataBatch(uint256 _DataBatchId) public
```

Trigger the validation of a IndexingData hash; if the IndexingData has ended. If the requirements are APPROVED, 
    the CheckedData will be added to the APPROVED list of SpotCheckings
    @param _DataBatchId Integer identifier associated with target IndexingData

### AllocateWork

```solidity
function AllocateWork() public
```

### IsNewWorkAvailable

```solidity
function IsNewWorkAvailable(address user_) public view returns (bool)
```

### GetCurrentWork

```solidity
function GetCurrentWork(address user_) public view returns (uint256)
```

### commitIndexingCheck

```solidity
function commitIndexingCheck(uint256 _DataBatchId, bytes32 _secretIPFSHash, uint256 _BatchCount, string _From, string _Status) public
```

Commits INDEXING-check-vote using hash of choice and secret salt to conceal INDEXING-check-vote until reveal
    @param _DataBatchId Integer identifier associated with target IndexingData
    @param _secretIPFSHash IndexingCheck HASH encrypted
    // @ _prevDataID The ID of the IndexingData that the user has voted the maximum number of tokens in which is still less than or equal to numTokens

### revealIndexingCheck

```solidity
function revealIndexingCheck(uint256 _DataBatchId, uint256 _voteOption, string _clearIPFSHash, uint256 _salt) public
```

Reveals INDEXING-check-vote with choice and secret salt used in generating commitHash to attribute committed tokens
    @param _DataBatchId Integer identifier associated with target IndexingData
    @param _voteOption IndexingCheck choice used to generate commitHash for associated IndexingData
    @param _clearIPFSHash IndexingCheck HASH in clear
    @param _salt Secret number used to generate commitHash for associated IndexingData

### requestAllocatedStake

```solidity
function requestAllocatedStake(uint256 _numTokens, address _user) internal
```

Loads _numTokens ERC20 tokens into the voting contract for one-to-one voting rights
    @dev Assumes that msg.sender has approved voting contract to spend on their behalf
    @param _numTokens The number of votingTokens desired in exchange for ERC20 tokens

### withdrawVotingRights

```solidity
function withdrawVotingRights(uint256 _numTokens) public
```

Withdraw _numTokens ERC20 tokens from the voting contract, revoking these voting rights
    @param _numTokens The number of ERC20 tokens desired in exchange for voting rights

### getMySystemTokenBalance

```solidity
function getMySystemTokenBalance() public view returns (uint256 tokens)
```

### getSystemTokenBalance

```solidity
function getSystemTokenBalance(address _user) public view returns (uint256 tokens)
```

### getAcceptedBatchesCount

```solidity
function getAcceptedBatchesCount() public view returns (uint256 count)
```

### getRejectedBatchesCount

```solidity
function getRejectedBatchesCount() public view returns (uint256 count)
```

### rescueTokens

```solidity
function rescueTokens(uint256 _DataBatchId) public
```

_Unlocks tokens locked in unrevealed INDEXING-check-vote where IndexingData has ended
    @param _DataBatchId Integer identifier associated with the target IndexingData_

### rescueTokensInMultipleDatas

```solidity
function rescueTokensInMultipleDatas(uint256[] _DataBatchIDs) public
```

_Unlocks tokens locked in unrevealed INDEXING-check-votes where Datas have ended
    @param _DataBatchIDs Array of integer identifiers associated with the target Datas_

### getIPFShashesForBatch

```solidity
function getIPFShashesForBatch(uint256 _DataBatchId) public view returns (string[])
```

### getStatusForBatch

```solidity
function getStatusForBatch(uint256 _DataBatchId) public view returns (string[])
```

### getFromsForBatch

```solidity
function getFromsForBatch(uint256 _DataBatchId) public view returns (string[])
```

### getVotesForBatch

```solidity
function getVotesForBatch(uint256 _DataBatchId) public view returns (uint256[])
```

### getSubmittedFilesForBatch

```solidity
function getSubmittedFilesForBatch(uint256 _DataBatchId) public view returns (string[])
```

### getActiveWorkersCount

```solidity
function getActiveWorkersCount() public view returns (uint256 numWorkers)
```

### getAvailableWorkersCount

```solidity
function getAvailableWorkersCount() public view returns (uint256 numWorkers)
```

### getBusyWorkersCount

```solidity
function getBusyWorkersCount() public view returns (uint256 numWorkers)
```

### validPosition

```solidity
function validPosition(uint256 _prevID, uint256 _nextID, address _voter, uint256 _numTokens) public view returns (bool APPROVED)
```

_Compares previous and next IndexingData's committed tokens for sorting purposes
    @param _prevID Integer identifier associated with previous IndexingData in sorted order
    @param _nextID Integer identifier associated with next IndexingData in sorted order
    @param _voter Address of user to check DLL position for
    @param _numTokens The number of tokens to be committed towards the IndexingData (used for sorting)
    @return APPROVED Boolean indication of if the specified position maintains the sort_

### getNumPassingTokens

```solidity
function getNumPassingTokens(address _voter, uint256 _DataBatchId, uint256 _salt) public view returns (uint256 correctIndexingChecks)
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _voter | address |  |
| _DataBatchId | uint256 | Integer identifier associated with target IndexingData
     @param _salt Arbitrarily chosen integer used to generate secretHash
     @return correctIndexingChecks Number of tokens voted for winning option |
| _salt | uint256 |  |

### getTotalNumberOfIndexingChecks

```solidity
function getTotalNumberOfIndexingChecks(uint256 _DataBatchId) public view returns (uint256 vc)
```

Trigger the validation of a IndexingData hash; if the IndexingData has ended. If the requirements are APPROVED, 
    the IndexingChecking will be added to the APPROVED list of IndexingCheckings
    @param _DataBatchId Integer identifier associated with target IndexingData

### isPassed

```solidity
function isPassed(uint256 _DataBatchId) public view returns (bool passed)
```

Determines if proposal has passed
    @dev Check if votesFor out of totalIndexingChecks exceeds votesQuorum (requires DataEnded)
    @param _DataBatchId Integer identifier associated with target IndexingData

### DataEnded

```solidity
function DataEnded(uint256 _DataBatchId) public view returns (bool ended)
```

Determines if IndexingData is over
    @dev Checks isExpired for specified IndexingData's revealEndDate
    @return ended Boolean indication of whether Dataing period is over

### getLastDataId

```solidity
function getLastDataId() public view returns (uint256 DataId)
```

getLastDataId
    @return DataId of the last Dataed a user started

### getLastBatchId

```solidity
function getLastBatchId() public view returns (uint256 LastBatchId)
```

getLastBatchId
    @return LastBatchId of the last Dataed a user started

### getLastCheckedBatchId

```solidity
function getLastCheckedBatchId() public view returns (uint256 LastCheckedBatchId)
```

getLastBachDataId
    @return LastCheckedBatchId of the last Dataed a user started

### getLastAllocatedBatchId

```solidity
function getLastAllocatedBatchId() public view returns (uint256 LastAllocatedBatchId)
```

getLastAllocatedBatchId
    @return LastAllocatedBatchId of the last Dataed a user started

### getTxCounter

```solidity
function getTxCounter() public view returns (uint256 Counter)
```

getCounter
    @return Counter of the last Dataed a user started

### DataCommitEndDate

```solidity
function DataCommitEndDate(uint256 _DataBatchId) public view returns (uint256 commitEndDate)
```

Determines DataCommitEndDate
    @return commitEndDate indication of whether Dataing period is over

### DataRevealEndDate

```solidity
function DataRevealEndDate(uint256 _DataBatchId) public view returns (uint256 revealEndDate)
```

Determines DataRevealEndDate
    @return revealEndDate indication of whether Dataing period is over

### commitPeriodActive

```solidity
function commitPeriodActive(uint256 _DataBatchId) public view returns (bool active)
```

Checks if the commit period is still active for the specified SpottedData
    @dev Checks isExpired for the specified SpottedData's commitEndDate
    @param _DataBatchId Integer identifier associated with target SpottedData
    @return active Boolean indication of isCommitPeriodActive for target SpottedData

### revealPeriodActive

```solidity
function revealPeriodActive(uint256 _DataBatchId) public view returns (bool active)
```

Checks if the reveal period is still active for the specified IndexingData
    @dev Checks isExpired for the specified IndexingData's revealEndDate
    @param _DataBatchId Integer identifier associated with target IndexingData

### didCommit

```solidity
function didCommit(address _voter, uint256 _DataBatchId) public view returns (bool committed)
```

_Checks if user has committed for specified IndexingData
    @param _voter Address of user to check against
    @param _DataBatchId Integer identifier associated with target IndexingData
    @return committed Boolean indication of whether user has committed_

### didReveal

```solidity
function didReveal(address _voter, uint256 _DataBatchId) public view returns (bool revealed)
```

_Checks if user has revealed for specified IndexingData
    @param _voter Address of user to check against
    @param _DataBatchId Integer identifier associated with target IndexingData
    @return revealed Boolean indication of whether user has revealed_

### DataExists

```solidity
function DataExists(uint256 _DataBatchId) public view returns (bool exists)
```

_Checks if a IndexingData exists
    @param _DataBatchId The DataID whose existance is to be evaluated.
    @return exists Boolean Indicates whether a IndexingData exists for the provided DataID_

### AmIRegistered

```solidity
function AmIRegistered() public view returns (bool passed)
```

### isWorkerRegistered

```solidity
function isWorkerRegistered(address _worker) public view returns (bool passed)
```

### getBatchByID

```solidity
function getBatchByID(uint256 _DataBatchId) public view returns (struct DataIndexing.BatchMetadata batch)
```

getLastBachDataId
    @return batch of the last Dataed a user started

### getBatchIPFSFileByID

```solidity
function getBatchIPFSFileByID(uint256 _DataBatchId) public view returns (string batch)
```

getLastBachDataId
    @return batch of the last Dataed a user started

### getAcceptedBatchFilesRange

```solidity
function getAcceptedBatchFilesRange(uint256 _DataBatchId_start, uint256 _DataBatchId_end) public view returns (string[] batch)
```

### getAcceptedBatchFileFrom

```solidity
function getAcceptedBatchFileFrom(uint256 _DataBatchId_start) public view returns (string[] batch)
```

### getDataByID

```solidity
function getDataByID(uint256 _DataId) public view returns (struct DataIndexing.IndexingData data)
```

getLastBachDataId
    @return data of the last Dataed a user started

### getCommitVoteHash

```solidity
function getCommitVoteHash(address _voter, uint256 _DataBatchId) public view returns (bytes32 commitHash)
```

_Gets the bytes32 commitHash property of target SpottedData
    @param _voter Address of user to check against
    @param _DataBatchId Integer identifier associated with target SpottedData
    @return commitHash Bytes32 hash property attached to target SpottedData_

### getCommitIPFSHash

```solidity
function getCommitIPFSHash(address _voter, uint256 _DataBatchId) public view returns (bytes32 commitHash)
```

_Gets the bytes32 commitHash property of target SpottedData
    @param _voter Address of user to check against
    @param _DataBatchId Integer identifier associated with target SpottedData
    @return commitHash Bytes32 hash property attached to target SpottedData_

### getEncryptedStringHash

```solidity
function getEncryptedStringHash(string _hash, uint256 _salt) public pure returns (bytes32 keccak256hash)
```

_Gets the bytes32 commitHash property of target IndexingData
    @param _hash ipfs hash of aggregated data in a string
    @param _salt is the salt
    @return keccak256hash Bytes32 hash property attached to target IndexingData_

### getNumTokens

```solidity
function getNumTokens(address _voter, uint256 _DataBatchId) public view returns (uint256 numTokens)
```

_Wrapper for getAttribute with attrName="numTokens"
    @param _voter Address of user to check against
    @param _DataBatchId Integer identifier associated with target IndexingData
    @return numTokens Number of tokens committed to IndexingData in sorted IndexingData-linked-list_

### getLastNode

```solidity
function getLastNode(address _voter) public view returns (uint256 DataID)
```

_Gets top element of sorted IndexingData-linked-list
    @param _voter Address of user to check against
    @return DataID Integer identifier to IndexingData with maximum number of tokens committed to it_

### getLockedTokens

```solidity
function getLockedTokens(address _voter) public view returns (uint256 numTokens)
```

_Gets the numTokens property of getLastNode
    @param _voter Address of user to check against
    @return numTokens Maximum number of tokens committed in IndexingData specified_

### getInsertPointForNumTokens

```solidity
function getInsertPointForNumTokens(address _voter, uint256 _numTokens, uint256 _DataBatchId) public view returns (uint256 prevNode)
```

### isExpired

```solidity
function isExpired(uint256 _terminationDate) public view returns (bool expired)
```

_Checks if an expiration date has been reached
    @param _terminationDate Integer timestamp of date to compare current timestamp with
    @return expired Boolean indication of whether the terminationDate has passed_

### attrUUID

```solidity
function attrUUID(address _user, uint256 _DataBatchId) public pure returns (bytes32 UUID)
```

_Generates an identifier which associates a user and a IndexingData together
    @param _DataBatchId Integer identifier associated with target IndexingData
    @return UUID Hash which is deterministic from _user and _DataBatchId_

## IReputation

### balanceOf

```solidity
function balanceOf(address _owner) external view returns (uint256 balance)
```

## IRepManager

### mintReputationForWork

```solidity
function mintReputationForWork(uint256 _amount, address _beneficiary, bytes32) external returns (bool)
```

### burnReputationForWork

```solidity
function burnReputationForWork(uint256 _amount, address _beneficiary, bytes32) external returns (bool)
```

## IRewardManager

### ProxyAddReward

```solidity
function ProxyAddReward(uint256 _RewardsAllocation, address _user) external returns (bool)
```

### ProxyTransferRewards

```solidity
function ProxyTransferRewards(address _user, address _recipient) external returns (bool)
```

### RewardsBalanceOf

```solidity
function RewardsBalanceOf(address _address) external returns (uint256)
```

## IParametersManager

### getStakeManager

```solidity
function getStakeManager() external view returns (address)
```

### getRepManager

```solidity
function getRepManager() external view returns (address)
```

### getReputationSystem

```solidity
function getReputationSystem() external view returns (address)
```

### getAddressManager

```solidity
function getAddressManager() external view returns (address)
```

### getRewardManager

```solidity
function getRewardManager() external view returns (address)
```

### getArchivingSystem

```solidity
function getArchivingSystem() external view returns (address)
```

### getSpottingSystem

```solidity
function getSpottingSystem() external view returns (address)
```

### getComplianceSystem

```solidity
function getComplianceSystem() external view returns (address)
```

### getIndexingSystem

```solidity
function getIndexingSystem() external view returns (address)
```

### getsFuelSystem

```solidity
function getsFuelSystem() external view returns (address)
```

### getExordeToken

```solidity
function getExordeToken() external view returns (address)
```

## AddressManager

### MasterClaimingWorker

```solidity
mapping(address => mapping(address => bool)) MasterClaimingWorker
```

### WorkerClaimingMaster

```solidity
mapping(address => mapping(address => bool)) WorkerClaimingMaster
```

### MasterToSubsMap

```solidity
mapping(address => address[]) MasterToSubsMap
```

### SubToMasterMap

```solidity
mapping(address => address) SubToMasterMap
```

### MAX_MASTER_LOOKUP

```solidity
uint256 MAX_MASTER_LOOKUP
```

### Parameters

```solidity
contract IParametersManager Parameters
```

### AddressAddedByMaster

```solidity
event AddressAddedByMaster(address account, address account2)
```

### AddressRemovedByMaster

```solidity
event AddressRemovedByMaster(address account, address account2)
```

### AddressAddedByWorker

```solidity
event AddressAddedByWorker(address account, address account2)
```

### AddressRemovedByWorker

```solidity
event AddressRemovedByWorker(address account, address account2)
```

### ReputationTransfered

```solidity
event ReputationTransfered(address account, address account2)
```

### RewardsTransfered

```solidity
event RewardsTransfered(address account, address account2)
```

### updateParametersManager

```solidity
function updateParametersManager(address addr) public
```

Updates the Parameters Manager contract to use

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| addr | address | new address of the Parameters Manager contract |

### isMasterOfMe

```solidity
function isMasterOfMe(address _master) public view returns (bool)
```

Returns if _master is a master of msg.sender

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _master | address | address |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool true if _master is a Master of msg.sender |

### isMasterOf

```solidity
function isMasterOf(address _master, address _address) public view returns (bool)
```

Returns if _master is a master of _address

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _master | address | address |
| _address | address | address |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool true if _master is a Master of _address |

### getMasterSubs

```solidity
function getMasterSubs(address _master) public view returns (address[])
```

Get all sub workers for a given Master address

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _master | address | address |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | address[] | array of addresses |

### isSubWorkerOfMe

```solidity
function isSubWorkerOfMe(address _worker) public view returns (bool)
```

Check if a worker is a sub address of the msg.sender

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _worker | address | worker address |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool true if _worker is a wub worker of msg.sender (master) |

### isSubWorkerOf

```solidity
function isSubWorkerOf(address _master, address _address) public view returns (bool)
```

Returns the master claimed by worker _worker

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _master | address | address |
| _address | address | address |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool true if _address is claimed by _master |

### isSubInMasterArray

```solidity
function isSubInMasterArray(address _worker, address _master) public view returns (bool)
```

Check if sub worker is in the MasterToSubsMap mapping of Master

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _worker | address | address |
| _master | address | address |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool true if _address is in the MasterToSubsMap mapping of _master |

### getMaster

```solidity
function getMaster(address _worker) public view returns (address)
```

Returns the master claimed by worker _worker

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _worker | address | address |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | address | address of worker's master address |

### PopFromSubsArray

```solidity
function PopFromSubsArray(address _master, address _worker) internal
```

Pops _worker from Master's MasterToSubsMap array

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _master | address | address |
| _worker | address | address |

### AreMasterSubLinked

```solidity
function AreMasterSubLinked(address _master, address _address) public view returns (bool)
```

Checks if a _master and _address and mapped in both ways (master & sub worker of)

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _master | address | address |
| _address | address | address |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool true if both addresses are mapped to each other |

### MasterClaimSub

```solidity
function MasterClaimSub(address _address) public
```

Add sub-worker addresses mapped to msg.sender

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _address | address | address |

### MasterClaimManySubs

```solidity
function MasterClaimManySubs(address[] _addresses) public
```

Add mutliple sub-worker addresses to be mapped to msg.sender

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _addresses | address[] | array of address |

### MasterRemoveSub

```solidity
function MasterRemoveSub(address _address) public
```

Remove sub-worker addresses mapped to msg.sender

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _address | address | address |

### MasterRemoveManySubs

```solidity
function MasterRemoveManySubs(address[] _addresses) public
```

Remove Multiple sub-worker addresses mapped to msg.sender

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _addresses | address[] | array of addresses |

### FetchHighestMaster

```solidity
function FetchHighestMaster(address _worker) public view returns (address)
```

Fetch the Highest Master on the graph starting from the _worker leaf

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _worker | address | address |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | address | The highest master of worker _worker, or _worker if no master found |

### TransferRepToMaster

```solidity
function TransferRepToMaster(address _worker) internal
```

Transfer Current Reputation (REP) of address _worker to its master

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _worker | address | address |

### TransferRewardsToMaster

```solidity
function TransferRewardsToMaster(address _worker) internal
```

Transfer Current Rewards of address _worker to its master

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _worker | address | address |

### ClaimMaster

```solidity
function ClaimMaster(address _master) public
```

Claim _master Address as master of msg.sender

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _master | address | address |

### RemoveMaster

```solidity
function RemoveMaster(address _master) public
```

Unclaim _master Address as master of msg.sender

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _master | address | address |

## IntVoteInterface

### onlyProposalOwner

```solidity
modifier onlyProposalOwner(bytes32 _proposalId)
```

### votable

```solidity
modifier votable(bytes32 _proposalId)
```

### NewProposal

```solidity
event NewProposal(bytes32 _proposalId, address _organization, uint256 _numOfChoices, address _proposer, bytes32 _paramsHash)
```

### ExecuteProposal

```solidity
event ExecuteProposal(bytes32 _proposalId, address _organization, uint256 _decision, uint256 _totalReputation)
```

### VoteProposal

```solidity
event VoteProposal(bytes32 _proposalId, address _organization, address _voter, uint256 _vote, uint256 _reputation)
```

### CancelProposal

```solidity
event CancelProposal(bytes32 _proposalId, address _organization)
```

### CancelVoting

```solidity
event CancelVoting(bytes32 _proposalId, address _organization, address _voter)
```

### propose

```solidity
function propose(uint256 _numOfChoices, bytes32 _proposalParameters, address _proposer, address _organization) external returns (bytes32)
```

_register a new proposal with the given parameters. Every proposal has a unique ID which is being
generated by calculating keccak256 of a incremented counter._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _numOfChoices | uint256 | number of voting choices |
| _proposalParameters | bytes32 | defines the parameters of the voting machine used for this proposal |
| _proposer | address | address |
| _organization | address | address - if this address is zero the msg.sender will be used as the organization address. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bytes32 | proposal's id. |

### vote

```solidity
function vote(bytes32 _proposalId, uint256 _vote, uint256 _rep, address _voter) external returns (bool)
```

### cancelVote

```solidity
function cancelVote(bytes32 _proposalId) external
```

### getNumberOfChoices

```solidity
function getNumberOfChoices(bytes32 _proposalId) external view returns (uint256)
```

### isVotable

```solidity
function isVotable(bytes32 _proposalId) external view returns (bool)
```

### voteStatus

```solidity
function voteStatus(bytes32 _proposalId, uint256 _choice) external view returns (uint256)
```

_voteStatus returns the reputation voted for a proposal for a specific voting choice._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _proposalId | bytes32 | the ID of the proposal |
| _choice | uint256 | the index in the |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | uint256 | voted reputation for the given choice |

### isAbstainAllow

```solidity
function isAbstainAllow() external pure returns (bool)
```

_isAbstainAllow returns if the voting machine allow abstain (0)_

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool true or false |

### getAllowedRangeOfChoices

```solidity
function getAllowedRangeOfChoices() external pure returns (uint256 min, uint256 max)
```

_getAllowedRangeOfChoices returns the allowed range of choices for a voting machine._

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| min | uint256 | - minimum number of choices
                max - maximum number of choices |
| max | uint256 |  |

## Wallet

### ReceiveEther

```solidity
event ReceiveEther(address _sender, uint256 _value)
```

### Pay

```solidity
event Pay(address _sender, uint256 _value)
```

### receive

```solidity
receive() external payable
```

### pay

```solidity
function pay(address payable _beneficiary) public
```

## Create2Deployer

### Deployed

```solidity
event Deployed(address addr, uint256 salt)
```

### deploy

```solidity
function deploy(bytes code, uint256 salt) public
```

## ConfigRegistry

### ConfigFiles

```solidity
mapping(bytes32 => string) ConfigFiles
```

### ConfigUpdated

```solidity
event ConfigUpdated(string account)
```

### constructor

```solidity
constructor() public
```

_Initializer. Can only be called once._

### add

```solidity
function add(string key, string value, bool overwrite) public returns (bool)
```

### addByHash

```solidity
function addByHash(bytes32 hash, string value, bool overwrite) public returns (bool)
```

### get

```solidity
function get(string key) public view returns (string)
```

### getHash

```solidity
function getHash(string key) public pure returns (bytes32)
```

## Parameters

### MAX_TOTAL_WORKERS

```solidity
uint256 MAX_TOTAL_WORKERS
```

### VOTE_QUORUM

```solidity
uint256 VOTE_QUORUM
```

### MAX_UPDATE_ITERATIONS

```solidity
uint256 MAX_UPDATE_ITERATIONS
```

### MAX_CONTRACT_STORED_BATCHES

```solidity
uint256 MAX_CONTRACT_STORED_BATCHES
```

### SPOT_DATA_BATCH_SIZE

```solidity
uint256 SPOT_DATA_BATCH_SIZE
```

### SPOT_MIN_STAKE

```solidity
uint256 SPOT_MIN_STAKE
```

### SPOT_MIN_CONSENSUS_WORKER_COUNT

```solidity
uint256 SPOT_MIN_CONSENSUS_WORKER_COUNT
```

### SPOT_MAX_CONSENSUS_WORKER_COUNT

```solidity
uint256 SPOT_MAX_CONSENSUS_WORKER_COUNT
```

### SPOT_COMMIT_ROUND_DURATION

```solidity
uint256 SPOT_COMMIT_ROUND_DURATION
```

### SPOT_REVEAL_ROUND_DURATION

```solidity
uint256 SPOT_REVEAL_ROUND_DURATION
```

### SPOT_MIN_REWARD_SpotData

```solidity
uint256 SPOT_MIN_REWARD_SpotData
```

### SPOT_MIN_REP_SpotData

```solidity
uint256 SPOT_MIN_REP_SpotData
```

### SPOT_MIN_REWARD_DataValidation

```solidity
uint256 SPOT_MIN_REWARD_DataValidation
```

### SPOT_MIN_REP_DataValidation

```solidity
uint256 SPOT_MIN_REP_DataValidation
```

### SPOT_INTER_ALLOCATION_DURATION

```solidity
uint256 SPOT_INTER_ALLOCATION_DURATION
```

### SPOT_TOGGLE_ENABLED

```solidity
bool SPOT_TOGGLE_ENABLED
```

### SPOT_TIMEFRAME_DURATION

```solidity
uint256 SPOT_TIMEFRAME_DURATION
```

### SPOT_GLOBAL_MAX_SPOT_PER_PERIOD

```solidity
uint256 SPOT_GLOBAL_MAX_SPOT_PER_PERIOD
```

### SPOT_MAX_SPOT_PER_USER_PER_PERIOD

```solidity
uint256 SPOT_MAX_SPOT_PER_USER_PER_PERIOD
```

### SPOT_NB_TIMEFRAMES

```solidity
uint256 SPOT_NB_TIMEFRAMES
```

### MAX_SUCCEEDING_NOVOTES

```solidity
uint256 MAX_SUCCEEDING_NOVOTES
```

### NOVOTE_REGISTRATION_WAIT_DURATION

```solidity
uint256 NOVOTE_REGISTRATION_WAIT_DURATION
```

### COMPLIANCE_DATA_BATCH_SIZE

```solidity
uint256 COMPLIANCE_DATA_BATCH_SIZE
```

### COMPLIANCE_MIN_CONSENSUS_WORKER_COUNT

```solidity
uint256 COMPLIANCE_MIN_CONSENSUS_WORKER_COUNT
```

### COMPLIANCE_MAX_CONSENSUS_WORKER_COUNT

```solidity
uint256 COMPLIANCE_MAX_CONSENSUS_WORKER_COUNT
```

### COMPLIANCE_MIN_STAKE

```solidity
uint256 COMPLIANCE_MIN_STAKE
```

### COMPLIANCE_COMMIT_ROUND_DURATION

```solidity
uint256 COMPLIANCE_COMMIT_ROUND_DURATION
```

### COMPLIANCE_REVEAL_ROUND_DURATION

```solidity
uint256 COMPLIANCE_REVEAL_ROUND_DURATION
```

### COMPLIANCE_MIN_REWARD_DataValidation

```solidity
uint256 COMPLIANCE_MIN_REWARD_DataValidation
```

### COMPLIANCE_MIN_REP_DataValidation

```solidity
uint256 COMPLIANCE_MIN_REP_DataValidation
```

### INDEXING_DATA_BATCH_SIZE

```solidity
uint256 INDEXING_DATA_BATCH_SIZE
```

### INDEXING_MIN_CONSENSUS_WORKER_COUNT

```solidity
uint256 INDEXING_MIN_CONSENSUS_WORKER_COUNT
```

### INDEXING_MAX_CONSENSUS_WORKER_COUNT

```solidity
uint256 INDEXING_MAX_CONSENSUS_WORKER_COUNT
```

### INDEXING_MIN_STAKE

```solidity
uint256 INDEXING_MIN_STAKE
```

### INDEXING_COMMIT_ROUND_DURATION

```solidity
uint256 INDEXING_COMMIT_ROUND_DURATION
```

### INDEXING_REVEAL_ROUND_DURATION

```solidity
uint256 INDEXING_REVEAL_ROUND_DURATION
```

### INDEXING_MIN_REWARD_DataValidation

```solidity
uint256 INDEXING_MIN_REWARD_DataValidation
```

### INDEXING_MIN_REP_DataValidation

```solidity
uint256 INDEXING_MIN_REP_DataValidation
```

### ARCHIVING_DATA_BATCH_SIZE

```solidity
uint256 ARCHIVING_DATA_BATCH_SIZE
```

### ARCHIVING_MIN_CONSENSUS_WORKER_COUNT

```solidity
uint256 ARCHIVING_MIN_CONSENSUS_WORKER_COUNT
```

### ARCHIVING_MAX_CONSENSUS_WORKER_COUNT

```solidity
uint256 ARCHIVING_MAX_CONSENSUS_WORKER_COUNT
```

### ARCHIVING_MIN_STAKE

```solidity
uint256 ARCHIVING_MIN_STAKE
```

### ARCHIVING_COMMIT_ROUND_DURATION

```solidity
uint256 ARCHIVING_COMMIT_ROUND_DURATION
```

### ARCHIVING_REVEAL_ROUND_DURATION

```solidity
uint256 ARCHIVING_REVEAL_ROUND_DURATION
```

### ARCHIVING_MIN_REWARD_DataValidation

```solidity
uint256 ARCHIVING_MIN_REWARD_DataValidation
```

### ARCHIVING_MIN_REP_DataValidation

```solidity
uint256 ARCHIVING_MIN_REP_DataValidation
```

### token

```solidity
address token
```

### StakeManager

```solidity
address StakeManager
```

### Reputation

```solidity
address Reputation
```

### RepManager

```solidity
address RepManager
```

### RewardManager

```solidity
address RewardManager
```

### AddressManager

```solidity
address AddressManager
```

### sFuel

```solidity
address sFuel
```

### SpottingSystem

```solidity
address SpottingSystem
```

### ComplianceSystem

```solidity
address ComplianceSystem
```

### IndexingSystem

```solidity
address IndexingSystem
```

### ArchivingSystem

```solidity
address ArchivingSystem
```

### destroyContract

```solidity
function destroyContract() public
```

### updateGeneralParameters

```solidity
function updateGeneralParameters(uint256 ParameterIndex, uint256 uintValue) public
```

### updateContractsAddresses

```solidity
function updateContractsAddresses(address StakeManager_, address RepManager_, address Reputation_, address RewardManager_, address AddressManager_, address SpottingSystem_, address ComplianceSystem_, address IndexingSystem_, address ArchivingSystem_, address sFuel_, address token_) public
```

### updateSpottingParameters

```solidity
function updateSpottingParameters(uint256 ParameterIndex, uint256 uintValue, bool boolValue) public
```

### updateComplianceParameters

```solidity
function updateComplianceParameters(uint256 ParameterIndex, uint256 uintValue) public
```

### updateIndexingParameters

```solidity
function updateIndexingParameters(uint256 ParameterIndex, uint256 uintValue) public
```

### updateArchivingParameters

```solidity
function updateArchivingParameters(uint256 ParameterIndex, uint256 uintValue) public
```

### getMaxTotalWorkers

```solidity
function getMaxTotalWorkers() public view returns (uint256)
```

### getVoteQuorum

```solidity
function getVoteQuorum() public view returns (uint256)
```

### get_MAX_UPDATE_ITERATIONS

```solidity
function get_MAX_UPDATE_ITERATIONS() public view returns (uint256)
```

### get_MAX_CONTRACT_STORED_BATCHES

```solidity
function get_MAX_CONTRACT_STORED_BATCHES() public view returns (uint256)
```

### getStakeManager

```solidity
function getStakeManager() public view returns (address)
```

### getRepManager

```solidity
function getRepManager() public view returns (address)
```

### getReputationSystem

```solidity
function getReputationSystem() public view returns (address)
```

### getAddressManager

```solidity
function getAddressManager() public view returns (address)
```

### getRewardManager

```solidity
function getRewardManager() public view returns (address)
```

### getSpottingSystem

```solidity
function getSpottingSystem() public view returns (address)
```

### getComplianceSystem

```solidity
function getComplianceSystem() public view returns (address)
```

### getIndexingSystem

```solidity
function getIndexingSystem() public view returns (address)
```

### getArchivingSystem

```solidity
function getArchivingSystem() public view returns (address)
```

### getsFuelSystem

```solidity
function getsFuelSystem() public view returns (address)
```

### getExordeToken

```solidity
function getExordeToken() public view returns (address)
```

### get_SPOT_DATA_BATCH_SIZE

```solidity
function get_SPOT_DATA_BATCH_SIZE() public view returns (uint256)
```

### get_SPOT_MIN_STAKE

```solidity
function get_SPOT_MIN_STAKE() public view returns (uint256)
```

### get_SPOT_MIN_CONSENSUS_WORKER_COUNT

```solidity
function get_SPOT_MIN_CONSENSUS_WORKER_COUNT() public view returns (uint256)
```

### get_SPOT_MAX_CONSENSUS_WORKER_COUNT

```solidity
function get_SPOT_MAX_CONSENSUS_WORKER_COUNT() public view returns (uint256)
```

### get_SPOT_COMMIT_ROUND_DURATION

```solidity
function get_SPOT_COMMIT_ROUND_DURATION() public view returns (uint256)
```

### get_SPOT_REVEAL_ROUND_DURATION

```solidity
function get_SPOT_REVEAL_ROUND_DURATION() public view returns (uint256)
```

### get_SPOT_MIN_REP_SpotData

```solidity
function get_SPOT_MIN_REP_SpotData() public view returns (uint256)
```

### get_SPOT_MIN_REWARD_SpotData

```solidity
function get_SPOT_MIN_REWARD_SpotData() public view returns (uint256)
```

### get_SPOT_MIN_REP_DataValidation

```solidity
function get_SPOT_MIN_REP_DataValidation() public view returns (uint256)
```

### get_SPOT_MIN_REWARD_DataValidation

```solidity
function get_SPOT_MIN_REWARD_DataValidation() public view returns (uint256)
```

### get_SPOT_INTER_ALLOCATION_DURATION

```solidity
function get_SPOT_INTER_ALLOCATION_DURATION() public view returns (uint256)
```

### get_SPOT_TOGGLE_ENABLED

```solidity
function get_SPOT_TOGGLE_ENABLED() public view returns (bool)
```

### get_SPOT_TIMEFRAME_DURATION

```solidity
function get_SPOT_TIMEFRAME_DURATION() public view returns (uint256)
```

### get_SPOT_GLOBAL_MAX_SPOT_PER_PERIOD

```solidity
function get_SPOT_GLOBAL_MAX_SPOT_PER_PERIOD() public view returns (uint256)
```

### get_SPOT_MAX_SPOT_PER_USER_PER_PERIOD

```solidity
function get_SPOT_MAX_SPOT_PER_USER_PER_PERIOD() public view returns (uint256)
```

### get_SPOT_NB_TIMEFRAMES

```solidity
function get_SPOT_NB_TIMEFRAMES() public view returns (uint256)
```

### get_MAX_SUCCEEDING_NOVOTES

```solidity
function get_MAX_SUCCEEDING_NOVOTES() public view returns (uint256)
```

### get_NOVOTE_REGISTRATION_WAIT_DURATION

```solidity
function get_NOVOTE_REGISTRATION_WAIT_DURATION() public view returns (uint256)
```

### get_COMPLIANCE_DATA_BATCH_SIZE

```solidity
function get_COMPLIANCE_DATA_BATCH_SIZE() public view returns (uint256)
```

### get_COMPLIANCE_MIN_STAKE

```solidity
function get_COMPLIANCE_MIN_STAKE() public view returns (uint256)
```

### get_COMPLIANCE_MIN_CONSENSUS_WORKER_COUNT

```solidity
function get_COMPLIANCE_MIN_CONSENSUS_WORKER_COUNT() public view returns (uint256)
```

### get_COMPLIANCE_MAX_CONSENSUS_WORKER_COUNT

```solidity
function get_COMPLIANCE_MAX_CONSENSUS_WORKER_COUNT() public view returns (uint256)
```

### get_COMPLIANCE_COMMIT_ROUND_DURATION

```solidity
function get_COMPLIANCE_COMMIT_ROUND_DURATION() public view returns (uint256)
```

### get_COMPLIANCE_REVEAL_ROUND_DURATION

```solidity
function get_COMPLIANCE_REVEAL_ROUND_DURATION() public view returns (uint256)
```

### get_COMPLIANCE_MIN_REWARD_DataValidation

```solidity
function get_COMPLIANCE_MIN_REWARD_DataValidation() public view returns (uint256)
```

### get_COMPLIANCE_MIN_REP_DataValidation

```solidity
function get_COMPLIANCE_MIN_REP_DataValidation() public view returns (uint256)
```

### get_INDEXING_DATA_BATCH_SIZE

```solidity
function get_INDEXING_DATA_BATCH_SIZE() public view returns (uint256)
```

### get_INDEXING_MIN_STAKE

```solidity
function get_INDEXING_MIN_STAKE() public view returns (uint256)
```

### get_INDEXING_MIN_CONSENSUS_WORKER_COUNT

```solidity
function get_INDEXING_MIN_CONSENSUS_WORKER_COUNT() public view returns (uint256)
```

### get_INDEXING_MAX_CONSENSUS_WORKER_COUNT

```solidity
function get_INDEXING_MAX_CONSENSUS_WORKER_COUNT() public view returns (uint256)
```

### get_INDEXING_COMMIT_ROUND_DURATION

```solidity
function get_INDEXING_COMMIT_ROUND_DURATION() public view returns (uint256)
```

### get_INDEXING_REVEAL_ROUND_DURATION

```solidity
function get_INDEXING_REVEAL_ROUND_DURATION() public view returns (uint256)
```

### get_INDEXING_MIN_REWARD_DataValidation

```solidity
function get_INDEXING_MIN_REWARD_DataValidation() public view returns (uint256)
```

### get_INDEXING_MIN_REP_DataValidation

```solidity
function get_INDEXING_MIN_REP_DataValidation() public view returns (uint256)
```

### get_ARCHIVING_DATA_BATCH_SIZE

```solidity
function get_ARCHIVING_DATA_BATCH_SIZE() public view returns (uint256)
```

### get_ARCHIVING_MIN_STAKE

```solidity
function get_ARCHIVING_MIN_STAKE() public view returns (uint256)
```

### get_ARCHIVING_MIN_CONSENSUS_WORKER_COUNT

```solidity
function get_ARCHIVING_MIN_CONSENSUS_WORKER_COUNT() public view returns (uint256)
```

### get_ARCHIVING_MAX_CONSENSUS_WORKER_COUNT

```solidity
function get_ARCHIVING_MAX_CONSENSUS_WORKER_COUNT() public view returns (uint256)
```

### get_ARCHIVING_COMMIT_ROUND_DURATION

```solidity
function get_ARCHIVING_COMMIT_ROUND_DURATION() public view returns (uint256)
```

### get_ARCHIVING_REVEAL_ROUND_DURATION

```solidity
function get_ARCHIVING_REVEAL_ROUND_DURATION() public view returns (uint256)
```

### get_ARCHIVING_MIN_REWARD_DataValidation

```solidity
function get_ARCHIVING_MIN_REWARD_DataValidation() public view returns (uint256)
```

### get_ARCHIVING_MIN_REP_DataValidation

```solidity
function get_ARCHIVING_MIN_REP_DataValidation() public view returns (uint256)
```

## IDataContract

### getTxCounter

```solidity
function getTxCounter() external view returns (uint256)
```

### getGlobalPeriodSpotCount

```solidity
function getGlobalPeriodSpotCount() external view returns (uint256)
```

### getLastBatchId

```solidity
function getLastBatchId() external view returns (uint256)
```

### getLastCheckedBatchId

```solidity
function getLastCheckedBatchId() external view returns (uint256)
```

### getLastAllocatedBatchId

```solidity
function getLastAllocatedBatchId() external view returns (uint256)
```

### getActiveWorkersCount

```solidity
function getActiveWorkersCount() external view returns (uint256)
```

### getAvailableWorkersCount

```solidity
function getAvailableWorkersCount() external view returns (uint256)
```

### getBusyWorkersCount

```solidity
function getBusyWorkersCount() external view returns (uint256)
```

## Statistics

### BaseTransactionCount

```solidity
uint256 BaseTransactionCount
```

### constructor

```solidity
constructor(uint256 BaseTransactionCount_) public
```

### MonitoredSystemMap

```solidity
mapping(address => bool) MonitoredSystemMap
```

### MonitoredSystemAddress

```solidity
address[] MonitoredSystemAddress
```

### MonitoredSystemAddressIndex

```solidity
mapping(address => uint256) MonitoredSystemAddressIndex
```

### Monitored

```solidity
event Monitored(address account, bool isWhitelisted)
```

### UnMonitored

```solidity
event UnMonitored(address account, bool isWhitelisted)
```

### isMonitoredAddress

```solidity
function isMonitoredAddress(address _address) public view returns (bool)
```

### addAddress

```solidity
function addAddress(address _address) public
```

### removeAddress

```solidity
function removeAddress(address _address) public
```

### TotalTxCount

```solidity
function TotalTxCount() public view returns (uint256)
```

### TotalActiveWorkerCount

```solidity
function TotalActiveWorkerCount() public view returns (uint256)
```

### TotalAvailableWorkerCount

```solidity
function TotalAvailableWorkerCount() public view returns (uint256)
```

### TotalBusyWorkerCount

```solidity
function TotalBusyWorkerCount() public view returns (uint256)
```

## IEtherbase

### receive

```solidity
receive() external payable
```

### retrieve

```solidity
function retrieve(address payable receiver) external
```

### partiallyRetrieve

```solidity
function partiallyRetrieve(address payable receiver, uint256 amount) external
```

## SFuelContracts

SFuel Whitelisting Contract
 TheGreatAxios
 Allows S-Fuel to be guideded to the proper entities
 Utilizes Etherbase Under the Hood for Native S-Fuel

### MIN_USER_BALANCE

```solidity
uint256 MIN_USER_BALANCE
```

### MIN_CONTRACT_BALANCE

```solidity
uint256 MIN_CONTRACT_BALANCE
```

### isPaused

```solidity
bool isPaused
```

### Whitelist

```solidity
mapping(address => bool) Whitelist
```

### EtherDeposit

```solidity
event EtherDeposit(address sender, uint256 value)
```

Events

### ContractFilled

```solidity
event ContractFilled(address caller, uint256 value)
```

### RetrievedSFuel

```solidity
event RetrievedSFuel(address reciever, address whitelistedContract, uint256 amount)
```

### ReturnedSFuel

```solidity
event ReturnedSFuel(address returner, address whitelistedContract, uint256 amount)
```

### constructor

```solidity
constructor() public
```

### addAddress

```solidity
function addAddress(address _address) public
```

### removeAddress

```solidity
function removeAddress(address _address) public
```

### isActive

```solidity
modifier isActive()
```

### retrieveSFuel

```solidity
function retrieveSFuel(address payable _retriever) external payable
```

Used by other contracts as a function to top up S-Fuel
 msg.sender must be whitelisted to complete, onlyWhitelisted requires [msg.sender] to be contract
 _retriever Address of User

### _getEtherbase

```solidity
function _getEtherbase() internal pure returns (contract IEtherbase)
```

Gets Etherbase Instance
 IEtherbase -> Instance to interact with

### getBalance

```solidity
function getBalance(address _address) public view returns (uint256)
```

Retrieves S-Fuel Balance
 _address ethereum address
 uint256 balance

### receive

```solidity
receive() external payable
```

### fallback

```solidity
fallback() external payable
```

Allows Depsoit of Ether

### fillContract

```solidity
function fillContract() external
```

Allows CONTRACT_MANAGER to fill contract up
 Must have ETHER_MANAGER_ROLE assigned on Etherbase

### TogglePause

```solidity
function TogglePause() external
```

Allows CONTRACT_MANAGER to Pause/Unpause Contract
 Must Have CONTRACT_MANAGER_ROLE

## OwnableUpgradeable

_Contract module which provides a basic access control mechanism, where
there is an account (an owner) that can be granted exclusive access to
specific functions.

By default, the owner account will be the one that deploys the contract. This
can later be changed with {transferOwnership}.

This module is used through inheritance. It will make available the modifier
`onlyOwner`, which can be applied to your functions to restrict their use to
the owner._

### _owner

```solidity
address _owner
```

### OwnershipTransferred

```solidity
event OwnershipTransferred(address previousOwner, address newOwner)
```

### __Ownable_init

```solidity
function __Ownable_init() internal
```

_Initializes the contract setting the deployer as the initial owner._

### __Ownable_init_unchained

```solidity
function __Ownable_init_unchained() internal
```

### onlyOwner

```solidity
modifier onlyOwner()
```

_Throws if called by any account other than the owner._

### owner

```solidity
function owner() public view virtual returns (address)
```

_Returns the address of the current owner._

### _checkOwner

```solidity
function _checkOwner() internal view virtual
```

_Throws if the sender is not the owner._

### renounceOwnership

```solidity
function renounceOwnership() public virtual
```

_Leaves the contract without owner. It will not be possible to call
`onlyOwner` functions anymore. Can only be called by the current owner.

NOTE: Renouncing ownership will leave the contract without an owner,
thereby removing any functionality that is only available to the owner._

### transferOwnership

```solidity
function transferOwnership(address newOwner) public virtual
```

_Transfers ownership of the contract to a new account (`newOwner`).
Can only be called by the current owner._

### _transferOwnership

```solidity
function _transferOwnership(address newOwner) internal virtual
```

_Transfers ownership of the contract to a new account (`newOwner`).
Internal function without access restriction._

### __gap

```solidity
uint256[49] __gap
```

_This empty reserved space is put in place to allow future versions to add new
variables without shifting down storage in the inheritance chain.
See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps_

## Initializable

_This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.

The initialization functions use a version number. Once a version number is used, it is consumed and cannot be
reused. This mechanism prevents re-execution of each "step" but allows the creation of new initialization steps in
case an upgrade adds a module that needs to be initialized.

For example:

[.hljs-theme-light.nopadding]
```
contract MyToken is ERC20Upgradeable {
    function initialize() initializer public {
        __ERC20_init("MyToken", "MTK");
    }
}
contract MyTokenV2 is MyToken, ERC20PermitUpgradeable {
    function initializeV2() reinitializer(2) public {
        __ERC20Permit_init("MyToken");
    }
}
```

TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.

CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.

[CAUTION]
====
Avoid leaving a contract uninitialized.

An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
contract, which may impact the proxy. To prevent the implementation contract from being used, you should invoke
the {_disableInitializers} function in the constructor to automatically lock it when it is deployed:

[.hljs-theme-light.nopadding]
```
/// @custom:oz-upgrades-unsafe-allow constructor
constructor() {
    _disableInitializers();
}
```
====_

### _initialized

```solidity
uint8 _initialized
```

_Indicates that the contract has been initialized._

### _initializing

```solidity
bool _initializing
```

_Indicates that the contract is in the process of being initialized._

### Initialized

```solidity
event Initialized(uint8 version)
```

_Triggered when the contract has been initialized or reinitialized._

### initializer

```solidity
modifier initializer()
```

_A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
`onlyInitializing` functions can be used to initialize parent contracts.

Similar to `reinitializer(1)`, except that functions marked with `initializer` can be nested in the context of a
constructor.

Emits an {Initialized} event._

### reinitializer

```solidity
modifier reinitializer(uint8 version)
```

_A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
used to initialize parent contracts.

A reinitializer may be used after the original initialization step. This is essential to configure modules that
are added through upgrades and that require initialization.

When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
cannot be nested. If one is invoked in the context of another, execution will revert.

Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
a contract, executing them in the right order is up to the developer or operator.

WARNING: setting the version to 255 will prevent any future reinitialization.

Emits an {Initialized} event._

### onlyInitializing

```solidity
modifier onlyInitializing()
```

_Modifier to protect an initialization function so that it can only be invoked by functions with the
{initializer} and {reinitializer} modifiers, directly or indirectly._

### _disableInitializers

```solidity
function _disableInitializers() internal virtual
```

_Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
to any version. It is recommended to use this to lock implementation contracts that are designed to be called
through proxies.

Emits an {Initialized} event the first time it is successfully executed._

### _getInitializedVersion

```solidity
function _getInitializedVersion() internal view returns (uint8)
```

_Internal function that returns the initialized version. Returns `_initialized`_

### _isInitializing

```solidity
function _isInitializing() internal view returns (bool)
```

_Internal function that returns the initialized version. Returns `_initializing`_

## AddressUpgradeable

_Collection of functions related to the address type_

### isContract

```solidity
function isContract(address account) internal view returns (bool)
```

_Returns true if `account` is a contract.

[IMPORTANT]
====
It is unsafe to assume that an address for which this function returns
false is an externally-owned account (EOA) and not a contract.

Among others, `isContract` will return false for the following
types of addresses:

 - an externally-owned account
 - a contract in construction
 - an address where a contract will be created
 - an address where a contract lived, but was destroyed
====

[IMPORTANT]
====
You shouldn't rely on `isContract` to protect against flash loan attacks!

Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
constructor.
====_

### sendValue

```solidity
function sendValue(address payable recipient, uint256 amount) internal
```

_Replacement for Solidity's `transfer`: sends `amount` wei to
`recipient`, forwarding all available gas and reverting on errors.

https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
of certain opcodes, possibly making contracts go over the 2300 gas limit
imposed by `transfer`, making them unable to receive funds via
`transfer`. {sendValue} removes this limitation.

https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].

IMPORTANT: because control is transferred to `recipient`, care must be
taken to not create reentrancy vulnerabilities. Consider using
{ReentrancyGuard} or the
https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern]._

### functionCall

```solidity
function functionCall(address target, bytes data) internal returns (bytes)
```

_Performs a Solidity function call using a low level `call`. A
plain `call` is an unsafe replacement for a function call: use this
function instead.

If `target` reverts with a revert reason, it is bubbled up by this
function (like regular Solidity function calls).

Returns the raw returned data. To convert to the expected return value,
use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].

Requirements:

- `target` must be a contract.
- calling `target` with `data` must not revert.

_Available since v3.1.__

### functionCall

```solidity
function functionCall(address target, bytes data, string errorMessage) internal returns (bytes)
```

_Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
`errorMessage` as a fallback revert reason when `target` reverts.

_Available since v3.1.__

### functionCallWithValue

```solidity
function functionCallWithValue(address target, bytes data, uint256 value) internal returns (bytes)
```

_Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
but also transferring `value` wei to `target`.

Requirements:

- the calling contract must have an ETH balance of at least `value`.
- the called Solidity function must be `payable`.

_Available since v3.1.__

### functionCallWithValue

```solidity
function functionCallWithValue(address target, bytes data, uint256 value, string errorMessage) internal returns (bytes)
```

_Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
with `errorMessage` as a fallback revert reason when `target` reverts.

_Available since v3.1.__

### functionStaticCall

```solidity
function functionStaticCall(address target, bytes data) internal view returns (bytes)
```

_Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
but performing a static call.

_Available since v3.3.__

### functionStaticCall

```solidity
function functionStaticCall(address target, bytes data, string errorMessage) internal view returns (bytes)
```

_Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
but performing a static call.

_Available since v3.3.__

### verifyCallResultFromTarget

```solidity
function verifyCallResultFromTarget(address target, bool success, bytes returndata, string errorMessage) internal view returns (bytes)
```

_Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.

_Available since v4.8.__

### verifyCallResult

```solidity
function verifyCallResult(bool success, bytes returndata, string errorMessage) internal pure returns (bytes)
```

_Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
revert reason or using the provided one.

_Available since v4.3.__

### _revert

```solidity
function _revert(bytes returndata, string errorMessage) private pure
```

## ContextUpgradeable

_Provides information about the current execution context, including the
sender of the transaction and its data. While these are generally available
via msg.sender and msg.data, they should not be accessed in such a direct
manner, since when dealing with meta-transactions the account sending and
paying for execution may not be the actual sender (as far as an application
is concerned).

This contract is only required for intermediate, library-like contracts._

### __Context_init

```solidity
function __Context_init() internal
```

### __Context_init_unchained

```solidity
function __Context_init_unchained() internal
```

### _msgSender

```solidity
function _msgSender() internal view virtual returns (address)
```

### _msgData

```solidity
function _msgData() internal view virtual returns (bytes)
```

### __gap

```solidity
uint256[50] __gap
```

_This empty reserved space is put in place to allow future versions to add new
variables without shifting down storage in the inheritance chain.
See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps_

## SafeMathUpgradeable

_Wrappers over Solidity's arithmetic operations.

NOTE: `SafeMath` is generally not needed starting with Solidity 0.8, since the compiler
now has built in overflow checking._

### tryAdd

```solidity
function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256)
```

_Returns the addition of two unsigned integers, with an overflow flag.

_Available since v3.4.__

### trySub

```solidity
function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256)
```

_Returns the subtraction of two unsigned integers, with an overflow flag.

_Available since v3.4.__

### tryMul

```solidity
function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256)
```

_Returns the multiplication of two unsigned integers, with an overflow flag.

_Available since v3.4.__

### tryDiv

```solidity
function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256)
```

_Returns the division of two unsigned integers, with a division by zero flag.

_Available since v3.4.__

### tryMod

```solidity
function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256)
```

_Returns the remainder of dividing two unsigned integers, with a division by zero flag.

_Available since v3.4.__

### add

```solidity
function add(uint256 a, uint256 b) internal pure returns (uint256)
```

_Returns the addition of two unsigned integers, reverting on
overflow.

Counterpart to Solidity's `+` operator.

Requirements:

- Addition cannot overflow._

### sub

```solidity
function sub(uint256 a, uint256 b) internal pure returns (uint256)
```

_Returns the subtraction of two unsigned integers, reverting on
overflow (when the result is negative).

Counterpart to Solidity's `-` operator.

Requirements:

- Subtraction cannot overflow._

### mul

```solidity
function mul(uint256 a, uint256 b) internal pure returns (uint256)
```

_Returns the multiplication of two unsigned integers, reverting on
overflow.

Counterpart to Solidity's `*` operator.

Requirements:

- Multiplication cannot overflow._

### div

```solidity
function div(uint256 a, uint256 b) internal pure returns (uint256)
```

_Returns the integer division of two unsigned integers, reverting on
division by zero. The result is rounded towards zero.

Counterpart to Solidity's `/` operator.

Requirements:

- The divisor cannot be zero._

### mod

```solidity
function mod(uint256 a, uint256 b) internal pure returns (uint256)
```

_Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
reverting when dividing by zero.

Counterpart to Solidity's `%` operator. This function uses a `revert`
opcode (which leaves remaining gas untouched) while Solidity uses an
invalid opcode to revert (consuming all remaining gas).

Requirements:

- The divisor cannot be zero._

### sub

```solidity
function sub(uint256 a, uint256 b, string errorMessage) internal pure returns (uint256)
```

_Returns the subtraction of two unsigned integers, reverting with custom message on
overflow (when the result is negative).

CAUTION: This function is deprecated because it requires allocating memory for the error
message unnecessarily. For custom revert reasons use {trySub}.

Counterpart to Solidity's `-` operator.

Requirements:

- Subtraction cannot overflow._

### div

```solidity
function div(uint256 a, uint256 b, string errorMessage) internal pure returns (uint256)
```

_Returns the integer division of two unsigned integers, reverting with custom message on
division by zero. The result is rounded towards zero.

Counterpart to Solidity's `/` operator. Note: this function uses a
`revert` opcode (which leaves remaining gas untouched) while Solidity
uses an invalid opcode to revert (consuming all remaining gas).

Requirements:

- The divisor cannot be zero._

### mod

```solidity
function mod(uint256 a, uint256 b, string errorMessage) internal pure returns (uint256)
```

_Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
reverting with custom message when dividing by zero.

CAUTION: This function is deprecated because it requires allocating memory for the error
message unnecessarily. For custom revert reasons use {tryMod}.

Counterpart to Solidity's `%` operator. This function uses a `revert`
opcode (which leaves remaining gas untouched) while Solidity uses an
invalid opcode to revert (consuming all remaining gas).

Requirements:

- The divisor cannot be zero._

## Ownable

_Contract module which provides a basic access control mechanism, where
there is an account (an owner) that can be granted exclusive access to
specific functions.

By default, the owner account will be the one that deploys the contract. This
can later be changed with {transferOwnership}.

This module is used through inheritance. It will make available the modifier
`onlyOwner`, which can be applied to your functions to restrict their use to
the owner._

### _owner

```solidity
address _owner
```

### OwnershipTransferred

```solidity
event OwnershipTransferred(address previousOwner, address newOwner)
```

### constructor

```solidity
constructor() internal
```

_Initializes the contract setting the deployer as the initial owner._

### onlyOwner

```solidity
modifier onlyOwner()
```

_Throws if called by any account other than the owner._

### owner

```solidity
function owner() public view virtual returns (address)
```

_Returns the address of the current owner._

### _checkOwner

```solidity
function _checkOwner() internal view virtual
```

_Throws if the sender is not the owner._

### renounceOwnership

```solidity
function renounceOwnership() public virtual
```

_Leaves the contract without owner. It will not be possible to call
`onlyOwner` functions anymore. Can only be called by the current owner.

NOTE: Renouncing ownership will leave the contract without an owner,
thereby removing any functionality that is only available to the owner._

### transferOwnership

```solidity
function transferOwnership(address newOwner) public virtual
```

_Transfers ownership of the contract to a new account (`newOwner`).
Can only be called by the current owner._

### _transferOwnership

```solidity
function _transferOwnership(address newOwner) internal virtual
```

_Transfers ownership of the contract to a new account (`newOwner`).
Internal function without access restriction._

## ERC20

_Implementation of the {IERC20} interface.

This implementation is agnostic to the way tokens are created. This means
that a supply mechanism has to be added in a derived contract using {_mint}.
For a generic mechanism see {ERC20PresetMinterPauser}.

TIP: For a detailed writeup see our guide
https://forum.openzeppelin.com/t/how-to-implement-erc20-supply-mechanisms/226[How
to implement supply mechanisms].

We have followed general OpenZeppelin Contracts guidelines: functions revert
instead returning `false` on failure. This behavior is nonetheless
conventional and does not conflict with the expectations of ERC20
applications.

Additionally, an {Approval} event is emitted on calls to {transferFrom}.
This allows applications to reconstruct the allowance for all accounts just
by listening to said events. Other implementations of the EIP may not emit
these events, as it isn't required by the specification.

Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
functions have been added to mitigate the well-known issues around setting
allowances. See {IERC20-approve}._

### _balances

```solidity
mapping(address => uint256) _balances
```

### _allowances

```solidity
mapping(address => mapping(address => uint256)) _allowances
```

### _totalSupply

```solidity
uint256 _totalSupply
```

### _name

```solidity
string _name
```

### _symbol

```solidity
string _symbol
```

### constructor

```solidity
constructor(string name_, string symbol_) public
```

_Sets the values for {name} and {symbol}.

The default value of {decimals} is 18. To select a different value for
{decimals} you should overload it.

All two of these values are immutable: they can only be set once during
construction._

### name

```solidity
function name() public view virtual returns (string)
```

_Returns the name of the token._

### symbol

```solidity
function symbol() public view virtual returns (string)
```

_Returns the symbol of the token, usually a shorter version of the
name._

### decimals

```solidity
function decimals() public view virtual returns (uint8)
```

_Returns the number of decimals used to get its user representation.
For example, if `decimals` equals `2`, a balance of `505` tokens should
be displayed to a user as `5.05` (`505 / 10 ** 2`).

Tokens usually opt for a value of 18, imitating the relationship between
Ether and Wei. This is the value {ERC20} uses, unless this function is
overridden;

NOTE: This information is only used for _display_ purposes: it in
no way affects any of the arithmetic of the contract, including
{IERC20-balanceOf} and {IERC20-transfer}._

### totalSupply

```solidity
function totalSupply() public view virtual returns (uint256)
```

_See {IERC20-totalSupply}._

### balanceOf

```solidity
function balanceOf(address account) public view virtual returns (uint256)
```

_See {IERC20-balanceOf}._

### transfer

```solidity
function transfer(address to, uint256 amount) public virtual returns (bool)
```

_See {IERC20-transfer}.

Requirements:

- `to` cannot be the zero address.
- the caller must have a balance of at least `amount`._

### allowance

```solidity
function allowance(address owner, address spender) public view virtual returns (uint256)
```

_See {IERC20-allowance}._

### approve

```solidity
function approve(address spender, uint256 amount) public virtual returns (bool)
```

_See {IERC20-approve}.

NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
`transferFrom`. This is semantically equivalent to an infinite approval.

Requirements:

- `spender` cannot be the zero address._

### transferFrom

```solidity
function transferFrom(address from, address to, uint256 amount) public virtual returns (bool)
```

_See {IERC20-transferFrom}.

Emits an {Approval} event indicating the updated allowance. This is not
required by the EIP. See the note at the beginning of {ERC20}.

NOTE: Does not update the allowance if the current allowance
is the maximum `uint256`.

Requirements:

- `from` and `to` cannot be the zero address.
- `from` must have a balance of at least `amount`.
- the caller must have allowance for ``from``'s tokens of at least
`amount`._

### increaseAllowance

```solidity
function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool)
```

_Atomically increases the allowance granted to `spender` by the caller.

This is an alternative to {approve} that can be used as a mitigation for
problems described in {IERC20-approve}.

Emits an {Approval} event indicating the updated allowance.

Requirements:

- `spender` cannot be the zero address._

### decreaseAllowance

```solidity
function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool)
```

_Atomically decreases the allowance granted to `spender` by the caller.

This is an alternative to {approve} that can be used as a mitigation for
problems described in {IERC20-approve}.

Emits an {Approval} event indicating the updated allowance.

Requirements:

- `spender` cannot be the zero address.
- `spender` must have allowance for the caller of at least
`subtractedValue`._

### _transfer

```solidity
function _transfer(address from, address to, uint256 amount) internal virtual
```

_Moves `amount` of tokens from `from` to `to`.

This internal function is equivalent to {transfer}, and can be used to
e.g. implement automatic token fees, slashing mechanisms, etc.

Emits a {Transfer} event.

Requirements:

- `from` cannot be the zero address.
- `to` cannot be the zero address.
- `from` must have a balance of at least `amount`._

### _mint

```solidity
function _mint(address account, uint256 amount) internal virtual
```

_Creates `amount` tokens and assigns them to `account`, increasing
the total supply.

Emits a {Transfer} event with `from` set to the zero address.

Requirements:

- `account` cannot be the zero address._

### _burn

```solidity
function _burn(address account, uint256 amount) internal virtual
```

_Destroys `amount` tokens from `account`, reducing the
total supply.

Emits a {Transfer} event with `to` set to the zero address.

Requirements:

- `account` cannot be the zero address.
- `account` must have at least `amount` tokens._

### _approve

```solidity
function _approve(address owner, address spender, uint256 amount) internal virtual
```

_Sets `amount` as the allowance of `spender` over the `owner` s tokens.

This internal function is equivalent to `approve`, and can be used to
e.g. set automatic allowances for certain subsystems, etc.

Emits an {Approval} event.

Requirements:

- `owner` cannot be the zero address.
- `spender` cannot be the zero address._

### _spendAllowance

```solidity
function _spendAllowance(address owner, address spender, uint256 amount) internal virtual
```

_Updates `owner` s allowance for `spender` based on spent `amount`.

Does not update the allowance amount in case of infinite allowance.
Revert if not enough allowance is available.

Might emit an {Approval} event._

### _beforeTokenTransfer

```solidity
function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual
```

_Hook that is called before any transfer of tokens. This includes
minting and burning.

Calling conditions:

- when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
will be transferred to `to`.
- when `from` is zero, `amount` tokens will be minted for `to`.
- when `to` is zero, `amount` of ``from``'s tokens will be burned.
- `from` and `to` are never both zero.

To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks]._

### _afterTokenTransfer

```solidity
function _afterTokenTransfer(address from, address to, uint256 amount) internal virtual
```

_Hook that is called after any transfer of tokens. This includes
minting and burning.

Calling conditions:

- when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
has been transferred to `to`.
- when `from` is zero, `amount` tokens have been minted for `to`.
- when `to` is zero, `amount` of ``from``'s tokens have been burned.
- `from` and `to` are never both zero.

To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks]._

## IERC20

_Interface of the ERC20 standard as defined in the EIP._

### Transfer

```solidity
event Transfer(address from, address to, uint256 value)
```

_Emitted when `value` tokens are moved from one account (`from`) to
another (`to`).

Note that `value` may be zero._

### Approval

```solidity
event Approval(address owner, address spender, uint256 value)
```

_Emitted when the allowance of a `spender` for an `owner` is set by
a call to {approve}. `value` is the new allowance._

### totalSupply

```solidity
function totalSupply() external view returns (uint256)
```

_Returns the amount of tokens in existence._

### balanceOf

```solidity
function balanceOf(address account) external view returns (uint256)
```

_Returns the amount of tokens owned by `account`._

### transfer

```solidity
function transfer(address to, uint256 amount) external returns (bool)
```

_Moves `amount` tokens from the caller's account to `to`.

Returns a boolean value indicating whether the operation succeeded.

Emits a {Transfer} event._

### allowance

```solidity
function allowance(address owner, address spender) external view returns (uint256)
```

_Returns the remaining number of tokens that `spender` will be
allowed to spend on behalf of `owner` through {transferFrom}. This is
zero by default.

This value changes when {approve} or {transferFrom} are called._

### approve

```solidity
function approve(address spender, uint256 amount) external returns (bool)
```

_Sets `amount` as the allowance of `spender` over the caller's tokens.

Returns a boolean value indicating whether the operation succeeded.

IMPORTANT: Beware that changing an allowance with this method brings the risk
that someone may use both the old and the new allowance by unfortunate
transaction ordering. One possible solution to mitigate this race
condition is to first reduce the spender's allowance to 0 and set the
desired value afterwards:
https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729

Emits an {Approval} event._

### transferFrom

```solidity
function transferFrom(address from, address to, uint256 amount) external returns (bool)
```

_Moves `amount` tokens from `from` to `to` using the
allowance mechanism. `amount` is then deducted from the caller's
allowance.

Returns a boolean value indicating whether the operation succeeded.

Emits a {Transfer} event._

## ERC20Capped

_Extension of {ERC20} that adds a cap to the supply of tokens._

### _cap

```solidity
uint256 _cap
```

### constructor

```solidity
constructor(uint256 cap_) internal
```

_Sets the value of the `cap`. This value is immutable, it can only be
set once during construction._

### cap

```solidity
function cap() public view virtual returns (uint256)
```

_Returns the cap on the token's total supply._

### _mint

```solidity
function _mint(address account, uint256 amount) internal virtual
```

_See {ERC20-_mint}._

## IERC20Metadata

_Interface for the optional metadata functions from the ERC20 standard.

_Available since v4.1.__

### name

```solidity
function name() external view returns (string)
```

_Returns the name of the token._

### symbol

```solidity
function symbol() external view returns (string)
```

_Returns the symbol of the token._

### decimals

```solidity
function decimals() external view returns (uint8)
```

_Returns the decimals places of the token._

## IERC20Permit

_Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].

Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
need to send a transaction, and thus is not required to hold Ether at all._

### permit

```solidity
function permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external
```

_Sets `value` as the allowance of `spender` over ``owner``'s tokens,
given ``owner``'s signed approval.

IMPORTANT: The same issues {IERC20-approve} has related to transaction
ordering also apply here.

Emits an {Approval} event.

Requirements:

- `spender` cannot be the zero address.
- `deadline` must be a timestamp in the future.
- `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
over the EIP712-formatted function arguments.
- the signature must use ``owner``'s current nonce (see {nonces}).

For more information on the signature format, see the
https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
section]._

### nonces

```solidity
function nonces(address owner) external view returns (uint256)
```

_Returns the current nonce for `owner`. This value must be
included whenever a signature is generated for {permit}.

Every successful call to {permit} increases ``owner``'s nonce by one. This
prevents a signature from being used multiple times._

### DOMAIN_SEPARATOR

```solidity
function DOMAIN_SEPARATOR() external view returns (bytes32)
```

_Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}._

## SafeERC20

_Wrappers around ERC20 operations that throw on failure (when the token
contract returns false). Tokens that return no value (and instead revert or
throw on failure) are also supported, non-reverting calls are assumed to be
successful.
To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
which allows you to call the safe operations as `token.safeTransfer(...)`, etc._

### safeTransfer

```solidity
function safeTransfer(contract IERC20 token, address to, uint256 value) internal
```

### safeTransferFrom

```solidity
function safeTransferFrom(contract IERC20 token, address from, address to, uint256 value) internal
```

### safeApprove

```solidity
function safeApprove(contract IERC20 token, address spender, uint256 value) internal
```

_Deprecated. This function has issues similar to the ones found in
{IERC20-approve}, and its usage is discouraged.

Whenever possible, use {safeIncreaseAllowance} and
{safeDecreaseAllowance} instead._

### safeIncreaseAllowance

```solidity
function safeIncreaseAllowance(contract IERC20 token, address spender, uint256 value) internal
```

### safeDecreaseAllowance

```solidity
function safeDecreaseAllowance(contract IERC20 token, address spender, uint256 value) internal
```

### safePermit

```solidity
function safePermit(contract IERC20Permit token, address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) internal
```

### _callOptionalReturn

```solidity
function _callOptionalReturn(contract IERC20 token, bytes data) private
```

_Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
on the return value: the return value is optional (but if data is returned, it must not be false)._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| token | contract IERC20 | The token targeted by the call. |
| data | bytes | The call data (encoded using abi.encode or one of its variants). |

## Address

_Collection of functions related to the address type_

### isContract

```solidity
function isContract(address account) internal view returns (bool)
```

_Returns true if `account` is a contract.

[IMPORTANT]
====
It is unsafe to assume that an address for which this function returns
false is an externally-owned account (EOA) and not a contract.

Among others, `isContract` will return false for the following
types of addresses:

 - an externally-owned account
 - a contract in construction
 - an address where a contract will be created
 - an address where a contract lived, but was destroyed
====

[IMPORTANT]
====
You shouldn't rely on `isContract` to protect against flash loan attacks!

Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
constructor.
====_

### sendValue

```solidity
function sendValue(address payable recipient, uint256 amount) internal
```

_Replacement for Solidity's `transfer`: sends `amount` wei to
`recipient`, forwarding all available gas and reverting on errors.

https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
of certain opcodes, possibly making contracts go over the 2300 gas limit
imposed by `transfer`, making them unable to receive funds via
`transfer`. {sendValue} removes this limitation.

https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].

IMPORTANT: because control is transferred to `recipient`, care must be
taken to not create reentrancy vulnerabilities. Consider using
{ReentrancyGuard} or the
https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern]._

### functionCall

```solidity
function functionCall(address target, bytes data) internal returns (bytes)
```

_Performs a Solidity function call using a low level `call`. A
plain `call` is an unsafe replacement for a function call: use this
function instead.

If `target` reverts with a revert reason, it is bubbled up by this
function (like regular Solidity function calls).

Returns the raw returned data. To convert to the expected return value,
use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].

Requirements:

- `target` must be a contract.
- calling `target` with `data` must not revert.

_Available since v3.1.__

### functionCall

```solidity
function functionCall(address target, bytes data, string errorMessage) internal returns (bytes)
```

_Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
`errorMessage` as a fallback revert reason when `target` reverts.

_Available since v3.1.__

### functionCallWithValue

```solidity
function functionCallWithValue(address target, bytes data, uint256 value) internal returns (bytes)
```

_Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
but also transferring `value` wei to `target`.

Requirements:

- the calling contract must have an ETH balance of at least `value`.
- the called Solidity function must be `payable`.

_Available since v3.1.__

### functionCallWithValue

```solidity
function functionCallWithValue(address target, bytes data, uint256 value, string errorMessage) internal returns (bytes)
```

_Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
with `errorMessage` as a fallback revert reason when `target` reverts.

_Available since v3.1.__

### functionStaticCall

```solidity
function functionStaticCall(address target, bytes data) internal view returns (bytes)
```

_Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
but performing a static call.

_Available since v3.3.__

### functionStaticCall

```solidity
function functionStaticCall(address target, bytes data, string errorMessage) internal view returns (bytes)
```

_Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
but performing a static call.

_Available since v3.3.__

### functionDelegateCall

```solidity
function functionDelegateCall(address target, bytes data) internal returns (bytes)
```

_Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
but performing a delegate call.

_Available since v3.4.__

### functionDelegateCall

```solidity
function functionDelegateCall(address target, bytes data, string errorMessage) internal returns (bytes)
```

_Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
but performing a delegate call.

_Available since v3.4.__

### verifyCallResultFromTarget

```solidity
function verifyCallResultFromTarget(address target, bool success, bytes returndata, string errorMessage) internal view returns (bytes)
```

_Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.

_Available since v4.8.__

### verifyCallResult

```solidity
function verifyCallResult(bool success, bytes returndata, string errorMessage) internal pure returns (bytes)
```

_Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
revert reason or using the provided one.

_Available since v4.3.__

### _revert

```solidity
function _revert(bytes returndata, string errorMessage) private pure
```

## Context

_Provides information about the current execution context, including the
sender of the transaction and its data. While these are generally available
via msg.sender and msg.data, they should not be accessed in such a direct
manner, since when dealing with meta-transactions the account sending and
paying for execution may not be the actual sender (as far as an application
is concerned).

This contract is only required for intermediate, library-like contracts._

### _msgSender

```solidity
function _msgSender() internal view virtual returns (address)
```

### _msgData

```solidity
function _msgData() internal view virtual returns (bytes)
```

## SafeMath

_Wrappers over Solidity's arithmetic operations.

NOTE: `SafeMath` is generally not needed starting with Solidity 0.8, since the compiler
now has built in overflow checking._

### tryAdd

```solidity
function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256)
```

_Returns the addition of two unsigned integers, with an overflow flag.

_Available since v3.4.__

### trySub

```solidity
function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256)
```

_Returns the subtraction of two unsigned integers, with an overflow flag.

_Available since v3.4.__

### tryMul

```solidity
function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256)
```

_Returns the multiplication of two unsigned integers, with an overflow flag.

_Available since v3.4.__

### tryDiv

```solidity
function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256)
```

_Returns the division of two unsigned integers, with a division by zero flag.

_Available since v3.4.__

### tryMod

```solidity
function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256)
```

_Returns the remainder of dividing two unsigned integers, with a division by zero flag.

_Available since v3.4.__

### add

```solidity
function add(uint256 a, uint256 b) internal pure returns (uint256)
```

_Returns the addition of two unsigned integers, reverting on
overflow.

Counterpart to Solidity's `+` operator.

Requirements:

- Addition cannot overflow._

### sub

```solidity
function sub(uint256 a, uint256 b) internal pure returns (uint256)
```

_Returns the subtraction of two unsigned integers, reverting on
overflow (when the result is negative).

Counterpart to Solidity's `-` operator.

Requirements:

- Subtraction cannot overflow._

### mul

```solidity
function mul(uint256 a, uint256 b) internal pure returns (uint256)
```

_Returns the multiplication of two unsigned integers, reverting on
overflow.

Counterpart to Solidity's `*` operator.

Requirements:

- Multiplication cannot overflow._

### div

```solidity
function div(uint256 a, uint256 b) internal pure returns (uint256)
```

_Returns the integer division of two unsigned integers, reverting on
division by zero. The result is rounded towards zero.

Counterpart to Solidity's `/` operator.

Requirements:

- The divisor cannot be zero._

### mod

```solidity
function mod(uint256 a, uint256 b) internal pure returns (uint256)
```

_Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
reverting when dividing by zero.

Counterpart to Solidity's `%` operator. This function uses a `revert`
opcode (which leaves remaining gas untouched) while Solidity uses an
invalid opcode to revert (consuming all remaining gas).

Requirements:

- The divisor cannot be zero._

### sub

```solidity
function sub(uint256 a, uint256 b, string errorMessage) internal pure returns (uint256)
```

_Returns the subtraction of two unsigned integers, reverting with custom message on
overflow (when the result is negative).

CAUTION: This function is deprecated because it requires allocating memory for the error
message unnecessarily. For custom revert reasons use {trySub}.

Counterpart to Solidity's `-` operator.

Requirements:

- Subtraction cannot overflow._

### div

```solidity
function div(uint256 a, uint256 b, string errorMessage) internal pure returns (uint256)
```

_Returns the integer division of two unsigned integers, reverting with custom message on
division by zero. The result is rounded towards zero.

Counterpart to Solidity's `/` operator. Note: this function uses a
`revert` opcode (which leaves remaining gas untouched) while Solidity
uses an invalid opcode to revert (consuming all remaining gas).

Requirements:

- The divisor cannot be zero._

### mod

```solidity
function mod(uint256 a, uint256 b, string errorMessage) internal pure returns (uint256)
```

_Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
reverting with custom message when dividing by zero.

CAUTION: This function is deprecated because it requires allocating memory for the error
message unnecessarily. For custom revert reasons use {tryMod}.

Counterpart to Solidity's `%` operator. This function uses a `revert`
opcode (which leaves remaining gas untouched) while Solidity uses an
invalid opcode to revert (consuming all remaining gas).

Requirements:

- The divisor cannot be zero._

## WalletScheme

_A scheme for proposing and executing calls to any contract except itself
It has a value call controller address, in case of the controller address ot be set the scheme will be doing
generic calls to the dao controller. If the controller address is not set it will e executing raw calls form the
scheme itself.
The scheme can only execute calls allowed to in the permission registry, if the controller address is set
the permissions will be checked using the avatar address as sender, if not the scheme address will be used as
sender.
The permissions for [asset][SCHEME_ADDRESS][ANY_SIGNATURE] are used for global transfer limit, if it is set,
it wont allowed a higher total value transferred in the proposal higher to the one set there._

### SCHEME_TYPE

```solidity
string SCHEME_TYPE
```

### ERC20_TRANSFER_SIGNATURE

```solidity
bytes4 ERC20_TRANSFER_SIGNATURE
```

### ERC20_APPROVE_SIGNATURE

```solidity
bytes4 ERC20_APPROVE_SIGNATURE
```

### SET_MAX_SECONDS_FOR_EXECUTION_SIGNATURE

```solidity
bytes4 SET_MAX_SECONDS_FOR_EXECUTION_SIGNATURE
```

### ANY_SIGNATURE

```solidity
bytes4 ANY_SIGNATURE
```

### ANY_ADDRESS

```solidity
address ANY_ADDRESS
```

### ProposalState

```solidity
enum ProposalState {
  None,
  Submitted,
  Rejected,
  ExecutionSucceeded,
  ExecutionTimeout
}
```

### Proposal

```solidity
struct Proposal {
  address[] to;
  bytes[] callData;
  uint256[] value;
  enum WalletScheme.ProposalState state;
  string title;
  string descriptionHash;
  uint256 submittedTime;
}
```

### proposals

```solidity
mapping(bytes32 => struct WalletScheme.Proposal) proposals
```

### proposalsList

```solidity
bytes32[] proposalsList
```

### doAvatarGenericCalls

```solidity
bool doAvatarGenericCalls
```

### controller

```solidity
address controller
```

### permissionRegistry

```solidity
contract PermissionRegistry permissionRegistry
```

### registeredWorksystem

```solidity
mapping(address => bool) registeredWorksystem
```

### schemeName

```solidity
string schemeName
```

### maxSecondsForExecution

```solidity
uint256 maxSecondsForExecution
```

### maxRepPercentageChange

```solidity
uint256 maxRepPercentageChange
```

### votingMachine

```solidity
address votingMachine
```

### avatar

```solidity
address avatar
```

### executingProposal

```solidity
bool executingProposal
```

### ProposalStateChange

```solidity
event ProposalStateChange(bytes32 _proposalId, uint256 _state)
```

### ExecutionResults

```solidity
event ExecutionResults(bytes32 _proposalId, bool[] _callsSucessResult, bytes[] _callsDataResult)
```

### initialize

```solidity
function initialize(address _avatar, address _votingMachine, bool _doAvatarGenericCalls, address _controller, address _permissionRegistry, string _schemeName, uint256 _maxSecondsForExecution, uint256 _maxRepPercentageChange) external
```

_initialize_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _avatar | address | the avatar address |
| _votingMachine | address | the voting machine address |
| _doAvatarGenericCalls | bool | will the scheme do generic calls from the avatar |
| _controller | address | The controller address |
| _permissionRegistry | address | The address of the permission registry contract |
| _schemeName | string |  |
| _maxSecondsForExecution | uint256 | The maximum amount of time in seconds for a proposal without executed since
 submitted time |
| _maxRepPercentageChange | uint256 | The maximum percentage allowed to be changed in REP total supply after proposal
 execution |

### receive

```solidity
receive() external payable
```

_Fallback function that allows the wallet to receive ETH when the controller address is not set_

### setMaxSecondsForExecution

```solidity
function setMaxSecondsForExecution(uint256 _maxSecondsForExecution) external
```

_Set the max amount of seconds that a proposal has to be executed, only callable from the avatar address_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _maxSecondsForExecution | uint256 | New max proposal time in seconds to be used |

### executeProposal

```solidity
function executeProposal(bytes32 _proposalId, int256 _decision) external returns (bool)
```

_execution of proposals, can only be called by the voting machine in which the vote is held.
        REQUIRE FROM "../daostack/votingMachines/ProposalExecuteInterface.sol" DONT REMOVE_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _proposalId | bytes32 | the ID of the voting in the voting machine |
| _decision | int256 | a parameter of the voting result, 1 yes and 2 is no. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool success |

### proposeCalls

```solidity
function proposeCalls(address[] _to, bytes[] _callData, uint256[] _value, string _title, string _descriptionHash) external returns (bytes32)
```

_Propose calls to be executed, the calls have to be allowed by the permission registry_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _to | address[] | - The addresses to call |
| _callData | bytes[] | - The abi encode data for the calls |
| _value | uint256[] | value(ETH) to transfer with the calls |
| _title | string | title of proposal |
| _descriptionHash | string | proposal description hash |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bytes32 | an id which represents the proposal |

### getOrganizationProposal

```solidity
function getOrganizationProposal(bytes32 proposalId) public view returns (address[] to, bytes[] callData, uint256[] value, enum WalletScheme.ProposalState state, string title, string descriptionHash, uint256 submittedTime)
```

_Get the information of a proposal by id_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| proposalId | bytes32 | the ID of the proposal |

### getOrganizationProposalByIndex

```solidity
function getOrganizationProposalByIndex(uint256 proposalIndex) external view returns (address[] to, bytes[] callData, uint256[] value, enum WalletScheme.ProposalState state, string title, string descriptionHash, uint256 submittedTime)
```

_Get the information of a proposal by index_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| proposalIndex | uint256 | the index of the proposal in the proposals list |

### erc20TransferOrApproveDecode

```solidity
function erc20TransferOrApproveDecode(bytes _data) public pure returns (address to, uint256 value)
```

_Decodes abi encoded data with selector for "transfer(address,uint256)"._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _data | bytes | ERC20 address and value encoded data. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| to | address | The account to receive the tokens |
| value | uint256 | The value of tokens to be transferred/approved |

### getFuncSignature

```solidity
function getFuncSignature(bytes data) public pure returns (bytes4)
```

_Get call data signature_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| data | bytes | The bytes data of the data to get the signature |

### getOrganizationProposalsLength

```solidity
function getOrganizationProposalsLength() external view returns (uint256)
```

_Get the proposals length_

### getOrganizationProposals

```solidity
function getOrganizationProposals() external view returns (bytes32[])
```

_Get the proposals ids_

### onlyVotingMachine

```solidity
modifier onlyVotingMachine()
```

_EXDVotingMachineCallbacks DONT REMOVE_

### ReputationModify_Whitelisted

```solidity
event ReputationModify_Whitelisted(address account, bool isWhitelisted)
```

### ReputationModify_UnWhitelisted

```solidity
event ReputationModify_UnWhitelisted(address account, bool isWhitelisted)
```

### addWorksystemAddress

```solidity
function addWorksystemAddress(address _address) external
```

### removeWorksystemAddress

```solidity
function removeWorksystemAddress(address _address) external
```

### isRegisteredWorksystem

```solidity
function isRegisteredWorksystem(address _address) public view returns (bool)
```

### onlyWorkSystem

```solidity
modifier onlyWorkSystem()
```

### mintReputationForWork

```solidity
function mintReputationForWork(uint256 _amount, address _beneficiary, bytes32) external returns (bool)
```

### burnReputationForWork

```solidity
function burnReputationForWork(uint256 _amount, address _beneficiary, bytes32) external returns (bool)
```

### proposalsBlockNumber

```solidity
mapping(bytes32 => uint256) proposalsBlockNumber
```

### mintReputation

```solidity
function mintReputation(uint256 _amount, address _beneficiary, bytes32) external returns (bool)
```

### burnReputation

```solidity
function burnReputation(uint256 _amount, address _beneficiary, bytes32) external returns (bool)
```

### stakingTokenTransfer

```solidity
function stakingTokenTransfer(contract IERC20 _stakingToken, address _beneficiary, uint256 _amount, bytes32) external returns (bool)
```

### getNativeReputation

```solidity
function getNativeReputation() public view returns (address)
```

### getNativeReputationTotalSupply

```solidity
function getNativeReputationTotalSupply() public view returns (uint256)
```

### balanceOfStakingToken

```solidity
function balanceOfStakingToken(contract IERC20 _stakingToken, bytes32) external view returns (uint256)
```

### getTotalReputationSupply

```solidity
function getTotalReputationSupply(bytes32 _proposalId) external view returns (uint256)
```

### reputationOf

```solidity
function reputationOf(address _owner, bytes32 _proposalId) external view returns (uint256)
```

## Avatar

### orgName

```solidity
string orgName
```

### nativeToken

```solidity
contract DAOToken nativeToken
```

### nativeReputation

```solidity
contract Reputation nativeReputation
```

### GenericCall

```solidity
event GenericCall(address _contract, bytes _data, uint256 _value, bool _success)
```

### SendEther

```solidity
event SendEther(uint256 _amountInWei, address _to)
```

### ExternalTokenTransfer

```solidity
event ExternalTokenTransfer(address _externalToken, address _to, uint256 _value)
```

### ExternalTokenTransferFrom

```solidity
event ExternalTokenTransferFrom(address _externalToken, address _from, address _to, uint256 _value)
```

### ExternalTokenApproval

```solidity
event ExternalTokenApproval(address _externalToken, address _spender, uint256 _value)
```

### ReceiveEther

```solidity
event ReceiveEther(address _sender, uint256 _value)
```

### MetaData

```solidity
event MetaData(string _metaData)
```

### constructor

```solidity
constructor(string _orgName, contract DAOToken _nativeToken, contract Reputation _nativeReputation) public
```

_the constructor takes organization name, native token and reputation system
    and creates an avatar for a controller_

### receive

```solidity
receive() external payable
```

_enables an avatar to receive ethers_

### genericCall

```solidity
function genericCall(address _contract, bytes _data, uint256 _value) public returns (bool success, bytes returnValue)
```

_perform a generic call to an arbitrary contract_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _contract | address | the contract's address to call |
| _data | bytes | ABI-encoded contract call to call `_contract` address. |
| _value | uint256 | value (ETH) to transfer with the transaction |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| success | bool | success or fail |
| returnValue | bytes | - the return bytes of the called contract's function. |

### sendEther

```solidity
function sendEther(uint256 _amountInWei, address payable _to) public returns (bool)
```

_send ethers from the avatar's wallet_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _amountInWei | uint256 | amount to send in Wei units |
| _to | address payable | send the ethers to this address |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents success |

### externalTokenTransfer

```solidity
function externalTokenTransfer(contract IERC20 _externalToken, address _to, uint256 _value) public returns (bool)
```

_external token transfer_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _externalToken | contract IERC20 | the token contract |
| _to | address | the destination address |
| _value | uint256 | the amount of tokens to transfer |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents success |

### externalTokenTransferFrom

```solidity
function externalTokenTransferFrom(contract IERC20 _externalToken, address _from, address _to, uint256 _value) public returns (bool)
```

_external token transfer from a specific account_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _externalToken | contract IERC20 | the token contract |
| _from | address | the account to spend token from |
| _to | address | the destination address |
| _value | uint256 | the amount of tokens to transfer |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents success |

### externalTokenApproval

```solidity
function externalTokenApproval(contract IERC20 _externalToken, address _spender, uint256 _value) public returns (bool)
```

_externalTokenApproval approve the spender address to spend a specified amount of tokens
     on behalf of msg.sender._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _externalToken | contract IERC20 | the address of the Token Contract |
| _spender | address | address |
| _value | uint256 | the amount of ether (in Wei) which the approval is referring to. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### metaData

```solidity
function metaData(string _metaData) public returns (bool)
```

_metaData emits an event with a string, should contain the hash of some meta data._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _metaData | string | a string representing a hash of the meta data |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

## Controller

_A controller controls the organizations tokens, reputation and avatar.
It is subject to a set of schemes and constraints that determine its behavior.
Each scheme has it own parameters and operation permissions._

### Scheme

```solidity
struct Scheme {
  bytes32 paramsHash;
  bytes4 permissions;
}
```

### GlobalConstraint

```solidity
struct GlobalConstraint {
  address gcAddress;
  bytes32 params;
}
```

### GlobalConstraintRegister

```solidity
struct GlobalConstraintRegister {
  bool isRegistered;
  uint256 index;
}
```

### schemes

```solidity
mapping(address => struct Controller.Scheme) schemes
```

### avatar

```solidity
contract Avatar avatar
```

### nativeToken

```solidity
contract DAOToken nativeToken
```

### nativeReputation

```solidity
contract Reputation nativeReputation
```

### stakingManagerAddress

```solidity
address stakingManagerAddress
```

### newController

```solidity
address newController
```

### globalConstraintsPre

```solidity
struct Controller.GlobalConstraint[] globalConstraintsPre
```

### globalConstraintsPost

```solidity
struct Controller.GlobalConstraint[] globalConstraintsPost
```

### globalConstraintsRegisterPre

```solidity
mapping(address => struct Controller.GlobalConstraintRegister) globalConstraintsRegisterPre
```

### globalConstraintsRegisterPost

```solidity
mapping(address => struct Controller.GlobalConstraintRegister) globalConstraintsRegisterPost
```

### MintReputation

```solidity
event MintReputation(address _sender, address _to, uint256 _amount)
```

### BurnReputation

```solidity
event BurnReputation(address _sender, address _from, uint256 _amount)
```

### RegisterScheme

```solidity
event RegisterScheme(address _sender, address _scheme)
```

### UnregisterScheme

```solidity
event UnregisterScheme(address _sender, address _scheme)
```

### UpgradeController

```solidity
event UpgradeController(address _oldController, address _newController)
```

### AddGlobalConstraint

```solidity
event AddGlobalConstraint(address _globalConstraint, bytes32 _params, enum GlobalConstraintInterface.CallPhase _when)
```

### RemoveGlobalConstraint

```solidity
event RemoveGlobalConstraint(address _globalConstraint, uint256 _index, bool _isPre)
```

### constructor

```solidity
constructor(contract Avatar _avatar) public
```

### receive

```solidity
receive() external payable
```

### onlyRegisteredScheme

```solidity
modifier onlyRegisteredScheme()
```

### onlyRegisteringSchemes

```solidity
modifier onlyRegisteringSchemes()
```

### onlyGlobalConstraintsScheme

```solidity
modifier onlyGlobalConstraintsScheme()
```

### onlyUpgradingScheme

```solidity
modifier onlyUpgradingScheme()
```

### onlyGenericCallScheme

```solidity
modifier onlyGenericCallScheme()
```

### onlyMetaDataScheme

```solidity
modifier onlyMetaDataScheme()
```

### onlyStakingScheme

```solidity
modifier onlyStakingScheme()
```

### onlySubjectToConstraint

```solidity
modifier onlySubjectToConstraint(bytes32 func)
```

### isAvatarValid

```solidity
modifier isAvatarValid(address _avatar)
```

### mintReputation

```solidity
function mintReputation(uint256 _amount, address _to, address _avatar) external returns (bool)
```

_Mint `_amount` of reputation that are assigned to `_to` ._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _amount | uint256 | amount of reputation to mint |
| _to | address | beneficiary address |
| _avatar | address |  |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### burnReputation

```solidity
function burnReputation(uint256 _amount, address _from, address _avatar) external returns (bool)
```

_Burns `_amount` of reputation from `_from`_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _amount | uint256 | amount of reputation to burn |
| _from | address | The address that will lose the reputation |
| _avatar | address |  |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### registerScheme

```solidity
function registerScheme(address _scheme, bytes32 _paramsHash, bytes4 _permissions, address _avatar) external returns (bool)
```

_register a scheme_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _scheme | address | the address of the scheme |
| _paramsHash | bytes32 | a hashed configuration of the usage of the scheme |
| _permissions | bytes4 | the permissions the new scheme will have |
| _avatar | address |  |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### unregisterScheme

```solidity
function unregisterScheme(address _scheme, address _avatar) external returns (bool)
```

_unregister a scheme_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _scheme | address | the address of the scheme |
| _avatar | address |  |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### unregisterSelf

```solidity
function unregisterSelf(address _avatar) external returns (bool)
```

_unregister the caller's scheme_

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### addGlobalConstraint

```solidity
function addGlobalConstraint(address _globalConstraint, bytes32 _params, address _avatar) external returns (bool success)
```

_add or update Global Constraint_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _globalConstraint | address | the address of the global constraint to be added. |
| _params | bytes32 | the constraint parameters hash. |
| _avatar | address |  |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| success | bool | which represents a success |

### removeGlobalConstraint

```solidity
function removeGlobalConstraint(address _globalConstraint, address _avatar) external returns (bool success)
```

_remove Global Constraint_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _globalConstraint | address | the address of the global constraint to be remove. |
| _avatar | address |  |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| success | bool | which represents a success |

### upgradeController

```solidity
function upgradeController(address _newController, contract Avatar _avatar) external returns (bool success)
```

_upgrade the Controller
     The function will trigger an event 'UpgradeController'._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _newController | address | the address of the new controller. |
| _avatar | contract Avatar |  |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| success | bool | which represents a success |

### upgradeStakingManager

```solidity
function upgradeStakingManager(address _stakingManager) external returns (bool)
```

_upgrade the Controller
     The function will trigger an event '_stakingManager'._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _stakingManager | address | the address of the new controller. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### upgradeRewardsManager

```solidity
function upgradeRewardsManager(address _newController, contract Avatar _avatar) external returns (bool success)
```

_upgrade the Controller
     The function will trigger an event 'UpgradeController'._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _newController | address | the address of the new controller. |
| _avatar | contract Avatar |  |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| success | bool | which represents a success |

### genericCall

```solidity
function genericCall(address _contract, bytes _data, contract Avatar _avatar, uint256 _value) external returns (bool success, bytes data)
```

_perform a generic call to an arbitrary contract_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _contract | address | the contract's address to call |
| _data | bytes | ABI-encoded contract call to call `_contract` address. |
| _avatar | contract Avatar | the controller's avatar address |
| _value | uint256 | value (ETH) to transfer with the transaction |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| success | bool | -boolean
         data bytes  - the return value of the called _contract's function. |
| data | bytes |  |

### sendEther

```solidity
function sendEther(uint256 _amountInWei, address payable _to, contract Avatar _avatar) external returns (bool)
```

_send some ether_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _amountInWei | uint256 | the amount of ether (in Wei) to send |
| _to | address payable | address of the beneficiary |
| _avatar | contract Avatar |  |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### externalTokenTransfer

```solidity
function externalTokenTransfer(contract IERC20 _externalToken, address _to, uint256 _value, contract Avatar _avatar) external returns (bool)
```

_send some amount of arbitrary ERC20 Tokens_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _externalToken | contract IERC20 | the address of the Token Contract |
| _to | address | address of the beneficiary |
| _value | uint256 | the amount of ether (in Wei) to send |
| _avatar | contract Avatar |  |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### externalTokenTransferFrom

```solidity
function externalTokenTransferFrom(contract IERC20 _externalToken, address _from, address _to, uint256 _value, contract Avatar _avatar) external returns (bool success)
```

_transfer token "from" address "to" address
     One must to approve the amount of tokens which can be spend from the
     "from" account.This can be done using externalTokenApprove._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _externalToken | contract IERC20 | the address of the Token Contract |
| _from | address | address of the account to send from |
| _to | address | address of the beneficiary |
| _value | uint256 | the amount of ether (in Wei) to send |
| _avatar | contract Avatar |  |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| success | bool | boolean which represents a success |

### externalTokenApproval

```solidity
function externalTokenApproval(contract IERC20 _externalToken, address _spender, uint256 _value, contract Avatar _avatar) external returns (bool success)
```

_externalTokenApproval approve the spender address to spend a specified amount of tokens
     on behalf of msg.sender._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _externalToken | contract IERC20 | the address of the Token Contract |
| _spender | address | address |
| _value | uint256 | the amount of ether (in Wei) which the approval is referring to. |
| _avatar | contract Avatar |  |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| success | bool | which represents a success |

### metaData

```solidity
function metaData(string _metaData, contract Avatar _avatar) external returns (bool success)
```

_metaData emits an event with a string, should contain the hash of some meta data._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _metaData | string | a string representing a hash of the meta data |
| _avatar | contract Avatar | Avatar |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| success | bool | which represents a success |

### getNativeReputation

```solidity
function getNativeReputation(address _avatar) external view returns (address)
```

_getNativeReputation_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _avatar | address | the organization avatar. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | address | organization native reputation |

### isSchemeRegistered

```solidity
function isSchemeRegistered(address _scheme, address _avatar) external view returns (bool)
```

### isStakingManagerRegistered

```solidity
function isStakingManagerRegistered(address _stakingManagerAddress, address _avatar) external view returns (bool success)
```

### getSchemeParameters

```solidity
function getSchemeParameters(address _scheme, address _avatar) external view returns (bytes32)
```

### getSchemePermissions

```solidity
function getSchemePermissions(address _scheme, address _avatar) external view returns (bytes4)
```

### getGlobalConstraintParameters

```solidity
function getGlobalConstraintParameters(address _globalConstraint, address) external view returns (bytes32 param)
```

### globalConstraintsCount

```solidity
function globalConstraintsCount(address _avatar) external view returns (uint256, uint256)
```

_globalConstraintsCount return the global constraint pre and post count_

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | uint256 | uint256 globalConstraintsPre count. |
| [1] | uint256 | uint256 globalConstraintsPost count. |

### isGlobalConstraintRegistered

```solidity
function isGlobalConstraintRegistered(address _globalConstraint, address _avatar) external view returns (bool success)
```

### _isSchemeRegistered

```solidity
function _isSchemeRegistered(address _scheme) private view returns (bool success)
```

### _isStakingManager

```solidity
function _isStakingManager(address _stakingManager) private view returns (bool success)
```

## ControllerInterface

_A controller controls the organizations tokens ,reputation and avatar.
It is subject to a set of schemes and constraints that determine its behavior.
Each scheme has it own parameters and operation permissions._

### mintReputation

```solidity
function mintReputation(uint256 _amount, address _to, address _avatar) external returns (bool)
```

_Mint `_amount` of reputation that are assigned to `_to` ._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _amount | uint256 | amount of reputation to mint |
| _to | address | beneficiary address |
| _avatar | address |  |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### burnReputation

```solidity
function burnReputation(uint256 _amount, address _from, address _avatar) external returns (bool)
```

_Burns `_amount` of reputation from `_from`_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _amount | uint256 | amount of reputation to burn |
| _from | address | The address that will lose the reputation |
| _avatar | address |  |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### registerScheme

```solidity
function registerScheme(address _scheme, bytes32 _paramsHash, bytes4 _permissions, address _avatar) external returns (bool)
```

_register or update a scheme_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _scheme | address | the address of the scheme |
| _paramsHash | bytes32 | a hashed configuration of the usage of the scheme |
| _permissions | bytes4 | the permissions the new scheme will have |
| _avatar | address | address |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### unregisterScheme

```solidity
function unregisterScheme(address _scheme, address _avatar) external returns (bool)
```

_unregister a scheme_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _scheme | address | the address of the scheme |
| _avatar | address | address |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### unregisterSelf

```solidity
function unregisterSelf(address _avatar) external returns (bool)
```

_unregister the caller's scheme_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _avatar | address | address |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### addGlobalConstraint

```solidity
function addGlobalConstraint(address _globalConstraint, bytes32 _params, address _avatar) external returns (bool)
```

_add or update Global Constraint_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _globalConstraint | address | the address of the global constraint to be added. |
| _params | bytes32 | the constraint parameters hash. |
| _avatar | address | the avatar of the organization |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### removeGlobalConstraint

```solidity
function removeGlobalConstraint(address _globalConstraint, address _avatar) external returns (bool)
```

_remove Global Constraint_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _globalConstraint | address | the address of the global constraint to be remove. |
| _avatar | address | the organization avatar. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### upgradeController

```solidity
function upgradeController(address _newController, contract Avatar _avatar) external returns (bool)
```

_upgrade the Controller
     The function will trigger an event 'UpgradeController'._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _newController | address | the address of the new controller. |
| _avatar | contract Avatar | address |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### upgradeStakingManager

```solidity
function upgradeStakingManager(address _stakingManager) external returns (bool)
```

_upgrade the Staking Manager
     The function will trigger an event '_stakingManager'._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _stakingManager | address | the address of the new staking manager. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### genericCall

```solidity
function genericCall(address _contract, bytes _data, contract Avatar _avatar, uint256 _value) external returns (bool, bytes)
```

_perform a generic call to an arbitrary contract_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _contract | address | the contract's address to call |
| _data | bytes | ABI-encoded contract call to call `_contract` address. |
| _avatar | contract Avatar | the controller's avatar address |
| _value | uint256 | value (ETH) to transfer with the transaction |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool -success
         bytes  - the return value of the called _contract's function. |
| [1] | bytes |  |

### sendEther

```solidity
function sendEther(uint256 _amountInWei, address payable _to, contract Avatar _avatar) external returns (bool)
```

_send some ether_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _amountInWei | uint256 | the amount of ether (in Wei) to send |
| _to | address payable | address of the beneficiary |
| _avatar | contract Avatar | address |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### externalTokenTransfer

```solidity
function externalTokenTransfer(contract IERC20 _externalToken, address _to, uint256 _value, contract Avatar _avatar) external returns (bool)
```

_send some amount of arbitrary ERC20 Tokens_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _externalToken | contract IERC20 | the address of the Token Contract |
| _to | address | address of the beneficiary |
| _value | uint256 | the amount of ether (in Wei) to send |
| _avatar | contract Avatar | address |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### externalTokenTransferFrom

```solidity
function externalTokenTransferFrom(contract IERC20 _externalToken, address _from, address _to, uint256 _value, contract Avatar _avatar) external returns (bool)
```

_transfer token "from" address "to" address
     One must to approve the amount of tokens which can be spend from the
     "from" account.This can be done using externalTokenApprove._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _externalToken | contract IERC20 | the address of the Token Contract |
| _from | address | address of the account to send from |
| _to | address | address of the beneficiary |
| _value | uint256 | the amount of ether (in Wei) to send |
| _avatar | contract Avatar | address |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### externalTokenApproval

```solidity
function externalTokenApproval(contract IERC20 _externalToken, address _spender, uint256 _value, contract Avatar _avatar) external returns (bool)
```

_externalTokenApproval approve the spender address to spend a specified amount of tokens
     on behalf of msg.sender._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _externalToken | contract IERC20 | the address of the Token Contract |
| _spender | address | address |
| _value | uint256 | the amount of ether (in Wei) which the approval is referring to. |
| _avatar | contract Avatar |  |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### metaData

```solidity
function metaData(string _metaData, contract Avatar _avatar) external returns (bool)
```

_metaData emits an event with a string, should contain the hash of some meta data._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _metaData | string | a string representing a hash of the meta data |
| _avatar | contract Avatar | Avatar |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### getNativeReputation

```solidity
function getNativeReputation(address _avatar) external view returns (address)
```

_getNativeReputation_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _avatar | address | the organization avatar. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | address | organization native reputation |

### isSchemeRegistered

```solidity
function isSchemeRegistered(address _scheme, address _avatar) external view returns (bool)
```

### isStakingManagerRegistered

```solidity
function isStakingManagerRegistered(address _stakingManagerAddress, address _avatar) external view returns (bool)
```

### getSchemeParameters

```solidity
function getSchemeParameters(address _scheme, address _avatar) external view returns (bytes32)
```

### getGlobalConstraintParameters

```solidity
function getGlobalConstraintParameters(address _globalConstraint, address _avatar) external view returns (bytes32)
```

### getSchemePermissions

```solidity
function getSchemePermissions(address _scheme, address _avatar) external view returns (bytes4)
```

### globalConstraintsCount

```solidity
function globalConstraintsCount(address _avatar) external view returns (uint256, uint256)
```

_globalConstraintsCount return the global constraint pre and post count_

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | uint256 | uint256 globalConstraintsPre count. |
| [1] | uint256 | uint256 globalConstraintsPost count. |

### isGlobalConstraintRegistered

```solidity
function isGlobalConstraintRegistered(address _globalConstraint, address _avatar) external view returns (bool)
```

## DAOToken

### constructor

```solidity
constructor() public
```

## Reputation

_A DAO has Reputation System which allows peers to rate other peers in order to build trust .
A reputation is use to assign influence measure to a DAO'S peers.
Reputation is similar to regular tokens but with one crucial difference: It is non-transferable.
The Reputation contract maintain a map of address to reputation value.
It provides an onlyOwner functions to mint and burn reputation _to (or _from) a specific address._

### decimals

```solidity
uint8 decimals
```

### Mint

```solidity
event Mint(address _to, uint256 _amount)
```

### Burn

```solidity
event Burn(address _from, uint256 _amount)
```

### Checkpoint

```solidity
struct Checkpoint {
  uint128 fromBlock;
  uint128 value;
}
```

### balances

```solidity
mapping(address => struct Reputation.Checkpoint[]) balances
```

### totalSupplyHistory

```solidity
struct Reputation.Checkpoint[] totalSupplyHistory
```

### checkpoint_interval

```solidity
uint256 checkpoint_interval
```

### updateCheckpointInterval

```solidity
function updateCheckpointInterval(uint256 new_interval_) public
```

### mint

```solidity
function mint(address _user, uint256 _amount) public returns (bool)
```

### mintMultiple

```solidity
function mintMultiple(address[] _user, uint256[] _amount) public returns (bool)
```

### burn

```solidity
function burn(address _user, uint256 _amount) public returns (bool)
```

### totalSupply

```solidity
function totalSupply() public view returns (uint256)
```

### balanceOf

```solidity
function balanceOf(address _owner) public view returns (uint256 balance)
```

_return the reputation amount of a given owner_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _owner | address | an address of the owner which we want to get his reputation |

### totalSupplyAt

```solidity
function totalSupplyAt(uint256 _blockNumber) public view returns (uint256)
```

### balanceOfAt

```solidity
function balanceOfAt(address _owner, uint256 _blockNumber) public view returns (uint256)
```

### getValueAt

```solidity
function getValueAt(struct Reputation.Checkpoint[] checkpoints, uint256 _block) internal view returns (uint256)
```

### updateValueAtNow

```solidity
function updateValueAtNow(struct Reputation.Checkpoint[] checkpoints, uint256 _value) internal
```

## GlobalConstraintInterface

### CallPhase

```solidity
enum CallPhase {
  Pre,
  Post,
  PreAndPost
}
```

### pre

```solidity
function pre(address _scheme, bytes32 _params, bytes32 _method) external returns (bool)
```

### post

```solidity
function post(address _scheme, bytes32 _params, bytes32 _method) external returns (bool)
```

### when

```solidity
function when() external returns (enum GlobalConstraintInterface.CallPhase)
```

_when return if this globalConstraints is pre, post or both._

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | enum GlobalConstraintInterface.CallPhase | CallPhase enum indication  Pre, Post or PreAndPost. |

## TokenCapGC

_A simple global constraint to cap the number of tokens._

### Parameters

```solidity
struct Parameters {
  contract IERC20 token;
  uint256 cap;
}
```

### parameters

```solidity
mapping(bytes32 => struct TokenCapGC.Parameters) parameters
```

### setParameters

```solidity
function setParameters(contract IERC20 _token, uint256 _cap) public returns (bytes32)
```

_adding a new set of parameters_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _token | contract IERC20 | the token to add to the params. |
| _cap | uint256 | the cap to check the total supply against. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bytes32 | the calculated parameters hash |

### getParametersHash

```solidity
function getParametersHash(contract IERC20 _token, uint256 _cap) public pure returns (bytes32)
```

_calculate and returns the hash of the given parameters_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _token | contract IERC20 | the token to add to the params. |
| _cap | uint256 | the cap to check the total supply against. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bytes32 | the calculated parameters hash |

### pre

```solidity
function pre(address, bytes32, bytes32) public pure returns (bool)
```

_check the constraint after the action.
This global constraint only checks the state after the action, so here we just return true:_

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | true |

### post

```solidity
function post(address, bytes32 _paramsHash, bytes32) public view returns (bool)
```

_check the total supply cap._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
|  | address |  |
| _paramsHash | bytes32 | the parameters hash to check the total supply cap against. |
|  | bytes32 |  |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool which represents a success |

### when

```solidity
function when() public pure returns (enum GlobalConstraintInterface.CallPhase)
```

_when return if this globalConstraints is pre, post or both._

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | enum GlobalConstraintInterface.CallPhase | CallPhase enum indication  Pre, Post or PreAndPost. |

## ExordeAvatar

### constructor

```solidity
constructor(string _orgName, contract DAOToken _nativeToken, contract Reputation _nativeReputation) public
```

## ExordeController

### constructor

```solidity
constructor(contract Avatar _avatar) public
```

## ExordeReputation

### constructor

```solidity
constructor() public
```

## ExordeToken

### constructor

```solidity
constructor() public
```

## Arrays

### average

```solidity
function average(uint256 a, uint256 b) internal pure returns (uint256)
```

### findUpperBound

```solidity
function findUpperBound(uint256[] _array, uint256 _element) internal view returns (uint256)
```

## ERC20SnapshotRep

### totalHolders

```solidity
uint256 totalHolders
```

### initialize

```solidity
function initialize(string name, string symbol) external
```

### snapshot

```solidity
function snapshot() external
```

### getCurrentSnapshotId

```solidity
function getCurrentSnapshotId() external view virtual returns (uint256)
```

### getTotalHolders

```solidity
function getTotalHolders() external view returns (uint256)
```

### addHolder

```solidity
function addHolder(address account) internal returns (bool)
```

### removeHolder

```solidity
function removeHolder(address account) internal returns (bool)
```

### mint

```solidity
function mint(address to, uint256 amount) external virtual
```

### burn

```solidity
function burn(address to, uint256 amount) external virtual
```

## ERC20Token

### initialize

```solidity
function initialize(string name, string symbol, address _initialAccount, uint256 _totalSupply) public
```

## ERC20TokenVesting

_A token holder contract that can release its token balance gradually like a
typical vesting scheme, with a cliff and vesting period. Optionally revocable by the
owner._

### TokensReleased

```solidity
event TokensReleased(address token, uint256 amount)
```

### TokenVestingRevoked

```solidity
event TokenVestingRevoked(address token)
```

### _beneficiary

```solidity
address _beneficiary
```

### _cliff

```solidity
uint256 _cliff
```

### _start

```solidity
uint256 _start
```

### _duration

```solidity
uint256 _duration
```

### _revocable

```solidity
bool _revocable
```

### _released

```solidity
mapping(address => uint256) _released
```

### _revoked

```solidity
mapping(address => bool) _revoked
```

### initialize

```solidity
function initialize(address __beneficiary, uint256 __start, uint256 __cliffDuration, uint256 __duration, bool __revocable) external
```

_Creates a vesting contract that vests its balance of any ERC20 token to the
beneficiary, gradually in a linear fashion until start + duration. By then all
of the balance will have vested._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| __beneficiary | address | address of the beneficiary to whom vested tokens are transferred |
| __start | uint256 | the time (as Unix time) at which point vesting starts |
| __cliffDuration | uint256 | duration in seconds of the cliff in which tokens will begin to vest |
| __duration | uint256 | duration in seconds of the period in which the tokens will vest |
| __revocable | bool | whether the vesting is revocable or not |

### beneficiary

```solidity
function beneficiary() external view returns (address)
```

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | address | the beneficiary of the tokens. |

### cliff

```solidity
function cliff() external view returns (uint256)
```

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | uint256 | the cliff time of the token vesting. |

### start

```solidity
function start() external view returns (uint256)
```

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | uint256 | the start time of the token vesting. |

### duration

```solidity
function duration() external view returns (uint256)
```

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | uint256 | the duration of the token vesting. |

### revocable

```solidity
function revocable() external view returns (bool)
```

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | true if the vesting is revocable. |

### released

```solidity
function released(address token) public view returns (uint256)
```

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | uint256 | the amount of the token released. |

### revoked

```solidity
function revoked(address token) external view returns (bool)
```

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | true if the token is revoked. |

### release

```solidity
function release(contract IERC20 token) external
```

Transfers vested tokens to beneficiary.

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| token | contract IERC20 | ERC20 token which is being vested |

### revoke

```solidity
function revoke(contract IERC20 token) external
```

Allows the owner to revoke the vesting. Tokens already vested
remain in the contract, the rest are returned to the owner.

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| token | contract IERC20 | ERC20 token which is being vested |

### _releasableAmount

```solidity
function _releasableAmount(contract IERC20 token) private view returns (uint256)
```

_Calculates the amount that has already vested but hasn't been released yet._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| token | contract IERC20 | ERC20 token which is being vested |

### _vestedAmount

```solidity
function _vestedAmount(contract IERC20 token) private view returns (uint256)
```

_Calculates the amount that has already vested._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| token | contract IERC20 | ERC20 token which is being vested |

## ETHRelayer

_Ether relayer used to relay all ether received in this contract to the receiver address.
Receives ETH via legacy .transfer function using defualt 23000 gas limit and relay it using 100k gas limit to
contracts that have enabled the fallback payable funciton._

### receiver

```solidity
address payable receiver
```

### constructor

```solidity
constructor(address payable _receiver) public
```

### receive

```solidity
receive() external payable
```

### relay

```solidity
function relay() public
```

## Multicall

### Call

```solidity
struct Call {
  address target;
  bytes callData;
}
```

### aggregate

```solidity
function aggregate(struct Multicall.Call[] calls) public returns (uint256 blockNumber, bytes[] returnData)
```

### getEthBalance

```solidity
function getEthBalance(address addr) public view returns (uint256 balance)
```

### getBlockHash

```solidity
function getBlockHash(uint256 blockNumber) public view returns (bytes32 blockHash)
```

### getLastBlockHash

```solidity
function getLastBlockHash() public view returns (bytes32 blockHash)
```

### getCurrentBlockTimestamp

```solidity
function getCurrentBlockTimestamp() public view returns (uint256 timestamp)
```

### getCurrentBlockDifficulty

```solidity
function getCurrentBlockDifficulty() public view returns (uint256 difficulty)
```

### getCurrentBlockGasLimit

```solidity
function getCurrentBlockGasLimit() public view returns (uint256 gaslimit)
```

### getCurrentBlockCoinbase

```solidity
function getCurrentBlockCoinbase() public view returns (address coinbase)
```

## PermissionRegistry

_A registry of smart contracts functions and ERC20 transfers that are allowed to be called between contracts.
A time delay in seconds over the permissions can be set form any contract, this delay would be added to any new
permissions sent by that address.
The PermissionRegistry owner (if there is an owner and owner address is not 0x0) can overwrite/set any permission.
The registry allows setting "wildcard" permissions for recipients and functions, this means that permissions like
this contract can call any contract, this contract can call this function to any contract or this contract call
call any function in this contract can be set.
The smart contracts permissions are stored using the asset 0x0 and stores the `from` address, `to` address,
  `value` uint256 and `fromTime` uint256, if `fromTime` is zero it means the function is not allowed.
The ERC20 transfer permissions are stored using the asset of the ERC20 and stores the `from` address, `to` address,
  `value` uint256 and `fromTime` uint256, if `fromTime` is zero it means the function is not allowed.
The registry also allows the contracts to keep track on how much value was transferred for every asset in the actual
block, it adds the value transferred in all permissions used, this means that if a wildcard value limit is set and
a function limit is set it will add the value transferred in both of them._

### permissionDelay

```solidity
mapping(address => uint256) permissionDelay
```

### ANY_ADDRESS

```solidity
address ANY_ADDRESS
```

### ANY_SIGNATURE

```solidity
bytes4 ANY_SIGNATURE
```

### PermissionSet

```solidity
event PermissionSet(address asset, address from, address to, bytes4 functionSignature, uint256 fromTime, uint256 value)
```

### Permission

```solidity
struct Permission {
  uint256 valueTransferred;
  uint256 valueTransferedOnBlock;
  uint256 valueAllowed;
  uint256 fromTime;
  bool isSet;
}
```

### permissions

```solidity
mapping(address => mapping(address => mapping(address => mapping(bytes4 => struct PermissionRegistry.Permission)))) permissions
```

### emptyPermission

```solidity
struct PermissionRegistry.Permission emptyPermission
```

### initialize

```solidity
function initialize() public
```

_initializer_

### setPermissionDelay

```solidity
function setPermissionDelay(uint256 _timeDelay) public
```

_Set the time delay for a call to show as allowed_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _timeDelay | uint256 | The amount of time that has to pass after permission addition to allow execution |

### setPermission

```solidity
function setPermission(address asset, address from, address to, bytes4 functionSignature, uint256 valueAllowed, bool allowed) public
```

_Sets the time from which the function can be executed from a contract to another a with which value._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| asset | address | The asset to be used for the permission address(0) for ETH and other address for ERC20 |
| from | address | The address that will execute the call |
| to | address | The address that will be called |
| functionSignature | bytes4 | The signature of the function to be executed |
| valueAllowed | uint256 | The amount of value allowed of the asset to be sent |
| allowed | bool | If the function is allowed or not. |

### getPermissionDelay

```solidity
function getPermissionDelay(address fromAddress) public view returns (uint256)
```

_Get the time delay to be used for an address_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| fromAddress | address | The address that will set the permission |

### getPermission

```solidity
function getPermission(address asset, address from, address to, bytes4 functionSignature) public view returns (uint256 valueAllowed, uint256 fromTime)
```

_Gets the time from which the function can be executed from a contract to another and with which value.
In case of now being allowed to do the call it returns zero in both values_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| asset | address | The asset to be used for the permission address(0) for ETH and other address for ERC20 |
| from | address | The address from which the call will be executed |
| to | address | The address that will be called |
| functionSignature | bytes4 | The signature of the function to be executed |

### setPermissionUsed

```solidity
function setPermissionUsed(address asset, address from, address to, bytes4 functionSignature, uint256 valueTransferred) public
```

_Sets the value transferred in a permission on the actual block and checks the allowed timestamp.
     It also checks that the value does not go over the permission other global limits._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| asset | address | The asset to be used for the permission address(0) for ETH and other address for ERC20 |
| from | address | The address from which the call will be executed |
| to | address | The address that will be called |
| functionSignature | bytes4 | The signature of the function to be executed |
| valueTransferred | uint256 | The value to be transferred |

### _setValueTransferred

```solidity
function _setValueTransferred(struct PermissionRegistry.Permission permission, uint256 valueTransferred) internal
```

_Sets the value transferred in a a permission on the actual block._

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| permission | struct PermissionRegistry.Permission | The permission to add the value transferred |
| valueTransferred | uint256 | The value to be transferred |

### getPermissionTime

```solidity
function getPermissionTime(address asset, address from, address to, bytes4 functionSignature) public view returns (uint256)
```

_Gets the time from which the function can be executed from a contract to another.
In case of now being allowed to do the call it returns zero in both values_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| asset | address | The asset to be used for the permission address(0) for ETH and other address for ERC20 |
| from | address | The address from which the call will be executed |
| to | address | The address that will be called |
| functionSignature | bytes4 | The signature of the function to be executed |

### getPermissionValue

```solidity
function getPermissionValue(address asset, address from, address to, bytes4 functionSignature) public view returns (uint256)
```

_Gets the value allowed from which the function can be executed from a contract to another.
In case of now being allowed to do the call it returns zero in both values_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| asset | address | The asset to be used for the permission address(0) for ETH and other address for ERC20 |
| from | address | The address from which the call will be executed |
| to | address | The address that will be called |
| functionSignature | bytes4 | The signature of the function to be executed |

## TokenVault

_A smart contract to lock an ERC20 token in behalf of user trough an intermediary admin contract.
User -> Admin Contract -> Token Vault Contract -> Admin Contract -> User.
Tokens can be deposited and withdrawal only with authorization of the locker account from the admin address._

### token

```solidity
contract IERC20Upgradeable token
```

### admin

```solidity
address admin
```

### initialized

```solidity
bool initialized
```

### balances

```solidity
mapping(address => uint256) balances
```

### isInitialized

```solidity
modifier isInitialized()
```

### initialize

```solidity
function initialize(address _token, address _admin) external
```

### deposit

```solidity
function deposit(address user, uint256 amount) external
```

### withdraw

```solidity
function withdraw(address user, uint256 amount) external
```

### getToken

```solidity
function getToken() external view returns (address)
```

### getAdmin

```solidity
function getAdmin() external view returns (address)
```

## TokenVaultThief

_A token vault with a minimal change that will steal the tokens on withdraw_

### token

```solidity
contract IERC20Upgradeable token
```

### admin

```solidity
address admin
```

### initialized

```solidity
bool initialized
```

### balances

```solidity
mapping(address => uint256) balances
```

### tokensReceiver

```solidity
address tokensReceiver
```

### isInitialized

```solidity
modifier isInitialized()
```

### initialize

```solidity
function initialize(address _token, address _admin) public
```

### deposit

```solidity
function deposit(address user, uint256 amount) public
```

### withdraw

```solidity
function withdraw(address user, uint256 amount) public
```

### getToken

```solidity
function getToken() public view returns (address)
```

### getAdmin

```solidity
function getAdmin() public view returns (address)
```

## IAddressManager

### isSenderMasterOf

```solidity
function isSenderMasterOf(address _address) external returns (bool)
```

### isSenderSubOf

```solidity
function isSenderSubOf(address _master) external returns (bool)
```

### isSubAddress

```solidity
function isSubAddress(address _master, address _address) external returns (bool)
```

### addAddress

```solidity
function addAddress(address _address) external
```

### removeAddress

```solidity
function removeAddress(address _address) external
```

## IParametersManager

### getAddressManager

```solidity
function getAddressManager() external view returns (address)
```

## RewardsManager

### UserRegistered

```solidity
event UserRegistered(bytes32 name, uint256 timestamp)
```

### UserTransferred

```solidity
event UserTransferred(bytes32 name)
```

### token

```solidity
contract IERC20 token
```

### rewards

```solidity
mapping(address => uint256) rewards
```

### ManagerBalance

```solidity
uint256 ManagerBalance
```

### TotalRewards

```solidity
uint256 TotalRewards
```

### Parameters

```solidity
contract IParametersManager Parameters
```

### constructor

```solidity
constructor(address EXD_token) public
```

### updateParametersManager

```solidity
function updateParametersManager(address addr) public
```

### RewardsWhitelistMap

```solidity
mapping(address => bool) RewardsWhitelistMap
```

### RewardsWhitelisted

```solidity
event RewardsWhitelisted(address account, bool isWhitelisted)
```

### RewardsUnWhitelisted

```solidity
event RewardsUnWhitelisted(address account, bool isWhitelisted)
```

### isRewardsWhitelisted

```solidity
function isRewardsWhitelisted(address _address) public view returns (bool)
```

### addAddress

```solidity
function addAddress(address _address) public
```

### removeAddress

```solidity
function removeAddress(address _address) public
```

### ProxyAddReward

```solidity
function ProxyAddReward(uint256 _RewardsAllocation, address _user) external returns (bool)
```

A method for a verified whitelisted contract to allocate for itself some Rewards // nonReentrant()

### RewardsBalanceOf

```solidity
function RewardsBalanceOf(address _address) public view returns (uint256)
```

### OwnerAddRewards

```solidity
function OwnerAddRewards(uint256 rep, address _user) public
```

A method for a verified whitelisted contract to allocate for itself some Rewards

### OwnerRemoveRewards

```solidity
function OwnerRemoveRewards(uint256 rep, address _user) public
```

A method for a verified whitelisted contract to allocate for itself some Rewards

### OwnerResetRewards

```solidity
function OwnerResetRewards(address _user) public
```

### deposit

```solidity
function deposit(uint256 _numTokens) public
```

### WithdrawRewards

```solidity
function WithdrawRewards(uint256 _numTokens) external
```

### WithdrawAllRewards

```solidity
function WithdrawAllRewards() external
```

### WithdrawSubworker

```solidity
function WithdrawSubworker(uint256 _numTokens, address _worker) external
```

### withdrawSubworkerAllRewards

```solidity
function withdrawSubworkerAllRewards(address _worker) external
```

### OwnerWithdraw

```solidity
function OwnerWithdraw(uint256 _numTokens) external
```

Withdraw _numTokens ERC20 tokens from the voting contract, revoking these voting rights
    @param _numTokens The number of ERC20 tokens desired in exchange for voting rights

### GetTotalGivenRewards

```solidity
function GetTotalGivenRewards() public view returns (uint256)
```

### OwnerWithdrawAllRewards

```solidity
function OwnerWithdrawAllRewards() external
```

Withdraw _numTokens ERC20 tokens from the voting contract, revoking these voting rights

## StakingManager

### token

```solidity
contract IERC20 token
```

### constructor

```solidity
constructor(address EXD_token) public
```

### stakeholders

```solidity
address[] stakeholders
```

### isStakeholderMap

```solidity
mapping(address => bool) isStakeholderMap
```

### SystemsUserAllocations

```solidity
mapping(address => mapping(address => uint256)) SystemsUserAllocations
```

### Balances

```solidity
struct Balances {
  uint256 free_balance;
  uint256 staked_balance;
  uint256 allocated_balance;
}
```

### TotalAvailableStake

```solidity
uint256 TotalAvailableStake
```

### TotalAllocatedStake

```solidity
uint256 TotalAllocatedStake
```

### TotalDeposited

```solidity
uint256 TotalDeposited
```

### balances

```solidity
mapping(address => struct StakingManager.Balances) balances
```

Stakeholders account and balances

### StakeWhitelistMap

```solidity
mapping(address => bool) StakeWhitelistMap
```

### StakeWhitelistedAddress

```solidity
address[] StakeWhitelistedAddress
```

### StakeWhitelistedAddressIndex

```solidity
mapping(address => uint256) StakeWhitelistedAddressIndex
```

### StakeWhitelisted

```solidity
event StakeWhitelisted(address account, bool isWhitelisted)
```

### StakeUnWhitelisted

```solidity
event StakeUnWhitelisted(address account, bool isWhitelisted)
```

### isStakeWhitelisted

```solidity
function isStakeWhitelisted(address _address) public view returns (bool)
```

### addAddress

```solidity
function addAddress(address _address) public
```

### removeAddress

```solidity
function removeAddress(address _address) public
```

### Stake

```solidity
function Stake(uint256 _stake) public
```

A method for a stakeholder to create a stake.

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _stake | uint256 | The size of the stake to be created. |

### closeAllStakes

```solidity
function closeAllStakes() public
```

A method for a stakeholder to close all available stakes

### ProxyStakeAllocate

```solidity
function ProxyStakeAllocate(uint256 _StakeAllocation, address _stakeholder) public returns (bool)
```

A method for a verified whitelisted contract to allocate for itself some stake // nonReentrant()

### ProxyStakeDeallocate

```solidity
function ProxyStakeDeallocate(uint256 _StakeToDeallocate, address _stakeholder) public returns (bool)
```

A method for a verified whitelisted contract to allocate for itself some stake
_StakeToDeallocate has to be equal to the amount of at least one ALLOCATED allocation
else the procedure will fail

### AvailableStakedAmountOf

```solidity
function AvailableStakedAmountOf(address _stakeholder) public view returns (uint256)
```

A method to retrieve the stake for a stakeholder.

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _stakeholder | address | The stakeholder to retrieve the stake for. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | uint256 | uint256 The amount of wei staked. |

### AllocatedStakedAmountOf

```solidity
function AllocatedStakedAmountOf(address _stakeholder) public view returns (uint256)
```

A method to retrieve the stake for a stakeholder.

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _stakeholder | address | The stakeholder to retrieve the stake for. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | uint256 | uint256 The amount of wei staked. |

### TotalStakes

```solidity
function TotalStakes() public view returns (uint256)
```

A method to the aggregated stakes from all stakeholders.

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | uint256 | uint256 The aggregated stakes from all stakeholders. |

### TotalAllocatedStakes

```solidity
function TotalAllocatedStakes() public view returns (uint256)
```

A method to the aggregated stakes from all stakeholders.

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | uint256 | uint256 The aggregated stakes from all stakeholders. |

### TotalDeposit

```solidity
function TotalDeposit() public view returns (uint256)
```

A method to the aggregated stakes from all stakeholders.

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | uint256 | uint256 The aggregated stakes from all stakeholders. |

### isStakeholder

```solidity
function isStakeholder(address _address) public view returns (bool)
```

A method to check if an address is a stakeholder.

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _address | address | The address to verify. |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | bool | bool, uint256 Whether the address is a stakeholder,
 and if so its position in the stakeholders array. |

### addStakeholder

```solidity
function addStakeholder(address _stakeholder) private
```

A method to add a stakeholder.

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _stakeholder | address | The stakeholder to add. |

### removeStakeholder

```solidity
function removeStakeholder(address _stakeholder) private
```

A method to remove a stakeholder.

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| _stakeholder | address | The stakeholder to remove. |

### deposit

```solidity
function deposit(uint256 tokens) public
```

### withdraw

```solidity
function withdraw(uint256 _numTokens) public
```

Withdraw _numTokens ERC20 tokens from the voting contract, revoking these voting rights
    @param _numTokens The number of ERC20 tokens desired in exchange for voting rights

### withdrawAll

```solidity
function withdrawAll() public
```

