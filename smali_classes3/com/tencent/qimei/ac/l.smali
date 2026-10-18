.class public final Lcom/tencent/qimei/ac/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qimei/w/a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:Lcom/tencent/qimei/ac/m;


# direct methods
.method public constructor <init>(Lcom/tencent/qimei/ac/m;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/qimei/ac/l;->c:Lcom/tencent/qimei/ac/m;

    iput-object p2, p0, Lcom/tencent/qimei/ac/l;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/tencent/qimei/ac/l;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/qimei/ac/l;->c:Lcom/tencent/qimei/ac/m;

    .line 2
    iget-object v0, v0, Lcom/tencent/qimei/ac/m;->a:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qimei/ac/l;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/qimei/ac/l;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
