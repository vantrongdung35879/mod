.class public Lcom/centauri/oversea/api/request/CTIMonthRequest;
.super Lcom/centauri/oversea/api/request/CTIBaseRequest;
.source "CTIMonthRequest.java"


# static fields
.field public static final SERVICETYPE_NORMAL:I = 0x1

.field public static final SERVICETYPE_RENEW:I = 0x2

.field public static final SERVICETYPE_UPGRADE:I = 0x3

.field private static final serialVersionUID:J = -0x7bbe2638f13b37eL


# instance fields
.field public autoPay:Z

.field public remark:Ljava/lang/String;

.field public serviceCode:Ljava/lang/String;

.field public serviceName:Ljava/lang/String;

.field public serviceType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/centauri/oversea/api/request/CTIBaseRequest;-><init>()V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceCode:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceName:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->remark:Ljava/lang/String;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->autoPay:Z

    const/4 v0, 0x1

    .line 64
    iput v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceType:I

    .line 65
    const-string/jumbo v0, "unimonth"

    iput-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->mType:Ljava/lang/String;

    const/4 v0, 0x4

    .line 66
    iput v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->mOldType:I

    return-void
.end method


# virtual methods
.method public getAutoPay()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->autoPay:Z

    return v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceCode()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceType:I

    return v0
.end method

.method public setAutoPay(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->autoPay:Z

    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->remark:Ljava/lang/String;

    return-void
.end method

.method public setServiceCode(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceCode:Ljava/lang/String;

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceName:Ljava/lang/String;

    return-void
.end method

.method public setServiceType(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/centauri/oversea/api/request/CTIMonthRequest;->serviceType:I

    return-void
.end method
