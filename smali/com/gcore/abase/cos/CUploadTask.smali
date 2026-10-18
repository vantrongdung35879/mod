.class public Lcom/gcore/abase/cos/CUploadTask;
.super Ljava/lang/Object;
.source "CUploadTask.java"


# instance fields
.field private mCListener:J

.field private mCTask:J

.field private task:Lcom/gcore/abase/cos/CosUploadTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/gcore/abase/cos/CosUploadTask;

    invoke-direct {v0}, Lcom/gcore/abase/cos/CosUploadTask;-><init>()V

    iput-object v0, p0, Lcom/gcore/abase/cos/CUploadTask;->task:Lcom/gcore/abase/cos/CosUploadTask;

    return-void
.end method

.method static synthetic access$000(Lcom/gcore/abase/cos/CUploadTask;)J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/gcore/abase/cos/CUploadTask;->mCTask:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/gcore/abase/cos/CUploadTask;)J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/gcore/abase/cos/CUploadTask;->mCListener:J

    return-wide v0
.end method


# virtual methods
.method public native nativeOnUploadFinished(JJI)V
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-wide v1, p6

    .line 17
    iput-wide v1, v0, Lcom/gcore/abase/cos/CUploadTask;->mCListener:J

    move-wide/from16 v1, p8

    .line 18
    iput-wide v1, v0, Lcom/gcore/abase/cos/CUploadTask;->mCTask:J

    .line 19
    iget-object v1, v0, Lcom/gcore/abase/cos/CUploadTask;->task:Lcom/gcore/abase/cos/CosUploadTask;

    move-object v2, p5

    invoke-virtual {v1, p5}, Lcom/gcore/abase/cos/CosUploadTask;->setCredentialInfo(Ljava/lang/String;)V

    .line 20
    iget-object v1, v0, Lcom/gcore/abase/cos/CUploadTask;->task:Lcom/gcore/abase/cos/CosUploadTask;

    new-instance v2, Lcom/gcore/abase/cos/CUploadTask$1;

    invoke-direct {v2, p0}, Lcom/gcore/abase/cos/CUploadTask$1;-><init>(Lcom/gcore/abase/cos/CUploadTask;)V

    invoke-virtual {v1, v2}, Lcom/gcore/abase/cos/CosUploadTask;->setResultListener(Lcom/gcore/abase/cos/CosResultListener;)V

    .line 27
    iget-object v3, v0, Lcom/gcore/abase/cos/CUploadTask;->task:Lcom/gcore/abase/cos/CosUploadTask;

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object/from16 v8, p10

    invoke-virtual/range {v3 .. v8}, Lcom/gcore/abase/cos/CosUploadTask;->upload(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
