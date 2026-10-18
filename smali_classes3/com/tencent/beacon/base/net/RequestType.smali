.class public final enum Lcom/tencent/beacon/base/net/RequestType;
.super Ljava/lang/Enum;
.source "RequestType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/beacon/base/net/RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/beacon/base/net/RequestType;

.field public static final enum EVENT:Lcom/tencent/beacon/base/net/RequestType;

.field public static final enum LONG_CONNECTION:Lcom/tencent/beacon/base/net/RequestType;

.field public static final enum QIMEI:Lcom/tencent/beacon/base/net/RequestType;

.field public static final enum STRATEGY:Lcom/tencent/beacon/base/net/RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/tencent/beacon/base/net/RequestType;

    const-string v1, "EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/beacon/base/net/RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/beacon/base/net/RequestType;->EVENT:Lcom/tencent/beacon/base/net/RequestType;

    .line 2
    new-instance v1, Lcom/tencent/beacon/base/net/RequestType;

    const-string v3, "STRATEGY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/beacon/base/net/RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/beacon/base/net/RequestType;->STRATEGY:Lcom/tencent/beacon/base/net/RequestType;

    .line 3
    new-instance v3, Lcom/tencent/beacon/base/net/RequestType;

    const-string v5, "QIMEI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/beacon/base/net/RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/beacon/base/net/RequestType;->QIMEI:Lcom/tencent/beacon/base/net/RequestType;

    .line 4
    new-instance v5, Lcom/tencent/beacon/base/net/RequestType;

    const-string v7, "LONG_CONNECTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tencent/beacon/base/net/RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tencent/beacon/base/net/RequestType;->LONG_CONNECTION:Lcom/tencent/beacon/base/net/RequestType;

    const/4 v7, 0x4

    .line 5
    new-array v7, v7, [Lcom/tencent/beacon/base/net/RequestType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/tencent/beacon/base/net/RequestType;->$VALUES:[Lcom/tencent/beacon/base/net/RequestType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/beacon/base/net/RequestType;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/beacon/base/net/RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/beacon/base/net/RequestType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/beacon/base/net/RequestType;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/beacon/base/net/RequestType;->$VALUES:[Lcom/tencent/beacon/base/net/RequestType;

    invoke-virtual {v0}, [Lcom/tencent/beacon/base/net/RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/beacon/base/net/RequestType;

    return-object v0
.end method
