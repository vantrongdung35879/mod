.class public final enum Lcom/tencent/beacon/event/open/EventType;
.super Ljava/lang/Enum;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/beacon/event/open/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/beacon/event/open/EventType;

.field public static final enum DT_NORMAL:Lcom/tencent/beacon/event/open/EventType;

.field public static final enum DT_REALTIME:Lcom/tencent/beacon/event/open/EventType;

.field public static final enum IMMEDIATE_MSF:Lcom/tencent/beacon/event/open/EventType;

.field public static final enum IMMEDIATE_WNS:Lcom/tencent/beacon/event/open/EventType;

.field public static final enum NORMAL:Lcom/tencent/beacon/event/open/EventType;

.field public static final enum REALTIME:Lcom/tencent/beacon/event/open/EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/tencent/beacon/event/open/EventType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/beacon/event/open/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/beacon/event/open/EventType;->NORMAL:Lcom/tencent/beacon/event/open/EventType;

    .line 2
    new-instance v1, Lcom/tencent/beacon/event/open/EventType;

    const-string v3, "REALTIME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/beacon/event/open/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/beacon/event/open/EventType;->REALTIME:Lcom/tencent/beacon/event/open/EventType;

    .line 3
    new-instance v3, Lcom/tencent/beacon/event/open/EventType;

    const-string v5, "DT_NORMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/beacon/event/open/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/beacon/event/open/EventType;->DT_NORMAL:Lcom/tencent/beacon/event/open/EventType;

    .line 4
    new-instance v5, Lcom/tencent/beacon/event/open/EventType;

    const-string v7, "DT_REALTIME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tencent/beacon/event/open/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tencent/beacon/event/open/EventType;->DT_REALTIME:Lcom/tencent/beacon/event/open/EventType;

    .line 5
    new-instance v7, Lcom/tencent/beacon/event/open/EventType;

    const-string v9, "IMMEDIATE_WNS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tencent/beacon/event/open/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tencent/beacon/event/open/EventType;->IMMEDIATE_WNS:Lcom/tencent/beacon/event/open/EventType;

    .line 6
    new-instance v9, Lcom/tencent/beacon/event/open/EventType;

    const-string v11, "IMMEDIATE_MSF"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/tencent/beacon/event/open/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/tencent/beacon/event/open/EventType;->IMMEDIATE_MSF:Lcom/tencent/beacon/event/open/EventType;

    const/4 v11, 0x6

    .line 7
    new-array v11, v11, [Lcom/tencent/beacon/event/open/EventType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/tencent/beacon/event/open/EventType;->$VALUES:[Lcom/tencent/beacon/event/open/EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/beacon/event/open/EventType;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/beacon/event/open/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/beacon/event/open/EventType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/beacon/event/open/EventType;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/beacon/event/open/EventType;->$VALUES:[Lcom/tencent/beacon/event/open/EventType;

    invoke-virtual {v0}, [Lcom/tencent/beacon/event/open/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/beacon/event/open/EventType;

    return-object v0
.end method
