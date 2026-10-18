.class public final Lcom/tencent/qimei/ay/a;
.super Lcom/tencent/qimei/ay/c;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/tencent/qimei/ay/d;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ay/d;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ay/a;->d:Lcom/tencent/qimei/ay/d;

    const-string v0, "hm_md_tm"

    const-string v1, "lc_fe_st_hm"

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/qimei/ay/c;-><init>(Lcom/tencent/qimei/ay/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "https://tun-cos-1258344701.file.myqcloud.com/fp.js"

    const-string/jumbo v1, "tun-cos-1258344701.js"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/tencent/qimei/ay/a;->d:Lcom/tencent/qimei/ay/d;

    .line 3
    iget-object v0, v0, Lcom/tencent/qimei/ay/d;->c:Ljava/lang/String;

    .line 4
    const-string/jumbo v1, "tun-cos-1258344701.html"

    invoke-static {v0, p1, v1}, Lcom/tencent/qimei/ad/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
