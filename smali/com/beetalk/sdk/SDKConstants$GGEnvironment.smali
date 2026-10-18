.class public final enum Lcom/beetalk/sdk/SDKConstants$GGEnvironment;
.super Ljava/lang/Enum;
.source "SDKConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/SDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GGEnvironment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/SDKConstants$GGEnvironment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

.field public static final enum PRODUCTION:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

.field public static final enum TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;


# direct methods
.method private static synthetic $values()[Lcom/beetalk/sdk/SDKConstants$GGEnvironment;
    .locals 3

    const/4 v0, 0x2

    .line 473
    new-array v0, v0, [Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    sget-object v1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->PRODUCTION:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 474
    new-instance v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    const-string v1, "PRODUCTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->PRODUCTION:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    .line 475
    new-instance v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    const-string v1, "TEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    .line 473
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->$values()[Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->$VALUES:[Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

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
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 473
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/SDKConstants$GGEnvironment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 473
    const-class v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/SDKConstants$GGEnvironment;
    .locals 1

    .line 473
    sget-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->$VALUES:[Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    return-object v0
.end method


# virtual methods
.method public isDevelopment()Z
    .locals 1

    .line 488
    sget-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne p0, v0, :cond_0

    .line 489
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->isGopDevSandboxModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProduction()Z
    .locals 1

    .line 479
    sget-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->PRODUCTION:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTest()Z
    .locals 1

    .line 483
    sget-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne p0, v0, :cond_0

    .line 484
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->isGopDevSandboxModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
