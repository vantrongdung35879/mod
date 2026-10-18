.class public Lcom/gme/video/sdk/jni/SkpSilkJni;
.super Ljava/lang/Object;
.source "SkpSilkJni.java"


# instance fields
.field private mHandler:J


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/gme/video/sdk/jni/SkpSilkJni;->init(II)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/gme/video/sdk/jni/SkpSilkJni;->mHandler:J

    return-void
.end method

.method private native init(II)J
.end method

.method private native resampleBuffer(J[S)[S
.end method

.method private native unInit(J)I
.end method


# virtual methods
.method public resampleBuffer([S)[S
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/gme/video/sdk/jni/SkpSilkJni;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/gme/video/sdk/jni/SkpSilkJni;->resampleBuffer(J[S)[S

    move-result-object p1

    return-object p1
.end method

.method public unInit()V
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/gme/video/sdk/jni/SkpSilkJni;->mHandler:J

    invoke-direct {p0, v0, v1}, Lcom/gme/video/sdk/jni/SkpSilkJni;->unInit(J)I

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/gme/video/sdk/jni/SkpSilkJni;->mHandler:J

    return-void
.end method
