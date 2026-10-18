.class Lcom/ihoc/mgpa/deviceid/DeviceIDHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/deviceid/DeviceIDHelper;->getOAID(Landroid/content/Context;Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;Lcom/ihoc/mgpa/deviceid/VendorType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$getter:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;


# direct methods
.method constructor <init>(Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;)V
    .locals 0

    iput-object p1, p0, Lcom/ihoc/mgpa/deviceid/DeviceIDHelper$1;->val$getter:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "get device\' oaid result: %d"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/deviceid/utils/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_0

    sget-object p1, Lcom/ihoc/mgpa/deviceid/DeviceIDResult;->OAID_GET_NULL:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    :cond_0
    iget-object v0, p0, Lcom/ihoc/mgpa/deviceid/DeviceIDHelper$1;->val$getter:Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;

    invoke-interface {v0, p1, p2}, Lcom/ihoc/mgpa/deviceid/IDeviceIDGetter;->onComplete(Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V

    return-void
.end method
