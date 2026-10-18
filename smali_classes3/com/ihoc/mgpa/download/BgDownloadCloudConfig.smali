.class public Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTROL_ROLE_GAME:Ljava/lang/String; = "game"

.field public static final CONTROL_ROLE_NONE:Ljava/lang/String; = "none"

.field public static final CONTROL_ROLE_TGPA:Ljava/lang/String; = "tgpa"

.field public static final DEFAULT_FILE_OVERDUE_TIME:J = 0x48190800L

.field public static final DEFAULT_MIN_BATTERY:I = 0x1e

.field public static final DEFAULT_NOTIFY_TITLE:Ljava/lang/String; = "in background downloading..."

.field public static final NO_SPACE_LIMITATION:J = -0x1L


# instance fields
.field private final fileOverdueTime:J

.field private final hotfix:Z

.field private final isBgPreDownloadFuncOpen:Z

.field private final isCallbackFucOpen:Z

.field private final minBattery:I

.field private final needWifi:Z

.field private final notifyProgress:Z

.field private final notifyTitle:Ljava/lang/String;

.field private final spaceLimitation:J

.field private final whoCtrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/String;IJZZJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->whoCtrl:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->needWifi:Z

    .line 4
    iput-boolean p3, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->notifyProgress:Z

    .line 5
    iput-object p4, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->notifyTitle:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->minBattery:I

    .line 7
    iput-wide p6, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->fileOverdueTime:J

    .line 8
    iput-boolean p8, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->isCallbackFucOpen:Z

    .line 9
    iput-boolean p9, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->isBgPreDownloadFuncOpen:Z

    .line 10
    iput-wide p10, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->spaceLimitation:J

    .line 11
    iput-boolean p12, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->hotfix:Z

    return-void
.end method

.method public static copy(Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;)Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;
    .locals 14

    .line 1
    new-instance v13, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;

    invoke-virtual {p0}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->getWhoCtrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->isNeedWifi()Z

    move-result v2

    .line 2
    invoke-virtual {p0}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->isNotifyProgress()Z

    move-result v3

    invoke-virtual {p0}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->getNotifyTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->getMinBattery()I

    move-result v5

    .line 3
    invoke-virtual {p0}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->getFileOverdueTime()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->isCallbackFucOpen()Z

    move-result v8

    invoke-virtual {p0}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->isBgPreDownloadFuncOpen()Z

    move-result v9

    iget-wide v10, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->spaceLimitation:J

    iget-boolean v12, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->hotfix:Z

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;-><init>(Ljava/lang/String;ZZLjava/lang/String;IJZZJZ)V

    return-object v13
.end method

.method public static createDefaultConfig()Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;
    .locals 14

    .line 1
    new-instance v13, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;

    const-wide/16 v10, -0x1

    const/4 v12, 0x1

    const-string v1, "game"

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-string v4, "in background downloading..."

    const/16 v5, 0x1e

    const-wide/32 v6, 0x48190800

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;-><init>(Ljava/lang/String;ZZLjava/lang/String;IJZZJZ)V

    return-object v13
.end method


# virtual methods
.method public getFileOverdueTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->fileOverdueTime:J

    return-wide v0
.end method

.method public getMinBattery()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->minBattery:I

    return v0
.end method

.method public getNotifyTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->notifyTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceLimitation()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->spaceLimitation:J

    return-wide v0
.end method

.method public getWhoCtrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->whoCtrl:Ljava/lang/String;

    return-object v0
.end method

.method public isBgPreDownloadFuncOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->isBgPreDownloadFuncOpen:Z

    return v0
.end method

.method public isCallbackFucOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->isCallbackFucOpen:Z

    return v0
.end method

.method public isNeedWifi()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->needWifi:Z

    return v0
.end method

.method public isNotifyProgress()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->notifyProgress:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BgDownloadCloudConfig{whoCtrl=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->whoCtrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', needWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->needWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notifyProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->notifyProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notifyTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->notifyTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', minBattery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->minBattery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileOverdueTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->fileOverdueTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isCallbackFucOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->isCallbackFucOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBgPreDownloadFuncOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->isBgPreDownloadFuncOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", spaceLimitation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->spaceLimitation:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", hotfix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ihoc/mgpa/download/BgDownloadCloudConfig;->hotfix:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
