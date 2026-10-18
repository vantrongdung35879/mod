.class public Lcom/tencent/tme/live/framework/common/b;
.super Ljava/lang/Object;


# instance fields
.field public A:I

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Z

.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:Ljava/lang/String;

.field public p:I

.field public q:I

.field public r:I

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tme/live/framework/common/b;->a:I

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->i:Ljava/lang/String;

    iput v0, p0, Lcom/tencent/tme/live/framework/common/b;->j:I

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->m:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/tencent/tme/live/framework/common/b;->n:Z

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->o:Ljava/lang/String;

    iput v0, p0, Lcom/tencent/tme/live/framework/common/b;->p:I

    iput v0, p0, Lcom/tencent/tme/live/framework/common/b;->q:I

    iput v0, p0, Lcom/tencent/tme/live/framework/common/b;->r:I

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->y:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->z:Ljava/lang/String;

    iput v0, p0, Lcom/tencent/tme/live/framework/common/b;->A:I

    const-string v2, "1"

    iput-object v2, p0, Lcom/tencent/tme/live/framework/common/b;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->E:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->F:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/tencent/tme/live/framework/common/b;->G:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "GameBean{code="

    invoke-static {v0}, Lcom/tencent/tme/live/a/b;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tme/live/framework/common/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->b:Ljava/lang/String;

    const-string v2, ", token=\'"

    const/16 v3, 0x27

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/tme/live/v0/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->c:Ljava/lang/String;

    const-string v2, ", channel="

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/tme/live/v0/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", area=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->e:Ljava/lang/String;

    const-string v2, ", partition=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/tme/live/v0/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->f:Ljava/lang/String;

    const-string v2, ", openid=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/tme/live/v0/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->g:Ljava/lang/String;

    const-string v2, ", nikeName=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/tme/live/v0/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->h:Ljava/lang/String;

    const-string v2, ", gameVersion=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/tme/live/v0/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->i:Ljava/lang/String;

    const-string v2, ", userLevel="

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/tme/live/v0/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tme/live/framework/common/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gameObjName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->k:Ljava/lang/String;

    const-string v2, ", gameMethod=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/tme/live/v0/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->l:Ljava/lang/String;

    const-string v2, ", unityVersion=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/tme/live/v0/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->m:Ljava/lang/String;

    const-string v2, ", isGameDebug="

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/tme/live/v0/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/tme/live/framework/common/b;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", resourcePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->o:Ljava/lang/String;

    const-string v2, ", language=\'"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/tme/live/v0/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tme/live/framework/common/b;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", liveType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tme/live/framework/common/b;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", soureType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tme/live/framework/common/b;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pfKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", login_kit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", platid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buglyid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regionid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roleid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gameid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buglyUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", env="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/tme/live/framework/common/b;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
