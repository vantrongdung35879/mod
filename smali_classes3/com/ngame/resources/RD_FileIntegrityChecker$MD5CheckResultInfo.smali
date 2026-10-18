.class public Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;
.super Ljava/lang/Object;
.source "RD_FileIntegrityChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ngame/resources/RD_FileIntegrityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MD5CheckResultInfo"
.end annotation


# instance fields
.field public errorMD5:Ljava/lang/String;

.field public exceptionMsg:Ljava/lang/String;

.field public fileMD5:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public result:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->result:Z

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->fileName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->fileMD5:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->errorMD5:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/ngame/resources/RD_FileIntegrityChecker$MD5CheckResultInfo;->exceptionMsg:Ljava/lang/String;

    return-void
.end method
