.class Lcom/ihoc/mgpa/gradish/y$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/reflectinterface/IDeviceTokenOS;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ihoc/mgpa/gradish/y;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getProductBrand()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getProductManufacture()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
