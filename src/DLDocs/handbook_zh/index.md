## 1.1 产品概述

依瞳人工智能平台旨在为不同行业的用户提供基于深度学习的端到端解决方案，使用户可以用最快的速度、最少的时间开始高性能的深度学习工作，从而大幅节省研究成本、提高研发效率，同时可为中小企业解决私有云难建成、成本高等问题。 

平台融合了Tensorflow、PyTorch、MindSpore等开源深度学习框架，提供了模型训练、超参调优、集群状态监控等开发环境，方便AI开发者快速搭建人工智能开发环境，开展AI开发应用。在监控模块基础上搭建预警模块，自动将平台异常通知管理员，提升平台的预警效率及安全性能。 

平台底层采用更轻量级的虚拟化技术，如Docker容器，将任何一个或多个程序封装起来，并为容器提供标准的管理接口，使得每个容器之前互相隔离、互不影响，从而区分计算资源。对部署容器化的应用，采用Kubernetes集群技术，进行自动化部署、规划、更新和维护，避免运维人员进行复杂的手工配置和处理，从而提高效率，降低成本。 

## 1.2 名词解释

| 术语、缩略语 | 解释                                                         |
| ------------ | ------------------------------------------------------------ |
| Tensorflow   | TensorFlow 由 Google 大脑主导开发，是一个分布式系统上的大规模深度学习框架。移植性好，可以运行在移动设备上，并支持分布式多机多卡训练，支持多种深度学习模型。 |
| PyTorch      | 由 FaceBook AI 团队主导开发。不同于 TensorFlow，PyTorch 采用动态计算图的方式，并提供良好的 Python 接口，代码简单灵活，使用起来非常方便。内存分配也经过了优化，能支持分布式多机训练。 |
| MindSpore    | MindSpore是端边云全场景按需协同的华为自研AI计算框架，提供全场景统一API，为全场景AI的模型开发、模型运行、模型部署提供端到端能力。 |
| Docker       | Docker 是一个开源的应用容器引擎，让开发者可以打包他们的应用以及依赖包到一个可移植的镜像中，然后发布到任何流行的 Linux或Windows 机器上，也可以实现虚拟化。 |
| Kubernetes   | 简称K8S，是一个开源的，用于管理云平台中多个主机上的容器化的应用，Kubernetes的目标是让部署容器化的应用简单并且高效，Kubernetes提供了应用部署，规划，更新，维护的一种机制。 |
| 超参数       | 在机器学习的中，超参数是在开始学习过程之前设置值的参数，而不是通过训练得到的参数数据。通常情况下，需要对超参数进行优化，给学习机选择一组最优超参数，以提高学习的性能和效果。 |
| Job          | 模型训练任务                                                 |
| VC           | Virtual Cluster虚拟集群，对物理集群内所有AI计算芯片进行分组管理，每一个组就是一个虚拟集群 |
| 物理节点     | 表示集群中的物理机器                                         |
| AI计算芯片   | 用于AI模型训练所需要的处理器，比如英伟达GPU。                |
| 镜像         | 执行模型训练所需要的文件集合                                 |
| Jupyter      | Jupyter Notebook是一个基于Web的交互式计算环境，支持运行多种编程语言。平台支持使用Jupyter NoteBook的方式进行算法代码编写，模型训练任务的提交，以及结果查看等操作。 |
| SSH          | 是一种加密的网络传输协议，可以远程登录到job容器。            |
| TensorBoard  | TensorBoard是一个可视化工具，它可以用来展示网络图、张量的指标变化、张量的分布情况等。在训练网络的时候，我们可以设置不同的参数（比如：权重W、偏置B、卷积层数、全连接层数等），使用TensorBoard可以很直观地进行参数的选择。 |

## 1.3 功能介绍

本文主要介绍平台的功能和使用，包括提交job、查看和管理job、集群状态监控、虚拟集群管理、用户管理等。用户通过web端提交深度神经网络模型训练任务，通过查看和管理job页面可查看任务的运行状态、实时的资源使用情况、训练任务的日志输出等；通过集群状态监控可查看整个集群的资源使用情况，并可监控各物理节点的状态。