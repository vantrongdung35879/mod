.class public final enum Lcom/tencent/beacon/module/ModuleName;
.super Ljava/lang/Enum;
.source "ModuleName.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/beacon/module/ModuleName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/beacon/module/ModuleName;

.field public static final enum AUDIT:Lcom/tencent/beacon/module/ModuleName;

.field public static final enum EVENT:Lcom/tencent/beacon/module/ModuleName;

.field public static final enum QMSP:Lcom/tencent/beacon/module/ModuleName;

.field public static final enum STAT:Lcom/tencent/beacon/module/ModuleName;

.field public static final enum STRATEGY:Lcom/tencent/beacon/module/ModuleName;


# instance fields
.field private className:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/tencent/beacon/module/ModuleName;

    const-string v1, "com.tencent.beacon.module.StrategyModule"

    const-string v2, "STRATEGY"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/tencent/beacon/module/ModuleName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/beacon/module/ModuleName;->STRATEGY:Lcom/tencent/beacon/module/ModuleName;

    .line 2
    new-instance v1, Lcom/tencent/beacon/module/ModuleName;

    const-string v2, "com.tencent.beacon.module.EventModule"

    const-string v4, "EVENT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/tencent/beacon/module/ModuleName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tencent/beacon/module/ModuleName;->EVENT:Lcom/tencent/beacon/module/ModuleName;

    .line 3
    new-instance v2, Lcom/tencent/beacon/module/ModuleName;

    const-string v4, "com.tencent.beacon.module.AuditModule"

    const-string v6, "AUDIT"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/tencent/beacon/module/ModuleName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tencent/beacon/module/ModuleName;->AUDIT:Lcom/tencent/beacon/module/ModuleName;

    .line 4
    new-instance v4, Lcom/tencent/beacon/module/ModuleName;

    const-string v6, "com.tencent.beacon.module.StatModule"

    const-string v8, "STAT"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/tencent/beacon/module/ModuleName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/tencent/beacon/module/ModuleName;->STAT:Lcom/tencent/beacon/module/ModuleName;

    .line 5
    new-instance v6, Lcom/tencent/beacon/module/ModuleName;

    const-string v8, "com.tencent.beacon.module.QmspModule"

    const-string v10, "QMSP"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/tencent/beacon/module/ModuleName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/tencent/beacon/module/ModuleName;->QMSP:Lcom/tencent/beacon/module/ModuleName;

    const/4 v8, 0x5

    .line 6
    new-array v8, v8, [Lcom/tencent/beacon/module/ModuleName;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    sput-object v8, Lcom/tencent/beacon/module/ModuleName;->$VALUES:[Lcom/tencent/beacon/module/ModuleName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/tencent/beacon/module/ModuleName;->className:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/beacon/module/ModuleName;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/beacon/module/ModuleName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/beacon/module/ModuleName;

    return-object p0
.end method

.method public static values()[Lcom/tencent/beacon/module/ModuleName;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/beacon/module/ModuleName;->$VALUES:[Lcom/tencent/beacon/module/ModuleName;

    invoke-virtual {v0}, [Lcom/tencent/beacon/module/ModuleName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/beacon/module/ModuleName;

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/module/ModuleName;->className:Ljava/lang/String;

    return-object v0
.end method
