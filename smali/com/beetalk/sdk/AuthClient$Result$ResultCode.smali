.class final enum Lcom/beetalk/sdk/AuthClient$Result$ResultCode;
.super Ljava/lang/Enum;
.source "AuthClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/AuthClient$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/AuthClient$Result$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

.field public static final enum CANCEL:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

.field public static final enum ERROR:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

.field public static final enum SUCCESS:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/beetalk/sdk/AuthClient$Result$ResultCode;
    .locals 3

    const/4 v0, 0x3

    .line 261
    new-array v0, v0, [Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    sget-object v1, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->SUCCESS:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->CANCEL:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->ERROR:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 262
    new-instance v0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    const/4 v1, 0x0

    const-string/jumbo v2, "success"

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->SUCCESS:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    .line 263
    new-instance v0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    const/4 v1, 0x1

    const-string v2, "cancel"

    const-string v3, "CANCEL"

    invoke-direct {v0, v3, v1, v2}, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->CANCEL:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    .line 264
    new-instance v0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    const/4 v1, 0x2

    const-string v2, "error"

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->ERROR:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    .line 261
    invoke-static {}, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->$values()[Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->$VALUES:[Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 268
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 269
    iput-object p3, p0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result$ResultCode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 261
    const-class v0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/AuthClient$Result$ResultCode;
    .locals 1

    .line 261
    sget-object v0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->$VALUES:[Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    return-object v0
.end method


# virtual methods
.method getValue()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->value:Ljava/lang/String;

    return-object v0
.end method
