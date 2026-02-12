# Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
# SPDX-License-Identifier: BSD-3-Clause-Clear

# name of tensor
string name

# type of tensor data
# 0: "uint8"
# 1: "int8"
# 2: "float32"
# 3: "float64"
# 4: "uint16"
# 5: "float16"
# 6: "uint32"
# 7: "uint64"
int32 data_type

# shape of tensor
uint32[] shape

# data buffer
uint8[] data

# DMA-BUF file descriptor that contains tensor bytes. -1 means invalid / not used.
int32 dmabuf_fd

# DMA-BUF size in bytes.
uint32 dmabuf_size

# Optional byte offset within the DMA-BUF for this tensor.
uint64 dmabuf_offset

# pointer to DAM-BUF
uint64 dmabuf_ptr