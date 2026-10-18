.class final enum Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;
.super Ljava/lang/Enum;
.source "NetworkUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ngame/utility/NetworkUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

.field public static final enum NotReachable:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

.field public static final enum ReachableViaOthers:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

.field public static final enum ReachableViaWWAN_2G:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

.field public static final enum ReachableViaWWAN_3G:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

.field public static final enum ReachableViaWWAN_4G:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

.field public static final enum ReachableViaWWAN_5G:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

.field public static final enum ReachableViaWWAN_UNKNOWN:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

.field public static final enum ReachableViaWiFi:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 28
    new-instance v0, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    const-string v1, "NotReachable"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->NotReachable:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    .line 29
    new-instance v1, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    const-string v3, "ReachableViaWiFi"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ReachableViaWiFi:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    .line 30
    new-instance v3, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    const-string v5, "ReachableViaOthers"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ReachableViaOthers:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    .line 31
    new-instance v5, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    const-string v7, "ReachableViaWWAN_UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ReachableViaWWAN_UNKNOWN:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    .line 32
    new-instance v7, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    const-string v9, "ReachableViaWWAN_2G"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ReachableViaWWAN_2G:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    .line 33
    new-instance v9, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    const-string v11, "ReachableViaWWAN_3G"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ReachableViaWWAN_3G:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    .line 34
    new-instance v11, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    const-string v13, "ReachableViaWWAN_4G"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ReachableViaWWAN_4G:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    .line 35
    new-instance v13, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    const-string v15, "ReachableViaWWAN_5G"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->ReachableViaWWAN_5G:Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    const/16 v15, 0x8

    .line 26
    new-array v15, v15, [Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->$VALUES:[Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 26
    const-class v0, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;
    .locals 1

    .line 26
    sget-object v0, Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->$VALUES:[Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    invoke-virtual {v0}, [Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/ngame/utility/NetworkUtility$NetworkType;

    return-object v0
.end method
