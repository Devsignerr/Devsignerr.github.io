---
title: "멀티플레이어 액션 게임"
description: "UE5 Listen Server 기반 멀티플레이어 액션 게임. 술래잡기 + 땅따먹기 컨셉으로 네트워크 동기화, 세션, 덱빌드 시스템 등을 구현."
tags: ["UE5", "C++", "Multiplayer", "Gameplay", "UI", "Network"]
date: 2024-12-01
featured: true
---

## 프로젝트 개요

UE5 Listen Server 기반의 멀티플레이어 액션 게임입니다. 술래잡기 + 땅따먹기 컨셉으로, 투사체/스킬/기믹을 이용해 술래를 잡고 발판을 점령하는 게임입니다.

**YouTube**: https://youtu.be/bccGWWdCS6k

### Action System

Wall Jump, Wall Run, Wall Climb, Rope, Sliding, Dash 6가지 액션을 구현했습니다. Action Component가 실행 가능 여부, 실행/중단, Action Lock을 관리하며, Enhanced Input과 네트워크 Replication/RPC를 처리합니다.

### Skill & Status Effect System

DataTable 기반으로 스킬 정보(타입, 애니메이션, FX, 쿨타임 등)와 Status Effect 정보(버프/디버프 타입, 라이프타임, 머티리얼 등)를 분리 관리합니다. Skill Component와 Status Effect Component가 각각 생명주기와 FX 실행을 담당합니다.

### Deck Build System

매 라운드 시작 시 선택하는 강화 시스템. 특수능력(Ability)과 스탯 강화(Stat Ability)로 구성되며, FName 기반으로 Stat Component의 멤버 Property를 찾아 동적으로 값을 변경합니다.

### Network & Physics

Listen Server 환경에서 Physics Object 투척 시 서버-클라이언트 간 위치 불일치 문제를 Average Ping 기반 Release 타이밍 보정으로 해결했습니다. Steam Online Subsystem으로 세션을 관리합니다.

### UI & Tools

Main Menu (Scene Capture + Render Target 실시간 애니메이션), Lobby, HUD, Setting UI를 구현하고, 맵 요소 배치 자동화를 위한 Editor Utility Widget을 개발했습니다.

### Gimmick & Physics Prop

캐릭터를 띄우거나 밀쳐내는 기믹 시스템과, 줍고 던질 수 있는 물리 물체 시스템을 구현했습니다.
