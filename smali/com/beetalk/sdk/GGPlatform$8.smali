.class synthetic Lcom/beetalk/sdk/GGPlatform$8;
.super Ljava/lang/Object;
.source "GGPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/GGPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$beetalk$sdk$SessionStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 778
    invoke-static {}, Lcom/beetalk/sdk/SessionStatus;->values()[Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/beetalk/sdk/GGPlatform$8;->$SwitchMap$com$beetalk$sdk$SessionStatus:[I

    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    invoke-virtual {v1}, Lcom/beetalk/sdk/SessionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/beetalk/sdk/GGPlatform$8;->$SwitchMap$com$beetalk$sdk$SessionStatus:[I

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->INSPECTION_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    invoke-virtual {v1}, Lcom/beetalk/sdk/SessionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
