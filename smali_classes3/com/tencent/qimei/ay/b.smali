.class public final Lcom/tencent/qimei/ay/b;
.super Lcom/tencent/qimei/ay/c;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/tencent/qimei/ay/d;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ay/d;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ay/b;->d:Lcom/tencent/qimei/ay/d;

    const-string v0, "js_md_tm"

    const-string v1, "lc_fe_st_js"

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/qimei/ay/c;-><init>(Lcom/tencent/qimei/ay/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ay/b;->d:Lcom/tencent/qimei/ay/d;

    .line 2
    iget-object v0, v0, Lcom/tencent/qimei/ay/d;->c:Ljava/lang/String;

    .line 3
    const-string/jumbo v1, "tun-cos-1258344701.js"

    invoke-static {v0, p1, v1}, Lcom/tencent/qimei/ad/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
