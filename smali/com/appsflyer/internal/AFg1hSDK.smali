.class public final enum Lcom/appsflyer/internal/AFg1hSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFg1hSDK;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u001d\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0005\u001a\u00020\u0002X\u0007\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u0005j\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001f"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFg1hSDK;",
        "",
        "",
        "valueOf",
        "Ljava/lang/String;",
        "values",
        "p0",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "AFKeystoreWrapper",
        "AFInAppEventParameterName",
        "AFInAppEventType",
        "d",
        "AFLogger",
        "e",
        "registerClient",
        "unregisterClient",
        "afRDLog",
        "v",
        "w",
        "afVerboseLog",
        "getLevel",
        "afErrorLogForExcManagerOnly",
        "afLogForce",
        "force",
        "AFLogger$LogLevel",
        "AFVersionDeclaration",
        "i",
        "afInfoLog",
        "afDebugLog",
        "afWarnLog",
        "afErrorLog"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum AFInAppEventParameterName:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum AFLogger$LogLevel:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum AFVersionDeclaration:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum afDebugLog:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum afErrorLog:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum afErrorLogForExcManagerOnly:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum afInfoLog:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum afLogForce:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum afRDLog:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum afVerboseLog:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum afWarnLog:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum d:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum e:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum force:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum getLevel:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum i:Lcom/appsflyer/internal/AFg1hSDK;

.field private static final synthetic onInstallConversionFailureNative:[Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum registerClient:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum unregisterClient:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum v:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum values:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum w:Lcom/appsflyer/internal/AFg1hSDK;


# instance fields
.field final valueOf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 8
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v1, "Other"

    const-string v2, "OTHER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1hSDK;

    .line 9
    new-instance v1, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v2, "HTTP Client"

    const-string v4, "HTTP_CLIENT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/AFg1hSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFg1hSDK;

    .line 10
    new-instance v2, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v4, "Queue"

    const-string v6, "QUEUE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/appsflyer/internal/AFg1hSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFg1hSDK;

    .line 11
    new-instance v4, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v6, "Cache"

    const-string v8, "CACHE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/appsflyer/internal/AFg1hSDK;->values:Lcom/appsflyer/internal/AFg1hSDK;

    .line 12
    new-instance v6, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v8, "CFG"

    const-string v10, "REMOTE_CONTROL"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    .line 13
    new-instance v8, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v10, "DDL"

    const/4 v12, 0x5

    invoke-direct {v8, v10, v12, v10}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

    .line 14
    new-instance v10, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v13, "Referrer"

    const-string v14, "REFERRER"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v13}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/appsflyer/internal/AFg1hSDK;->e:Lcom/appsflyer/internal/AFg1hSDK;

    .line 15
    new-instance v13, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v14, "Cross Promotion"

    const-string v15, "CROSS_PROMOTION"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/appsflyer/internal/AFg1hSDK;->registerClient:Lcom/appsflyer/internal/AFg1hSDK;

    .line 16
    new-instance v14, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v15, "Exception Manager"

    const-string v12, "EXCEPTION_MANAGER"

    const/16 v11, 0x8

    invoke-direct {v14, v12, v11, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/appsflyer/internal/AFg1hSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1hSDK;

    .line 17
    new-instance v12, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v15, "Attribution"

    const-string v11, "ATTRIBUTION"

    const/16 v9, 0x9

    invoke-direct {v12, v11, v9, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/appsflyer/internal/AFg1hSDK;->afRDLog:Lcom/appsflyer/internal/AFg1hSDK;

    .line 18
    new-instance v11, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v12, "RD"

    const/16 v15, 0xa

    invoke-direct {v11, v12, v15, v12}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/appsflyer/internal/AFg1hSDK;->v:Lcom/appsflyer/internal/AFg1hSDK;

    .line 19
    new-instance v12, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v15, "Engagement"

    const-string v9, "ENGAGEMENT"

    const/16 v7, 0xb

    invoke-direct {v12, v9, v7, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/appsflyer/internal/AFg1hSDK;->w:Lcom/appsflyer/internal/AFg1hSDK;

    .line 20
    new-instance v9, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v15, "Anti Fraud"

    const-string v7, "ANTI_FRAUD"

    const/16 v5, 0xc

    invoke-direct {v9, v7, v5, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/appsflyer/internal/AFg1hSDK;->afVerboseLog:Lcom/appsflyer/internal/AFg1hSDK;

    .line 21
    new-instance v7, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v9, "Public API"

    const-string v15, "PUBLIC_API"

    const/16 v5, 0xd

    invoke-direct {v7, v15, v5, v9}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/appsflyer/internal/AFg1hSDK;->getLevel:Lcom/appsflyer/internal/AFg1hSDK;

    .line 22
    new-instance v7, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v9, "Ad Revenue"

    const-string v15, "AD_REVENUE"

    const/16 v5, 0xe

    invoke-direct {v7, v15, v5, v9}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/appsflyer/internal/AFg1hSDK;->afErrorLogForExcManagerOnly:Lcom/appsflyer/internal/AFg1hSDK;

    .line 23
    new-instance v7, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v9, "Setter"

    const-string v15, "SDK_SETTERS"

    const/16 v5, 0xf

    invoke-direct {v7, v15, v5, v9}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/appsflyer/internal/AFg1hSDK;->afLogForce:Lcom/appsflyer/internal/AFg1hSDK;

    .line 24
    new-instance v7, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v9, "Predict"

    const-string v15, "PREDICT"

    const/16 v5, 0x10

    invoke-direct {v7, v15, v5, v9}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/appsflyer/internal/AFg1hSDK;->force:Lcom/appsflyer/internal/AFg1hSDK;

    .line 25
    new-instance v9, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v15, "Device Data"

    const-string v5, "DEVICE_DATA"

    const/16 v3, 0x11

    invoke-direct {v9, v5, v3, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFg1hSDK;

    .line 26
    new-instance v5, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v9, "Security"

    const-string v15, "SECURITY"

    const/16 v3, 0x12

    invoke-direct {v5, v15, v3, v9}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/appsflyer/internal/AFg1hSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFg1hSDK;

    .line 27
    new-instance v5, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v9, "General"

    const-string v15, "GENERAL"

    const/16 v3, 0x13

    invoke-direct {v5, v15, v3, v9}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    .line 28
    new-instance v9, Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v15, 0x14

    const-string v3, "Preinstall"

    move-object/from16 v16, v5

    const-string v5, "PREINSTALL"

    invoke-direct {v9, v5, v15, v3}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/appsflyer/internal/AFg1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1hSDK;

    .line 29
    new-instance v3, Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v5, 0x15

    const-string v15, "Uninstall"

    move-object/from16 v17, v9

    const-string v9, "UNINSTALL"

    invoke-direct {v3, v9, v5, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/appsflyer/internal/AFg1hSDK;->afDebugLog:Lcom/appsflyer/internal/AFg1hSDK;

    .line 30
    new-instance v5, Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v9, 0x16

    const-string v15, "Purchase Validation"

    move-object/from16 v18, v3

    const-string v3, "PURCHASE_VALIDATION"

    invoke-direct {v5, v3, v9, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/appsflyer/internal/AFg1hSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1hSDK;

    .line 31
    new-instance v3, Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v9, 0x17

    const-string v15, "DMA"

    move-object/from16 v19, v5

    const-string v5, "DMA"

    invoke-direct {v3, v5, v9, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/appsflyer/internal/AFg1hSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v5, 0x18

    .line 1000
    new-array v5, v5, [Lcom/appsflyer/internal/AFg1hSDK;

    const/4 v9, 0x0

    aput-object v0, v5, v9

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v13, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->afRDLog:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v1, 0x9

    aput-object v0, v5, v1

    const/16 v0, 0xa

    aput-object v11, v5, v0

    const/16 v0, 0xb

    aput-object v12, v5, v0

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->afVerboseLog:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v1, 0xc

    aput-object v0, v5, v1

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->getLevel:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v1, 0xd

    aput-object v0, v5, v1

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->afErrorLogForExcManagerOnly:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v1, 0xe

    aput-object v0, v5, v1

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->afLogForce:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v1, 0xf

    aput-object v0, v5, v1

    const/16 v0, 0x10

    aput-object v7, v5, v0

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v1, 0x11

    aput-object v0, v5, v1

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v1, 0x12

    aput-object v0, v5, v1

    const/16 v0, 0x13

    aput-object v16, v5, v0

    const/16 v0, 0x14

    aput-object v17, v5, v0

    const/16 v0, 0x15

    aput-object v18, v5, v0

    const/16 v0, 0x16

    aput-object v19, v5, v0

    const/16 v0, 0x17

    aput-object v3, v5, v0

    .line 31
    sput-object v5, Lcom/appsflyer/internal/AFg1hSDK;->onInstallConversionFailureNative:[Lcom/appsflyer/internal/AFg1hSDK;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/appsflyer/internal/AFg1hSDK;->valueOf:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFg1hSDK;
    .locals 1

    const-class v0, Lcom/appsflyer/internal/AFg1hSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFg1hSDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFg1hSDK;
    .locals 1

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->onInstallConversionFailureNative:[Lcom/appsflyer/internal/AFg1hSDK;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFg1hSDK;

    return-object v0
.end method
