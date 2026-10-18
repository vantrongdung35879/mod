.class public abstract Lcom/ihoc/mgpa/gradish/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    sput-object v0, Lcom/ihoc/mgpa/gradish/s;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a([F)F
    .locals 4

    .line 13
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_0
    array-length p1, p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    return v1
.end method

.method public abstract a(ILjava/lang/String;)V
.end method

.method public abstract a(I[F)V
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    sget-object v2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentSceneId:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setSceneStartTime(J)V

    return-void

    .line 8
    :cond_0
    sget-object v2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentSceneId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 11
    :cond_1
    sget-object v2, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->currentSceneId:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/ihoc/mgpa/gradish/t1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setSceneStartTime(J)V

    return-void
.end method
