.class public Lcom/intlgame/api/update/INTLUpdateOptionalRepoFilesStatus;
.super Lcom/intlgame/tools/json/JsonSerializable;
.source "INTLUpdateOptionalRepoFilesStatus.java"


# instance fields
.field public file_path_:Ljava/lang/String;
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "file_path"
    .end annotation
.end field

.field public need_download_size_:J
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "need_download_size"
    .end annotation
.end field

.field public total_file_num_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "total_file_num"
    .end annotation
.end field

.field public valid_file_num_:I
    .annotation runtime Lcom/intlgame/tools/json/JsonProp;
        value = "valid_file_num"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/intlgame/tools/json/JsonSerializable;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/intlgame/api/update/INTLUpdateOptionalRepoFilesStatus;->file_path_:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/intlgame/api/update/INTLUpdateOptionalRepoFilesStatus;->total_file_num_:I

    .line 23
    iput p3, p0, Lcom/intlgame/api/update/INTLUpdateOptionalRepoFilesStatus;->valid_file_num_:I

    .line 24
    iput-wide p4, p0, Lcom/intlgame/api/update/INTLUpdateOptionalRepoFilesStatus;->need_download_size_:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/intlgame/api/update/INTLUpdateOptionalRepoFilesStatus;->toJSONString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    const-string v0, ""

    return-object v0
.end method
