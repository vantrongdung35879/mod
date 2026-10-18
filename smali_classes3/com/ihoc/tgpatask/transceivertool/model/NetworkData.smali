.class public Lcom/ihoc/tgpatask/transceivertool/model/NetworkData;
.super Ljava/lang/Object;
.source "NetworkData.java"


# instance fields
.field public mClientIP:Ljava/lang/String;

.field public mClientPort:Ljava/lang/String;

.field public mConnectTime:J

.field public mHost:Ljava/lang/String;

.field public mRTT:I

.field public mRawContent:Ljava/lang/String;

.field public mRecvTime:J

.field public mResult:Z

.field public mSendTime:J

.field public mSequenceNumber:I

.field public mServerIP:Ljava/lang/String;

.field public mTTL:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/ihoc/tgpatask/transceivertool/model/NetworkData;->mResult:Z

    return-void
.end method
