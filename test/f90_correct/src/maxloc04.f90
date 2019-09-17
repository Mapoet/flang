!
! Copyright (c) 2019, NVIDIA CORPORATION.  All rights reserved.
!
! Licensed under the Apache License, Version 2.0 (the "License");
! you may not use this file except in compliance with the License.
! You may obtain a copy of the License at
!
!     http://www.apache.org/licenses/LICENSE-2.0
!
! Unless required by applicable law or agreed to in writing, software
! distributed under the License is distributed on an "AS IS" BASIS,
! WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
! See the License for the specific language governing permissions and
! limitations under the License.

! 1d char array, maxloc with back

program main
  integer :: res(1)
  integer :: expect(2) = (/3, 2/)
  res = maxloc((/"a","b","b","a"/),back=.true.)
  call check(res, expect(1), 1)
  !print *, "back=true:", res
  res = maxloc((/"a","b","b","a"/),back=.false.)
  call check(res, expect(2), 1)
  !print *, "back=false:", res
end