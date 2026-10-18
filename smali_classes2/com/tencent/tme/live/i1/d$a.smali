.class public Lcom/tencent/tme/live/i1/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/i1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/i1/d;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/i1/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/i1/d$a;->a:Lcom/tencent/tme/live/i1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/tencent/tme/live/i1/d$a;->a:Lcom/tencent/tme/live/i1/d;

    .line 1
    iget-boolean v1, v0, Lcom/tencent/tme/live/i1/d;->g:Z

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/tencent/tme/live/i1/d;->d:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 3
    iget-object v2, v0, Lcom/tencent/tme/live/i1/d;->c:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v3, v0, Lcom/tencent/tme/live/i1/d;->h:Z

    if-eqz v3, :cond_2

    return-void

    .line 5
    :cond_2
    iget v3, v0, Lcom/tencent/tme/live/i1/d;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/tencent/tme/live/i1/d;->e:I

    .line 6
    iget-object v0, v2, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->g:Ljava/lang/String;

    .line 7
    sget-object v3, Lcom/tencent/tme/live/b/a;->b:Ljava/lang/String;

    .line 8
    iget-object v2, v2, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->a:Ljava/lang/String;

    .line 9
    invoke-static {v1}, Lcom/tencent/tme/live/s2/h;->a(Landroid/content/Context;)I

    move-result v1

    iget-object v4, p0, Lcom/tencent/tme/live/i1/d$a;->a:Lcom/tencent/tme/live/i1/d;

    .line 10
    iget-object v5, v4, Lcom/tencent/tme/live/i1/d;->c:Lcom/tencent/tme/live/framework/model/PopTVCfgBean;

    .line 11
    iget-object v5, v5, Lcom/tencent/tme/live/framework/model/PopTVCfgBean;->o:Ljava/lang/String;

    .line 12
    iget v4, v4, Lcom/tencent/tme/live/i1/d;->e:I

    .line 13
    invoke-static {}, Lcom/tencent/tme/live/y0/c;->a()Lcom/tencent/tme/live/y0/c;

    move-result-object v6

    new-instance v7, Lcom/tencent/tme/live/z0/a$a;

    invoke-direct {v7}, Lcom/tencent/tme/live/z0/a$a;-><init>()V

    .line 14
    new-instance v8, Lcom/tencent/tme/live/z0/a;

    invoke-direct {v8, v7}, Lcom/tencent/tme/live/z0/a;-><init>(Lcom/tencent/tme/live/z0/a$a;)V

    .line 15
    new-instance v7, Lcom/tencent/tme/live/z0/c$a;

    invoke-direct {v7}, Lcom/tencent/tme/live/z0/c$a;-><init>()V

    .line 16
    iput-object v0, v7, Lcom/tencent/tme/live/z0/c$a;->a:Ljava/lang/String;

    .line 17
    iput-object v3, v7, Lcom/tencent/tme/live/z0/c$a;->b:Ljava/lang/String;

    .line 18
    iput-object v2, v7, Lcom/tencent/tme/live/z0/c$a;->c:Ljava/lang/String;

    .line 19
    iput-object v5, v7, Lcom/tencent/tme/live/z0/c$a;->e:Ljava/lang/String;

    .line 20
    new-instance v9, Lcom/tencent/tme/live/z0/c;

    invoke-direct {v9, v7}, Lcom/tencent/tme/live/z0/c;-><init>(Lcom/tencent/tme/live/z0/c$a;)V

    .line 21
    new-instance v0, Lcom/tencent/tme/live/z0/b$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/b$a;-><init>()V

    .line 22
    iput v4, v0, Lcom/tencent/tme/live/z0/b$a;->a:I

    .line 23
    iput v1, v0, Lcom/tencent/tme/live/z0/b$a;->b:I

    .line 24
    new-instance v10, Lcom/tencent/tme/live/z0/b;

    invoke-direct {v10, v0}, Lcom/tencent/tme/live/z0/b;-><init>(Lcom/tencent/tme/live/z0/b$a;)V

    .line 25
    new-instance v0, Lcom/tencent/tme/live/z0/d$a;

    invoke-direct {v0}, Lcom/tencent/tme/live/z0/d$a;-><init>()V

    .line 26
    new-instance v11, Lcom/tencent/tme/live/z0/d;

    invoke-direct {v11, v0}, Lcom/tencent/tme/live/z0/d;-><init>(Lcom/tencent/tme/live/z0/d$a;)V

    .line 27
    const-string v7, "PoptvPeroid_aov"

    invoke-virtual/range {v6 .. v11}, Lcom/tencent/tme/live/y0/c;->a(Ljava/lang/String;Lcom/tencent/tme/live/z0/a;Lcom/tencent/tme/live/z0/c;Lcom/tencent/tme/live/z0/b;Lcom/tencent/tme/live/z0/d;)V

    :cond_3
    :goto_0
    return-void
.end method
