.class public Lcom/tencent/smtt/sdk/MultiProcessHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMultiProcessAutoRecoveryEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getMultiProcessChoseTypeReason()Ljava/lang/String;
    .locals 1

    const-string v0, "oversea use sys core, not support"

    return-object v0
.end method

.method public static getMultiProcessNoSandBoxEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getMultiProcessType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
