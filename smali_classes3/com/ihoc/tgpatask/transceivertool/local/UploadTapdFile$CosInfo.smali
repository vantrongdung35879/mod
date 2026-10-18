.class Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;
.super Ljava/lang/Object;
.source "UploadTapdFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CosInfo"
.end annotation


# instance fields
.field public accessCode:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-object p1, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;->url:Ljava/lang/String;

    .line 554
    iput-object p2, p0, Lcom/ihoc/tgpatask/transceivertool/local/UploadTapdFile$CosInfo;->accessCode:Ljava/lang/String;

    return-void
.end method
