.class public Lcom/ihoc/mgpa/deviceid/DeviceIDInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private result:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

.field private type:Lcom/ihoc/mgpa/deviceid/IDType;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/deviceid/IDType;Lcom/ihoc/mgpa/deviceid/DeviceIDResult;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ihoc/mgpa/deviceid/DeviceIDInfo;->type:Lcom/ihoc/mgpa/deviceid/IDType;

    iput-object p2, p0, Lcom/ihoc/mgpa/deviceid/DeviceIDInfo;->result:Lcom/ihoc/mgpa/deviceid/DeviceIDResult;

    iput-object p3, p0, Lcom/ihoc/mgpa/deviceid/DeviceIDInfo;->value:Ljava/lang/String;

    return-void
.end method
