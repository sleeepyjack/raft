/*
 * Copyright (c) 2021-2023, NVIDIA CORPORATION.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <cstdint>
#include <raft/neighbors/specializations.cuh>
#include <raft/spatial/knn/knn.cuh>

namespace raft {
namespace spatial {
namespace knn {

template void brute_force_knn<uint32_t, float, unsigned int>(raft::device_resources const& handle,
                                                             std::vector<float*>& input,
                                                             std::vector<unsigned int>& sizes,
                                                             unsigned int D,
                                                             float* search_items,
                                                             unsigned int n,
                                                             uint32_t* res_I,
                                                             float* res_D,
                                                             unsigned int k,
                                                             bool rowMajorIndex,
                                                             bool rowMajorQuery,
                                                             std::vector<uint32_t>* translations,
                                                             distance::DistanceType metric,
                                                             float metric_arg);

};  // namespace knn
};  // namespace spatial
};  // namespace raft