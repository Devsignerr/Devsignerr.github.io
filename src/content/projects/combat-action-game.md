---
title: "전투 액션 게임"
description: "UE5 기반 싱글플레이 전투 액션 게임. Action, Skill, AI, CC, 암살, 락온 시스템 등 전투 전반의 시스템을 설계·구현한 인디 프로젝트."
tags: ["UE5", "C++", "Gameplay", "AI", "Animation", "Tools"]
date: 2024-06-01
featured: true
---

## 프로젝트 개요

UE5 기반의 싱글플레이 전투 액션 게임입니다. 전투의 핵심이 되는 다양한 시스템을 직접 설계하고 구현했습니다.

**YouTube**: https://youtu.be/GHh-IlVhQBs

### Action System

캐릭터의 구르기, 막기/조준, 공격, 이동/달리기, 점프 등의 액션을 Action Component가 관리합니다. Character Interface를 통해 컴포넌트 간 직접 의존성을 피하고, Lock 구조체 기반의 행동 제한 제어 시스템으로 상호 배타적 제약을 명확히 처리합니다.

### Skill System

스킬은 "Exec"이라는 작은 실행 단위들의 집합으로 구성됩니다. 각 Exec은 시각 연출 정보, 실행 타입, 대상 타입, 스킬 오브젝트 및 CC 정보를 포함하며, 데이터 테이블에서 조합하여 다양한 스킬을 제작할 수 있습니다. 검기, 투사체, 순간이동, 휠윈드, 충격파 등의 스킬을 구현했습니다.

### AI System

시각·청각·데미지 3가지 Perception으로 타겟을 인지하고, Behavior Tree의 데코레이터·서비스로 상황을 판단합니다. 일반 유닛은 루트모션 이동 거리 데이터를 참조하여 거리 기반 공격을 선택하고, 거대 유닛은 초근접/근접/장거리 + 전후좌우 범위로 세분화된 패턴을 결정합니다.

### Crowd Control

Frozen, Stun, Pushback 등 상태이상 시스템. Niagara와 Material로 시각적 표현을 처리하며, CC Component가 상태를 관리하고 AI Controller의 BlackBoard를 업데이트합니다.

### Assassinate & LockOn

타겟 미감지 시 후방 접근 암살 시스템과, 시야각·거리 기반 락온 시스템을 구현했습니다.

### Tools

Physics Asset Extractor (Body 정보 추출 + 부위 자동 매핑)와 Root Motion Extractor (애니메이션 이동 거리 추출) 에디터 유틸리티 위젯을 개발했습니다.
